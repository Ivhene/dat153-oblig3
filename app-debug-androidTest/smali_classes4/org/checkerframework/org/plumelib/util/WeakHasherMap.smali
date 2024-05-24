.class public final Lorg/checkerframework/org/plumelib/util/WeakHasherMap;
.super Ljava/util/AbstractMap;
.source "WeakHasherMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet;,
        Lorg/checkerframework/org/plumelib/util/WeakHasherMap$Entry;,
        Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private hash:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<",
            "TK;TV;>.WeakKey;TV;>;"
        }
    .end annotation
.end field

.field private hasher:Lorg/checkerframework/org/plumelib/util/Hasher;

.field private queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 243
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakHasherMap;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->hasher:Lorg/checkerframework/org/plumelib/util/Hasher;

    .line 198
    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v1, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 493
    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->entrySet:Ljava/util/Set;

    .line 244
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->hash:Ljava/util/Map;

    .line 245
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    .line 235
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakHasherMap;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->hasher:Lorg/checkerframework/org/plumelib/util/Hasher;

    .line 198
    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v1, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 493
    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->entrySet:Ljava/util/Set;

    .line 236
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->hash:Ljava/util/Map;

    .line 237
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .line 224
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakHasherMap;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->hasher:Lorg/checkerframework/org/plumelib/util/Hasher;

    .line 198
    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v1, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 493
    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->entrySet:Ljava/util/Set;

    .line 225
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->hash:Ljava/util/Map;

    .line 226
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/plumelib/util/Hasher;)V
    .locals 2
    .param p1, "h"    # Lorg/checkerframework/org/plumelib/util/Hasher;

    .line 254
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakHasherMap;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->hasher:Lorg/checkerframework/org/plumelib/util/Hasher;

    .line 198
    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v1, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 493
    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->entrySet:Ljava/util/Set;

    .line 255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->hash:Ljava/util/Map;

    .line 256
    iput-object p1, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->hasher:Lorg/checkerframework/org/plumelib/util/Hasher;

    .line 257
    return-void
.end method

.method private WeakKeyCreate(Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<",
            "TK;TV;>.WeakKey;"
        }
    .end annotation

    .line 134
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakHasherMap;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 135
    :cond_0
    new-instance v1, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;

    invoke-direct {v1, p0, p1, v0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;-><init>(Lorg/checkerframework/org/plumelib/util/WeakHasherMap;Ljava/lang/Object;Lorg/checkerframework/org/plumelib/util/WeakHasherMap$1;)V

    return-object v1
.end method

.method private WeakKeyCreate(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-TK;>;)",
            "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<",
            "TK;TV;>.WeakKey;"
        }
    .end annotation

    .line 139
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakHasherMap;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    .local p2, "q":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<-TK;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 140
    :cond_0
    new-instance v1, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;

    invoke-direct {v1, p0, p1, p2, v0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;-><init>(Lorg/checkerframework/org/plumelib/util/WeakHasherMap;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Lorg/checkerframework/org/plumelib/util/WeakHasherMap$1;)V

    return-object v1
.end method

.method static synthetic access$200(Lorg/checkerframework/org/plumelib/util/WeakHasherMap;Ljava/lang/Object;)I
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/org/plumelib/util/WeakHasherMap;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 107
    invoke-direct {p0, p1}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->keyHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lorg/checkerframework/org/plumelib/util/WeakHasherMap;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/org/plumelib/util/WeakHasherMap;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;

    .line 107
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->keyEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lorg/checkerframework/org/plumelib/util/WeakHasherMap;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    .line 107
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->hash:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lorg/checkerframework/org/plumelib/util/WeakHasherMap;)V
    .locals 0
    .param p0, "x0"    # Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    .line 107
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->processQueue()V

    return-void
.end method

.method static synthetic access$600(Lorg/checkerframework/org/plumelib/util/WeakHasherMap;Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/org/plumelib/util/WeakHasherMap;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 107
    invoke-direct {p0, p1}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->WeakKeyCreate(Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;

    move-result-object v0

    return-object v0
.end method

.method private keyEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "k1"    # Ljava/lang/Object;
    .param p2, "k2"    # Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 119
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakHasherMap;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->hasher:Lorg/checkerframework/org/plumelib/util/Hasher;

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/plumelib/util/Hasher;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method private keyHashCode(Ljava/lang/Object;)I
    .locals 1
    .param p1, "k1"    # Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 124
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakHasherMap;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->hasher:Lorg/checkerframework/org/plumelib/util/Hasher;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lorg/checkerframework/org/plumelib/util/Hasher;->hashCode(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0
.end method

.method private processQueue()V
    .locals 2

    .line 208
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakHasherMap;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>;"
    nop

    :goto_0
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;

    move-object v1, v0

    .local v1, "wk":Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>.WeakKey;"
    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->hash:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 211
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 342
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakHasherMap;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>;"
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->processQueue()V

    .line 343
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->hash:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 344
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresKeyForIf;
        expression = {
            "#1"
        }
        map = {
            "this"
        }
        result = true
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 288
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakHasherMap;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>;"
    move-object v0, p1

    .line 289
    .local v0, "kkey":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->hash:Ljava/util/Map;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->WeakKeyCreate(Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 499
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakHasherMap;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$EntrySet;-><init>(Lorg/checkerframework/org/plumelib/util/WeakHasherMap;Lorg/checkerframework/org/plumelib/util/WeakHasherMap$1;)V

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->entrySet:Ljava/util/Set;

    .line 500
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 304
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakHasherMap;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>;"
    move-object v0, p1

    .line 305
    .local v0, "kkey":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->hash:Ljava/util/Map;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->WeakKeyCreate(Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public isEmpty()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 276
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakHasherMap;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/lock/qual/ReleasesNoLocks;
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresKeyFor;
        map = {
            "this"
        }
        value = {
            "#1"
        }
    .end annotation

    .line 320
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakHasherMap;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->processQueue()V

    .line 321
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->hash:Ljava/util/Map;

    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->WeakKeyCreate(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 333
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakHasherMap;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>;"
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->processQueue()V

    .line 335
    move-object v0, p1

    .line 336
    .local v0, "kkey":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->hash:Ljava/util/Map;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->WeakKeyCreate(Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public size()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 269
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakHasherMap;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
