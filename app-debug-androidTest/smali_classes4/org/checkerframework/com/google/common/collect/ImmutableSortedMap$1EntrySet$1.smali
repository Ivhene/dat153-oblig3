.class Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet$1;
.super Lorg/checkerframework/com/google/common/collect/ImmutableAsList;
.source "ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet;->createAsList()Lorg/checkerframework/com/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/ImmutableAsList<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet;)V
    .locals 0
    .param p1, "this$1"    # Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet;

    .line 626
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet$1;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet$1;->this$1:Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableAsList;-><init>()V

    return-void
.end method


# virtual methods
.method delegateCollection()Lorg/checkerframework/com/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 641
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet$1;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet$1;->this$1:Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet;

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 626
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet$1;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet$1;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet$1;->get(I)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Ljava/util/Map$Entry;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 629
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet$1;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet$1;"
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet$1;->this$1:Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet;

    iget-object v1, v1, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet;->this$0:Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    .line 630
    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->access$200(Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;)Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->asList()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet$1;->this$1:Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet;

    iget-object v2, v2, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet;->this$0:Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    invoke-static {v2}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->access$300(Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 629
    return-object v0
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
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet$1;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet$1;"
    nop

    .line 636
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet$1;->size()I

    move-result v0

    new-instance v1, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet$1$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet$1;)V

    .line 635
    const/16 v2, 0x511

    invoke-static {v0, v2, v1}, Lorg/checkerframework/com/google/common/collect/CollectSpliterators;->indexed(IILjava/util/function/IntFunction;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
