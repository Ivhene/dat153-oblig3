.class Lorg/checkerframework/com/google/common/collect/CompactHashMap$KeySetView;
.super Lorg/checkerframework/com/google/common/collect/Maps$KeySet;
.source "CompactHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/CompactHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeySetView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/Maps$KeySet<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/CompactHashMap;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    .line 536
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactHashMap$KeySetView;, "Lorg/checkerframework/com/google/common/collect/CompactHashMap<TK;TV;>.KeySetView;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$KeySetView;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    .line 537
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/Maps$KeySet;-><init>(Ljava/util/Map;)V

    .line 538
    return-void
.end method


# virtual methods
.method public forEach(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TK;>;)V"
        }
    .end annotation

    .line 585
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactHashMap$KeySetView;, "Lorg/checkerframework/com/google/common/collect/CompactHashMap<TK;TV;>.KeySetView;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$KeySetView;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->firstEntryIndex()I

    move-result v0

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 587
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$KeySetView;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    iget-object v1, v1, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 586
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$KeySetView;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->getSuccessor(I)I

    move-result v0

    goto :goto_0

    .line 589
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 572
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactHashMap$KeySetView;, "Lorg/checkerframework/com/google/common/collect/CompactHashMap<TK;TV;>.KeySetView;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$KeySetView;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->keySetIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 561
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactHashMap$KeySetView;, "Lorg/checkerframework/com/google/common/collect/CompactHashMap<TK;TV;>.KeySetView;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$KeySetView;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->access$200(Lorg/checkerframework/com/google/common/collect/CompactHashMap;Ljava/lang/Object;)I

    move-result v0

    .line 562
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 563
    const/4 v1, 0x0

    return v1

    .line 565
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$KeySetView;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    invoke-static {v1, v0}, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->access$000(Lorg/checkerframework/com/google/common/collect/CompactHashMap;I)Ljava/lang/Object;

    .line 566
    const/4 v1, 0x1

    return v1
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TK;>;"
        }
    .end annotation

    .line 577
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactHashMap$KeySetView;, "Lorg/checkerframework/com/google/common/collect/CompactHashMap<TK;TV;>.KeySetView;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$KeySetView;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 578
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 580
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$KeySetView;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$KeySetView;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    invoke-static {v3}, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->access$100(Lorg/checkerframework/com/google/common/collect/CompactHashMap;)I

    move-result v3

    invoke-static {v0, v2, v3, v1}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    .line 542
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactHashMap$KeySetView;, "Lorg/checkerframework/com/google/common/collect/CompactHashMap<TK;TV;>.KeySetView;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$KeySetView;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 543
    new-array v0, v1, [Ljava/lang/Object;

    return-object v0

    .line 545
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$KeySetView;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$KeySetView;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    invoke-static {v2}, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->access$100(Lorg/checkerframework/com/google/common/collect/CompactHashMap;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/checkerframework/com/google/common/collect/ObjectArrays;->copyAsObjectArray([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 550
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactHashMap$KeySetView;, "Lorg/checkerframework/com/google/common/collect/CompactHashMap<TK;TV;>.KeySetView;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$KeySetView;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 551
    array-length v0, p1

    if-lez v0, :cond_0

    .line 552
    const/4 v0, 0x0

    aput-object v0, p1, v1

    .line 554
    :cond_0
    return-object p1

    .line 556
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$KeySetView;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$KeySetView;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    invoke-static {v2}, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->access$100(Lorg/checkerframework/com/google/common/collect/CompactHashMap;)I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lorg/checkerframework/com/google/common/collect/ObjectArrays;->toArrayImpl([Ljava/lang/Object;II[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
