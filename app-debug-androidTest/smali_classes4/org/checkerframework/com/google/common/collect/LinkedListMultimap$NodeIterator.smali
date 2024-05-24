.class Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;
.super Ljava/lang/Object;
.source "LinkedListMultimap.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NodeIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field current:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field expectedModCount:I

.field next:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field nextIndex:I

.field previous:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;I)V
    .locals 2
    .param p2, "index"    # I

    .line 315
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->this$0:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->access$000(Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->expectedModCount:I

    .line 316
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->size()I

    move-result v0

    .line 317
    .local v0, "size":I
    invoke-static {p2, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 318
    div-int/lit8 v1, v0, 0x2

    if-lt p2, v1, :cond_0

    .line 319
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->access$100(Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;)Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    move-result-object p1

    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->previous:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    .line 320
    iput v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->nextIndex:I

    .line 321
    :goto_0
    add-int/lit8 p1, p2, 0x1

    .end local p2    # "index":I
    .local p1, "index":I
    if-ge p2, v0, :cond_1

    .line 322
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->previous()Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    move p2, p1

    goto :goto_0

    .line 325
    .end local p1    # "index":I
    .restart local p2    # "index":I
    :cond_0
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->access$200(Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;)Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    move-result-object p1

    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->next:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    .line 326
    :goto_1
    add-int/lit8 p1, p2, -0x1

    .end local p2    # "index":I
    .restart local p1    # "index":I
    if-lez p2, :cond_1

    .line 327
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->next()Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    move p2, p1

    goto :goto_1

    .line 330
    :cond_1
    const/4 p2, 0x0

    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    .line 331
    return-void
.end method

.method private checkForConcurrentModification()V
    .locals 2

    .line 334
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->this$0:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->access$000(Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;)I

    move-result v0

    iget v1, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->expectedModCount:I

    if-ne v0, v1, :cond_0

    .line 337
    return-void

    .line 335
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    .line 308
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->add(Ljava/util/Map$Entry;)V

    return-void
.end method

.method public add(Ljava/util/Map$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 405
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    .local p1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .line 341
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->checkForConcurrentModification()V

    .line 342
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->next:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 373
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->checkForConcurrentModification()V

    .line 374
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->previous:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 308
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->next()Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 348
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->checkForConcurrentModification()V

    .line 349
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->next:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->access$300(Ljava/lang/Object;)V

    .line 350
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->next:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->previous:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    .line 351
    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->next:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->next:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    .line 352
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->nextIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->nextIndex:I

    .line 353
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .line 390
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->nextIndex:I

    return v0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    .line 308
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->previous()Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    move-result-object v0

    return-object v0
.end method

.method public previous()Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 380
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->checkForConcurrentModification()V

    .line 381
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->previous:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->access$300(Ljava/lang/Object;)V

    .line 382
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->previous:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->next:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    .line 383
    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->previous:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->previous:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    .line 384
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->nextIndex:I

    .line 385
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .line 395
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 3

    .line 358
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->checkForConcurrentModification()V

    .line 359
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 360
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->next:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    if-eq v0, v2, :cond_1

    .line 361
    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->previous:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->previous:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    .line 362
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->nextIndex:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->nextIndex:I

    goto :goto_1

    .line 364
    :cond_1
    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->next:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->next:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    .line 366
    :goto_1
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->this$0:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->access$400(Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;)V

    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    .line 368
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->this$0:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->access$000(Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->expectedModCount:I

    .line 369
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 308
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->set(Ljava/util/Map$Entry;)V

    return-void
.end method

.method public set(Ljava/util/Map$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 400
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    .local p1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 409
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkState(Z)V

    .line 410
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    iput-object p1, v0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->value:Ljava/lang/Object;

    .line 411
    return-void
.end method
