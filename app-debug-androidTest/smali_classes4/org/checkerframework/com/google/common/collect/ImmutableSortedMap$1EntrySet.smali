.class Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet;
.super Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet;
.source "ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->createEntrySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "1EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    .line 608
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet;->this$0:Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method createAsList()Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 626
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet$1;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet$1;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet;)V

    return-object v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 621
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet;->asList()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->forEach(Ljava/util/function/Consumer;)V

    .line 622
    return-void
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 608
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 611
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet;->asList()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method map()Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 648
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet;->this$0:Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    return-object v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 616
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet;->asList()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
