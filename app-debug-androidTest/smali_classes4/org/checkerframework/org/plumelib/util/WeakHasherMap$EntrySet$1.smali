.class Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet$1;
.super Ljava/lang/Object;
.source "WeakHasherMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field hashIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<",
            "TK;TV;>.WeakKey;TV;>;>;"
        }
    .end annotation
.end field

.field next:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet;


# direct methods
.method constructor <init>(Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet;)V
    .locals 1
    .param p1, "this$1"    # Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet;

    .line 413
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet$1;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet$1;"
    iput-object p1, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet$1;->this$1:Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    iget-object v0, p1, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet;->hashEntrySet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet$1;->hashIterator:Ljava/util/Iterator;

    .line 415
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet$1;->next:Ljava/util/Map$Entry;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 5

    .line 419
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet$1;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet$1;"
    nop

    :goto_0
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet$1;->hashIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet$1;->hashIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 421
    .local v0, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>.WeakKey;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;

    .line 422
    .local v1, "wk":Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>.WeakKey;"
    const/4 v2, 0x0

    .line 423
    .local v2, "k":Ljava/lang/Object;, "TK;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    if-nez v3, :cond_0

    .line 425
    goto :goto_0

    .line 427
    :cond_0
    new-instance v3, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$Entry;

    iget-object v4, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet$1;->this$1:Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet;

    iget-object v4, v4, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet;->this$0:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    invoke-direct {v3, v4, v0, v2}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$Entry;-><init>(Lorg/checkerframework/org/plumelib/util/WeakHasherMap;Ljava/util/Map$Entry;Ljava/lang/Object;)V

    iput-object v3, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet$1;->next:Ljava/util/Map$Entry;

    .line 428
    const/4 v3, 0x1

    return v3

    .line 430
    .end local v0    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>.WeakKey;TV;>;"
    .end local v1    # "wk":Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>.WeakKey;"
    .end local v2    # "k":Ljava/lang/Object;, "TK;"
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 413
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet$1;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet$1;"
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 435
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet$1;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet$1;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet$1;->next:Ljava/util/Map$Entry;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 436
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet$1;->next:Ljava/util/Map$Entry;

    .line 437
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet$1;->next:Ljava/util/Map$Entry;

    .line 438
    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 443
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet$1;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet$1;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet$1;->hashIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 444
    return-void
.end method
