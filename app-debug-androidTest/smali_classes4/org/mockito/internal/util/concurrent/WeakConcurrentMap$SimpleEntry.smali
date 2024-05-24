.class Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$SimpleEntry;
.super Ljava/lang/Object;
.source "WeakConcurrentMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final entry:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WeakKey<",
            "TK;>;TV;>;"
        }
    .end annotation
.end field

.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;


# direct methods
.method private constructor <init>(Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;Ljava/lang/Object;Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Map$Entry<",
            "Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WeakKey<",
            "TK;>;TV;>;)V"
        }
    .end annotation

    .line 355
    .local p0, "this":Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$SimpleEntry;, "Lorg/mockito/internal/util/concurrent/WeakConcurrentMap<TK;TV;>.SimpleEntry;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WeakKey<TK;>;TV;>;"
    iput-object p1, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$SimpleEntry;->this$0:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    iput-object p2, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$SimpleEntry;->key:Ljava/lang/Object;

    .line 357
    iput-object p3, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$SimpleEntry;->entry:Ljava/util/Map$Entry;

    .line 358
    return-void
.end method

.method synthetic constructor <init>(Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;Ljava/lang/Object;Ljava/util/Map$Entry;Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/util/Map$Entry;
    .param p4, "x3"    # Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$1;

    .line 349
    .local p0, "this":Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$SimpleEntry;, "Lorg/mockito/internal/util/concurrent/WeakConcurrentMap<TK;TV;>.SimpleEntry;"
    invoke-direct {p0, p1, p2, p3}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$SimpleEntry;-><init>(Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;Ljava/lang/Object;Ljava/util/Map$Entry;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 362
    .local p0, "this":Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$SimpleEntry;, "Lorg/mockito/internal/util/concurrent/WeakConcurrentMap<TK;TV;>.SimpleEntry;"
    iget-object v0, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$SimpleEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 367
    .local p0, "this":Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$SimpleEntry;, "Lorg/mockito/internal/util/concurrent/WeakConcurrentMap<TK;TV;>.SimpleEntry;"
    iget-object v0, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$SimpleEntry;->entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 372
    .local p0, "this":Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$SimpleEntry;, "Lorg/mockito/internal/util/concurrent/WeakConcurrentMap<TK;TV;>.SimpleEntry;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    .line 375
    iget-object v0, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$SimpleEntry;->entry:Ljava/util/Map$Entry;

    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 373
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
