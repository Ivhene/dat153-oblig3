.class Lorg/checkerframework/com/google/common/collect/CompactHashMap$ValuesView;
.super Lorg/checkerframework/com/google/common/collect/Maps$Values;
.source "CompactHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/CompactHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ValuesView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/Maps$Values<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/CompactHashMap;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    .line 751
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactHashMap$ValuesView;, "Lorg/checkerframework/com/google/common/collect/CompactHashMap<TK;TV;>.ValuesView;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$ValuesView;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    .line 752
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/Maps$Values;-><init>(Ljava/util/Map;)V

    .line 753
    return-void
.end method


# virtual methods
.method public forEach(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TV;>;)V"
        }
    .end annotation

    .line 762
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactHashMap$ValuesView;, "Lorg/checkerframework/com/google/common/collect/CompactHashMap<TK;TV;>.ValuesView;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$ValuesView;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->firstEntryIndex()I

    move-result v0

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 764
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$ValuesView;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    iget-object v1, v1, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 763
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$ValuesView;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->getSuccessor(I)I

    move-result v0

    goto :goto_0

    .line 766
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
            "TV;>;"
        }
    .end annotation

    .line 757
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactHashMap$ValuesView;, "Lorg/checkerframework/com/google/common/collect/CompactHashMap<TK;TV;>.ValuesView;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$ValuesView;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->valuesIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TV;>;"
        }
    .end annotation

    .line 770
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactHashMap$ValuesView;, "Lorg/checkerframework/com/google/common/collect/CompactHashMap<TK;TV;>.ValuesView;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$ValuesView;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 771
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 773
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$ValuesView;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$ValuesView;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    invoke-static {v3}, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->access$100(Lorg/checkerframework/com/google/common/collect/CompactHashMap;)I

    move-result v3

    invoke-static {v0, v2, v3, v1}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    .line 778
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactHashMap$ValuesView;, "Lorg/checkerframework/com/google/common/collect/CompactHashMap<TK;TV;>.ValuesView;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$ValuesView;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 779
    new-array v0, v1, [Ljava/lang/Object;

    return-object v0

    .line 781
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$ValuesView;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$ValuesView;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

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

    .line 786
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactHashMap$ValuesView;, "Lorg/checkerframework/com/google/common/collect/CompactHashMap<TK;TV;>.ValuesView;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$ValuesView;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 787
    array-length v0, p1

    if-lez v0, :cond_0

    .line 788
    const/4 v0, 0x0

    aput-object v0, p1, v1

    .line 790
    :cond_0
    return-object p1

    .line 792
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$ValuesView;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$ValuesView;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    invoke-static {v2}, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->access$100(Lorg/checkerframework/com/google/common/collect/CompactHashMap;)I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lorg/checkerframework/com/google/common/collect/ObjectArrays;->toArrayImpl([Ljava/lang/Object;II[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
