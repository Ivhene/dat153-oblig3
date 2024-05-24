.class Lorg/checkerframework/com/google/common/graph/MapIteratorCache$1$1;
.super Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
.source "MapIteratorCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/graph/MapIteratorCache$1;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/checkerframework/com/google/common/graph/MapIteratorCache$1;

.field final synthetic val$entryIterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/graph/MapIteratorCache$1;Ljava/util/Iterator;)V
    .locals 0
    .param p1, "this$1"    # Lorg/checkerframework/com/google/common/graph/MapIteratorCache$1;

    .line 92
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/MapIteratorCache$1$1;, "Lorg/checkerframework/com/google/common/graph/MapIteratorCache$1$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/graph/MapIteratorCache$1$1;->this$1:Lorg/checkerframework/com/google/common/graph/MapIteratorCache$1;

    iput-object p2, p0, Lorg/checkerframework/com/google/common/graph/MapIteratorCache$1$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 95
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/MapIteratorCache$1$1;, "Lorg/checkerframework/com/google/common/graph/MapIteratorCache$1$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/MapIteratorCache$1$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 100
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/MapIteratorCache$1$1;, "Lorg/checkerframework/com/google/common/graph/MapIteratorCache$1$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/MapIteratorCache$1$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 101
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/graph/MapIteratorCache$1$1;->this$1:Lorg/checkerframework/com/google/common/graph/MapIteratorCache$1;

    iget-object v1, v1, Lorg/checkerframework/com/google/common/graph/MapIteratorCache$1;->this$0:Lorg/checkerframework/com/google/common/graph/MapIteratorCache;

    invoke-static {v1, v0}, Lorg/checkerframework/com/google/common/graph/MapIteratorCache;->access$102(Lorg/checkerframework/com/google/common/graph/MapIteratorCache;Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    .line 102
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
