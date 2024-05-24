.class abstract Lorg/checkerframework/com/google/common/collect/HashBiMap$Itr;
.super Ljava/lang/Object;
.source "HashBiMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/HashBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field expectedModCount:I

.field next:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field remaining:I

.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/HashBiMap;

.field toRemove:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/HashBiMap;)V
    .locals 1
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/HashBiMap;

    .line 412
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap$Itr;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>.Itr<TT;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Itr;->this$0:Lorg/checkerframework/com/google/common/collect/HashBiMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->access$000(Lorg/checkerframework/com/google/common/collect/HashBiMap;)Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Itr;->next:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 414
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Itr;->toRemove:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 415
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->access$100(Lorg/checkerframework/com/google/common/collect/HashBiMap;)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Itr;->expectedModCount:I

    .line 416
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->size()I

    move-result v0

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Itr;->remaining:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 420
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap$Itr;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>.Itr<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Itr;->this$0:Lorg/checkerframework/com/google/common/collect/HashBiMap;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->access$100(Lorg/checkerframework/com/google/common/collect/HashBiMap;)I

    move-result v0

    iget v1, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Itr;->expectedModCount:I

    if-ne v0, v1, :cond_1

    .line 423
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Itr;->next:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Itr;->remaining:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 421
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 428
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap$Itr;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>.Itr<TT;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/HashBiMap$Itr;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Itr;->next:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 433
    .local v0, "entry":Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    iget-object v1, v0, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->nextInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Itr;->next:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 434
    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Itr;->toRemove:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 435
    iget v1, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Itr;->remaining:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Itr;->remaining:I

    .line 436
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/collect/HashBiMap$Itr;->output(Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 429
    .end local v0    # "entry":Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method abstract output(Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<",
            "TK;TV;>;)TT;"
        }
    .end annotation
.end method

.method public remove()V
    .locals 2

    .line 441
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap$Itr;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>.Itr<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Itr;->this$0:Lorg/checkerframework/com/google/common/collect/HashBiMap;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->access$100(Lorg/checkerframework/com/google/common/collect/HashBiMap;)I

    move-result v0

    iget v1, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Itr;->expectedModCount:I

    if-ne v0, v1, :cond_1

    .line 444
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Itr;->toRemove:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 445
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Itr;->this$0:Lorg/checkerframework/com/google/common/collect/HashBiMap;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Itr;->toRemove:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->access$200(Lorg/checkerframework/com/google/common/collect/HashBiMap;Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;)V

    .line 446
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Itr;->this$0:Lorg/checkerframework/com/google/common/collect/HashBiMap;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->access$100(Lorg/checkerframework/com/google/common/collect/HashBiMap;)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Itr;->expectedModCount:I

    .line 447
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Itr;->toRemove:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 448
    return-void

    .line 442
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method
