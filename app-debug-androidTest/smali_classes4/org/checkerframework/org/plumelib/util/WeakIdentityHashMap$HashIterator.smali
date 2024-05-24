.class abstract Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;
.super Ljava/lang/Object;
.source "WeakIdentityHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HashIterator"
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
.field currentKey:Ljava/lang/Object;

.field entry:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field expectedModCount:I

.field index:I

.field lastReturned:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field nextKey:Ljava/lang/Object;

.field final synthetic this$0:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;


# direct methods
.method constructor <init>(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;)V
    .locals 2

    .line 698
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>.HashIterator<TT;>;"
    iput-object p1, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;->this$0:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 685
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;->entry:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    .line 686
    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;->lastReturned:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    .line 687
    invoke-static {p1}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->access$400(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;)I

    move-result v1

    iput v1, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;->expectedModCount:I

    .line 690
    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;->nextKey:Ljava/lang/Object;

    .line 696
    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    .line 699
    invoke-virtual {p1}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->access$500(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;)[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    move-result-object p1

    array-length p1, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;->index:I

    .line 700
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .line 704
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>.HashIterator<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;->this$0:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;

    invoke-static {v0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->access$500(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;)[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    move-result-object v0

    .line 706
    .local v0, "t":[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;->nextKey:Ljava/lang/Object;

    if-nez v1, :cond_3

    .line 707
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;->entry:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    .line 708
    .local v1, "e":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    iget v2, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;->index:I

    .line 709
    .local v2, "i":I
    :goto_1
    if-nez v1, :cond_0

    if-lez v2, :cond_0

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v0, v2

    goto :goto_1

    .line 710
    :cond_0
    iput-object v1, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;->entry:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    .line 711
    iput v2, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;->index:I

    .line 712
    if-nez v1, :cond_1

    .line 713
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    .line 714
    const/4 v3, 0x0

    return v3

    .line 716
    :cond_1
    invoke-virtual {v1}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;->nextKey:Ljava/lang/Object;

    .line 717
    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;->entry:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    invoke-static {v3}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->access$100(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;)Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    move-result-object v3

    iput-object v3, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;->entry:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    .line 718
    .end local v1    # "e":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    .end local v2    # "i":I
    :cond_2
    goto :goto_0

    .line 719
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method protected nextEntry()Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 724
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>.HashIterator<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;->this$0:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;

    invoke-static {v0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->access$400(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;)I

    move-result v0

    iget v1, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;->expectedModCount:I

    if-ne v0, v1, :cond_2

    .line 725
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;->nextKey:Ljava/lang/Object;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 727
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;->entry:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;->lastReturned:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    .line 728
    invoke-static {v0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->access$100(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;)Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;->entry:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    .line 729
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;->nextKey:Ljava/lang/Object;

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    .line 730
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;->nextKey:Ljava/lang/Object;

    .line 731
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;->lastReturned:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    return-object v0

    .line 724
    :cond_2
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 736
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>.HashIterator<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;->lastReturned:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    if-eqz v0, :cond_1

    .line 737
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;->this$0:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;

    invoke-static {v0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->access$400(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;)I

    move-result v0

    iget v1, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;->expectedModCount:I

    if-ne v0, v1, :cond_0

    .line 739
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;->this$0:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;

    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;->this$0:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;

    invoke-static {v0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->access$400(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;->expectedModCount:I

    .line 741
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;->lastReturned:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    .line 742
    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    .line 743
    return-void

    .line 737
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 736
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
