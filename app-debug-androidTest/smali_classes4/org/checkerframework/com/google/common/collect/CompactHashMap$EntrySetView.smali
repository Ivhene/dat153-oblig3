.class Lorg/checkerframework/com/google/common/collect/CompactHashMap$EntrySetView;
.super Lorg/checkerframework/com/google/common/collect/Maps$EntrySet;
.source "CompactHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/CompactHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySetView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/Maps$EntrySet<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/CompactHashMap;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    .line 622
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactHashMap$EntrySetView;, "Lorg/checkerframework/com/google/common/collect/CompactHashMap<TK;TV;>.EntrySetView;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/Maps$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 641
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactHashMap$EntrySetView;, "Lorg/checkerframework/com/google/common/collect/CompactHashMap<TK;TV;>.EntrySetView;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 642
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 643
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->access$200(Lorg/checkerframework/com/google/common/collect/CompactHashMap;Ljava/lang/Object;)I

    move-result v2

    .line 644
    .local v2, "index":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    iget-object v3, v3, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/checkerframework/com/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 646
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v2    # "index":I
    :cond_1
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 630
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactHashMap$EntrySetView;, "Lorg/checkerframework/com/google/common/collect/CompactHashMap<TK;TV;>.EntrySetView;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->entrySetIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$spliterator$0$org-checkerframework-com-google-common-collect-CompactHashMap$EntrySetView(I)Ljava/util/Map$Entry;
    .locals 2
    .param p1, "x$0"    # I

    .line 636
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactHashMap$EntrySetView;, "Lorg/checkerframework/com/google/common/collect/CompactHashMap<TK;TV;>.EntrySetView;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$MapEntry;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    invoke-direct {v0, v1, p1}, Lorg/checkerframework/com/google/common/collect/CompactHashMap$MapEntry;-><init>(Lorg/checkerframework/com/google/common/collect/CompactHashMap;I)V

    return-object v0
.end method

.method map()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 625
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactHashMap$EntrySetView;, "Lorg/checkerframework/com/google/common/collect/CompactHashMap<TK;TV;>.EntrySetView;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 651
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactHashMap$EntrySetView;, "Lorg/checkerframework/com/google/common/collect/CompactHashMap<TK;TV;>.EntrySetView;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 652
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 653
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->access$200(Lorg/checkerframework/com/google/common/collect/CompactHashMap;Ljava/lang/Object;)I

    move-result v1

    .line 654
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    iget-object v2, v2, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/checkerframework/com/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 655
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    invoke-static {v2, v1}, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->access$000(Lorg/checkerframework/com/google/common/collect/CompactHashMap;I)Ljava/lang/Object;

    .line 656
    const/4 v2, 0x1

    return v2

    .line 659
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v1    # "index":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 635
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactHashMap$EntrySetView;, "Lorg/checkerframework/com/google/common/collect/CompactHashMap<TK;TV;>.EntrySetView;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    .line 636
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->access$100(Lorg/checkerframework/com/google/common/collect/CompactHashMap;)I

    move-result v0

    new-instance v1, Lorg/checkerframework/com/google/common/collect/CompactHashMap$EntrySetView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/google/common/collect/CompactHashMap$EntrySetView$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/com/google/common/collect/CompactHashMap$EntrySetView;)V

    .line 635
    const/16 v2, 0x11

    invoke-static {v0, v2, v1}, Lorg/checkerframework/com/google/common/collect/CollectSpliterators;->indexed(IILjava/util/function/IntFunction;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method