.class Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue$2;
.super Lorg/checkerframework/com/google/common/collect/AbstractSequentialIterator;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/AbstractSequentialIterator<",
        "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;

    .line 3737
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue$2;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue$2;"
    .local p2, "firstOrNull":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue$2;->this$0:Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;

    invoke-direct {p0, p2}, Lorg/checkerframework/com/google/common/collect/AbstractSequentialIterator;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3737
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue$2;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue$2;"
    check-cast p1, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue$2;->computeNext(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    move-result-object p1

    return-object p1
.end method

.method protected computeNext(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)Lorg/checkerframework/com/google/common/cache/ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3740
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue$2;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue$2;"
    .local p1, "previous":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->getNextInWriteQueue()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    move-result-object v0

    .line 3741
    .local v0, "next":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue$2;->this$0:Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;

    iget-object v1, v1, Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;->head:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method