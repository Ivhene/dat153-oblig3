.class Lorg/checkerframework/com/google/common/collect/Maps$IteratorBasedAbstractMap$1;
.super Lorg/checkerframework/com/google/common/collect/Maps$EntrySet;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/Maps$IteratorBasedAbstractMap;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/Maps$EntrySet<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/Maps$IteratorBasedAbstractMap;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/Maps$IteratorBasedAbstractMap;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/Maps$IteratorBasedAbstractMap;

    .line 3534
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$IteratorBasedAbstractMap$1;, "Lorg/checkerframework/com/google/common/collect/Maps$IteratorBasedAbstractMap$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Maps$IteratorBasedAbstractMap$1;->this$0:Lorg/checkerframework/com/google/common/collect/Maps$IteratorBasedAbstractMap;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/Maps$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 3552
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$IteratorBasedAbstractMap$1;, "Lorg/checkerframework/com/google/common/collect/Maps$IteratorBasedAbstractMap$1;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$IteratorBasedAbstractMap$1;->this$0:Lorg/checkerframework/com/google/common/collect/Maps$IteratorBasedAbstractMap;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/Maps$IteratorBasedAbstractMap;->forEachEntry(Ljava/util/function/Consumer;)V

    .line 3553
    return-void
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

    .line 3542
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$IteratorBasedAbstractMap$1;, "Lorg/checkerframework/com/google/common/collect/Maps$IteratorBasedAbstractMap$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$IteratorBasedAbstractMap$1;->this$0:Lorg/checkerframework/com/google/common/collect/Maps$IteratorBasedAbstractMap;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/Maps$IteratorBasedAbstractMap;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

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

    .line 3537
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$IteratorBasedAbstractMap$1;, "Lorg/checkerframework/com/google/common/collect/Maps$IteratorBasedAbstractMap$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$IteratorBasedAbstractMap$1;->this$0:Lorg/checkerframework/com/google/common/collect/Maps$IteratorBasedAbstractMap;

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

    .line 3547
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$IteratorBasedAbstractMap$1;, "Lorg/checkerframework/com/google/common/collect/Maps$IteratorBasedAbstractMap$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$IteratorBasedAbstractMap$1;->this$0:Lorg/checkerframework/com/google/common/collect/Maps$IteratorBasedAbstractMap;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/Maps$IteratorBasedAbstractMap;->entrySpliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
