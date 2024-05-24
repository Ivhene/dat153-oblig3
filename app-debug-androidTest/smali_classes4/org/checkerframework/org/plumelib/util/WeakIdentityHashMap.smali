.class public Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;
.super Ljava/util/AbstractMap;
.source "WeakIdentityHashMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$OurSimpleEntry;,
        Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$EntrySet;,
        Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Values;,
        Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$KeySet;,
        Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$EntryIterator;,
        Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$KeyIterator;,
        Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$ValueIterator;,
        Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;,
        Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;
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


# static fields
.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field private static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field private static final MAXIMUM_CAPACITY:I = 0x40000000

.field private static final NULL_KEY:Ljava/lang/Object;


# instance fields
.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final loadFactor:F

.field private volatile modCount:I

.field private volatile transient our_keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field volatile transient our_values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;"
        }
    .end annotation
.end field

.field private size:I

.field private table:[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private threshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 227
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->NULL_KEY:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 198
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 148
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 769
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->entrySet:Ljava/util/Set;

    .line 770
    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->our_keySet:Ljava/util/Set;

    .line 834
    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->our_values:Ljava/util/Collection;

    .line 199
    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->loadFactor:F

    .line 200
    const/16 v0, 0x10

    iput v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->threshold:I

    .line 202
    new-array v0, v0, [Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    check-cast v0, [Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    .line 203
    .local v0, "tmpTable":[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->table:[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    .line 204
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 191
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>;"
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;-><init>(IF)V

    .line 192
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 3
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .line 167
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 148
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 769
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->entrySet:Ljava/util/Set;

    .line 770
    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->our_keySet:Ljava/util/Set;

    .line 834
    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->our_values:Ljava/util/Collection;

    .line 168
    if-ltz p1, :cond_3

    .line 170
    const/high16 v0, 0x40000000    # 2.0f

    if-le p1, v0, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    .line 172
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_2

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    .line 174
    const/4 v0, 0x1

    .line 175
    .local v0, "capacity":I
    :goto_0
    if-ge v0, p1, :cond_1

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_1
    new-array v1, v0, [Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    check-cast v1, [Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    .line 178
    .local v1, "tmpTable":[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    iput-object v1, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->table:[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    .line 179
    iput p2, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->loadFactor:F

    .line 180
    int-to-float v2, v0

    mul-float/2addr v2, p2

    float-to-int v2, v2

    iput v2, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->threshold:I

    .line 181
    return-void

    .line 173
    .end local v0    # "capacity":I
    .end local v1    # "tmpTable":[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal Load factor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal Initial Capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 217
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>;"
    .local p1, "t":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    div-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;-><init>(IF)V

    .line 218
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->putAll(Ljava/util/Map;)V

    .line 219
    return-void
.end method

.method static synthetic access$300(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;

    .line 121
    invoke-static {p0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;)I
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;

    .line 121
    iget v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->modCount:I

    return v0
.end method

.method static synthetic access$500(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;)[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;

    .line 121
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->table:[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    return-object v0
.end method

.method private containsNullValue()Z
    .locals 4

    .line 612
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>;"
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->getTable()[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    move-result-object v0

    .line 613
    .local v0, "tab":[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    array-length v1, v0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "i":I
    .local v2, "i":I
    if-lez v1, :cond_2

    .line 614
    aget-object v1, v0, v2

    .local v1, "e":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;
    :goto_1
    if-eqz v1, :cond_1

    invoke-static {v1}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->access$200(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    invoke-static {v1}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->access$100(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;)Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    move-result-object v1

    goto :goto_1

    :cond_1
    move v1, v2

    .end local v1    # "e":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;
    goto :goto_0

    .line 615
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method static eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x"    # Ljava/lang/Object;
    .param p1, "y"    # Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 252
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private expungeStaleEntries()V
    .locals 7
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 273
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>;"
    nop

    :goto_0
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    move-object v1, v0

    .local v1, "e":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    if-eqz v0, :cond_3

    .line 274
    invoke-static {v1}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->access$000(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;)I

    move-result v0

    .line 275
    .local v0, "h":I
    iget-object v2, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->table:[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    array-length v2, v2

    invoke-static {v0, v2}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->indexFor(II)I

    move-result v2

    .line 277
    .local v2, "i":I
    iget-object v3, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->table:[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    aget-object v3, v3, v2

    .line 278
    .local v3, "prev":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    move-object v4, v3

    .line 279
    .local v4, "p":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    :goto_1
    if-eqz v4, :cond_2

    .line 280
    invoke-static {v4}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->access$100(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;)Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    move-result-object v5

    .line 281
    .local v5, "next":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    if-ne v4, v1, :cond_1

    .line 282
    if-ne v3, v1, :cond_0

    iget-object v6, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->table:[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    aput-object v5, v6, v2

    goto :goto_2

    .line 283
    :cond_0
    invoke-static {v3, v5}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->access$102(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;)Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    .line 284
    :goto_2
    const/4 v6, 0x0

    invoke-static {v1, v6}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->access$102(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;)Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    .line 285
    invoke-static {v1, v6}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->access$202(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget v6, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->size:I

    .line 287
    goto :goto_3

    .line 289
    :cond_1
    move-object v3, v4

    .line 290
    move-object v4, v5

    .line 291
    .end local v5    # "next":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    goto :goto_1

    .line 292
    .end local v0    # "h":I
    .end local v2    # "i":I
    .end local v3    # "prev":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    .end local v4    # "p":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    :cond_2
    :goto_3
    goto :goto_0

    .line 293
    :cond_3
    return-void
.end method

.method private getTable()[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 298
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>;"
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->expungeStaleEntries()V

    .line 299
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->table:[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    return-object v0
.end method

.method static hasher(Ljava/lang/Object;)I
    .locals 1
    .param p0, "x"    # Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 258
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static indexFor(II)I
    .locals 1
    .param p0, "h"    # I
    .param p1, "length"    # I
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 264
    add-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p0

    return v0
.end method

.method private static maskNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 238
    if-nez p0, :cond_0

    sget-object v0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->NULL_KEY:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method private transfer([Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<",
            "TK;TV;>;[",
            "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 454
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>;"
    .local p1, "src":[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    .local p2, "dest":[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 455
    aget-object v1, p1, v0

    .line 456
    .local v1, "e":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    const/4 v2, 0x0

    aput-object v2, p1, v0

    .line 457
    :goto_1
    if-eqz v1, :cond_1

    .line 458
    invoke-static {v1}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->access$100(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;)Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    move-result-object v3

    .line 459
    .local v3, "next":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    invoke-virtual {v1}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v4

    .line 460
    .local v4, "key":Ljava/lang/Object;
    if-nez v4, :cond_0

    .line 461
    invoke-static {v1, v2}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->access$102(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;)Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    .line 462
    invoke-static {v1, v2}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->access$202(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    iget v5, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->size:I

    goto :goto_2

    .line 465
    :cond_0
    invoke-static {v1}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->access$000(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;)I

    move-result v5

    array-length v6, p2

    invoke-static {v5, v6}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->indexFor(II)I

    move-result v5

    .line 466
    .local v5, "i":I
    aget-object v6, p2, v5

    invoke-static {v1, v6}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->access$102(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;)Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    .line 467
    aput-object v1, p2, v5

    .line 469
    .end local v5    # "i":I
    :goto_2
    move-object v1, v3

    .line 470
    .end local v3    # "next":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    .end local v4    # "key":Ljava/lang/Object;
    goto :goto_1

    .line 454
    .end local v1    # "e":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 472
    .end local v0    # "j":I
    :cond_2
    return-void
.end method

.method private static unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;)TK;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 246
    .local p0, "key":Ljava/lang/Object;, "TK;"
    sget-object v0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->NULL_KEY:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 580
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>;"
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 582
    :cond_0
    iget v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->modCount:I

    .line 583
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->table:[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    .line 584
    .local v0, "tab":[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 585
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->size:I

    .line 590
    :goto_2
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 591
    :cond_2
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
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

    .line 363
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->getEntry(Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 602
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>;"
    if-nez p1, :cond_0

    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->containsNullValue()Z

    move-result v0

    return v0

    .line 604
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->getTable()[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    move-result-object v0

    .line 605
    .local v0, "tab":[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    array-length v1, v0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "i":I
    .local v2, "i":I
    if-lez v1, :cond_3

    .line 606
    aget-object v1, v0, v2

    .local v1, "e":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;
    :goto_1
    if-eqz v1, :cond_2

    invoke-static {v1}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->access$200(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    return v3

    :cond_1
    invoke-static {v1}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->access$100(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;)Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    move-result-object v1

    goto :goto_1

    :cond_2
    move v1, v2

    .end local v1    # "e":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;
    goto :goto_0

    .line 607
    .end local v2    # "i":I
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3
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

    .line 905
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->entrySet:Ljava/util/Set;

    .line 906
    .local v0, "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$EntrySet;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$EntrySet;-><init>(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$1;)V

    iput-object v1, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->entrySet:Ljava/util/Set;

    :goto_0
    return-object v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
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

    .line 341
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>;"
    invoke-static {p1}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 342
    .local v0, "k":Ljava/lang/Object;
    invoke-static {v0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->hasher(Ljava/lang/Object;)I

    move-result v1

    .line 343
    .local v1, "h":I
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->getTable()[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    move-result-object v2

    .line 344
    .local v2, "tab":[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    array-length v3, v2

    invoke-static {v1, v3}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->indexFor(II)I

    move-result v3

    .line 345
    .local v3, "index":I
    aget-object v4, v2, v3

    .line 346
    .local v4, "e":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    :goto_0
    if-eqz v4, :cond_1

    .line 347
    invoke-static {v4}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->access$000(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;)I

    move-result v5

    if-ne v5, v1, :cond_0

    invoke-virtual {v4}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v5}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->access$200(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;)Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 348
    :cond_0
    invoke-static {v4}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->access$100(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;)Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    move-result-object v4

    goto :goto_0

    .line 350
    :cond_1
    const/4 v5, 0x0

    return-object v5
.end method

.method getEntry(Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 372
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>;"
    invoke-static {p1}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 373
    .local v0, "k":Ljava/lang/Object;
    invoke-static {v0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->hasher(Ljava/lang/Object;)I

    move-result v1

    .line 374
    .local v1, "h":I
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->getTable()[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    move-result-object v2

    .line 375
    .local v2, "tab":[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    array-length v3, v2

    invoke-static {v1, v3}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->indexFor(II)I

    move-result v3

    .line 376
    .local v3, "index":I
    aget-object v4, v2, v3

    .line 377
    .local v4, "e":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    :goto_0
    if-eqz v4, :cond_1

    invoke-static {v4}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->access$000(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;)I

    move-result v5

    if-ne v5, v1, :cond_0

    invoke-virtual {v4}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v5}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    invoke-static {v4}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->access$100(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;)Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    move-result-object v4

    goto :goto_0

    .line 378
    :cond_1
    return-object v4
.end method

.method public isEmpty()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 323
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 784
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->our_keySet:Ljava/util/Set;

    .line 785
    .local v0, "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$KeySet;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$KeySet;-><init>(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$1;)V

    iput-object v1, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->our_keySet:Ljava/util/Set;

    :goto_0
    return-object v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
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

    .line 395
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 396
    .local v6, "k":Ljava/lang/Object;, "TK;"
    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    .line 397
    .local v7, "h":I
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->getTable()[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    move-result-object v8

    .line 398
    .local v8, "tab":[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    array-length v0, v8

    invoke-static {v7, v0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->indexFor(II)I

    move-result v9

    .line 400
    .local v9, "i":I
    aget-object v0, v8, v9

    .local v0, "e":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 401
    invoke-static {v0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->access$000(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;)I

    move-result v1

    if-ne v7, v1, :cond_1

    invoke-virtual {v0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v1}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 402
    invoke-static {v0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->access$200(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;)Ljava/lang/Object;

    move-result-object v1

    .line 403
    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    if-eq p2, v1, :cond_0

    invoke-static {v0, p2}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->access$202(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    :cond_0
    return-object v1

    .line 400
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_1
    invoke-static {v0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->access$100(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;)Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    move-result-object v0

    goto :goto_0

    .line 408
    .end local v0    # "e":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    :cond_2
    iget v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->modCount:I

    .line 409
    aget-object v10, v8, v9

    .line 410
    .local v10, "e":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    new-instance v11, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    iget-object v3, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    move-object v0, v11

    move-object v1, v6

    move-object v2, p2

    move v4, v7

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;ILorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;)V

    aput-object v11, v8, v9

    .line 411
    iget v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->size:I

    iget v1, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->threshold:I

    if-lt v0, v1, :cond_3

    array-length v0, v8

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->resize(I)V

    .line 412
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 485
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 486
    .local v0, "numKeysToBeAdded":I
    if-nez v0, :cond_0

    return-void

    .line 497
    :cond_0
    iget v1, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->threshold:I

    if-le v0, v1, :cond_3

    .line 498
    int-to-float v1, v0

    iget v2, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->loadFactor:F

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 499
    .local v1, "targetCapacity":I
    const/high16 v2, 0x40000000    # 2.0f

    if-le v1, v2, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    .line 500
    :cond_1
    iget-object v2, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->table:[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    array-length v2, v2

    .line 501
    .local v2, "newCapacity":I
    :goto_0
    if-ge v2, v1, :cond_2

    shl-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 502
    :cond_2
    iget-object v3, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->table:[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    array-length v3, v3

    if-le v2, v3, :cond_3

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->resize(I)V

    .line 505
    .end local v1    # "targetCapacity":I
    .end local v2    # "newCapacity":I
    :cond_3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 506
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<+TK;+TV;>;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 507
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 508
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    goto :goto_1

    .line 510
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<+TK;+TV;>;>;"
    :cond_4
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 523
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>;"
    invoke-static {p1}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 524
    .local v0, "k":Ljava/lang/Object;
    invoke-static {v0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->hasher(Ljava/lang/Object;)I

    move-result v1

    .line 525
    .local v1, "h":I
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->getTable()[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    move-result-object v2

    .line 526
    .local v2, "tab":[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    array-length v3, v2

    invoke-static {v1, v3}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->indexFor(II)I

    move-result v3

    .line 527
    .local v3, "i":I
    aget-object v4, v2, v3

    .line 528
    .local v4, "prev":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    move-object v5, v4

    .line 530
    .local v5, "e":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    :goto_0
    if-eqz v5, :cond_2

    .line 531
    invoke-static {v5}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->access$100(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;)Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    move-result-object v6

    .line 532
    .local v6, "next":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    invoke-static {v5}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->access$000(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;)I

    move-result v7

    if-ne v1, v7, :cond_1

    invoke-virtual {v5}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v0, v7}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 533
    iget v7, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->modCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->modCount:I

    .line 534
    iget v7, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->size:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->size:I

    .line 535
    if-ne v4, v5, :cond_0

    aput-object v6, v2, v3

    goto :goto_1

    .line 536
    :cond_0
    invoke-static {v4, v6}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->access$102(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;)Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    .line 537
    :goto_1
    invoke-static {v5}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->access$200(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;)Ljava/lang/Object;

    move-result-object v7

    return-object v7

    .line 539
    :cond_1
    move-object v4, v5

    .line 540
    move-object v5, v6

    .line 541
    .end local v6    # "next":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    goto :goto_0

    .line 543
    :cond_2
    const/4 v6, 0x0

    return-object v6
.end method

.method removeMapping(Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;
    .locals 10
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 549
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 550
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->getTable()[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    move-result-object v0

    .line 551
    .local v0, "tab":[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    move-object v2, p1

    check-cast v2, Ljava/util/Map$Entry;

    .line 552
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 553
    .local v3, "k":Ljava/lang/Object;
    invoke-static {v3}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->hasher(Ljava/lang/Object;)I

    move-result v4

    .line 554
    .local v4, "h":I
    array-length v5, v0

    invoke-static {v4, v5}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->indexFor(II)I

    move-result v5

    .line 555
    .local v5, "i":I
    aget-object v6, v0, v5

    .line 556
    .local v6, "prev":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    move-object v7, v6

    .line 558
    .local v7, "e":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    :goto_0
    if-eqz v7, :cond_3

    .line 559
    invoke-static {v7}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->access$100(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;)Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    move-result-object v8

    .line 560
    .local v8, "next":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    invoke-static {v7}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->access$000(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;)I

    move-result v9

    if-ne v4, v9, :cond_2

    invoke-virtual {v7, v2}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 561
    iget v1, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->modCount:I

    .line 562
    iget v1, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->size:I

    .line 563
    if-ne v6, v7, :cond_1

    aput-object v8, v0, v5

    goto :goto_1

    .line 564
    :cond_1
    invoke-static {v6, v8}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->access$102(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;)Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    .line 565
    :goto_1
    return-object v7

    .line 567
    :cond_2
    move-object v6, v7

    .line 568
    move-object v7, v8

    .line 569
    .end local v8    # "next":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    goto :goto_0

    .line 571
    :cond_3
    return-object v1
.end method

.method resize(I)V
    .locals 5
    .param p1, "newCapacity"    # I

    .line 426
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>;"
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->getTable()[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    move-result-object v0

    .line 427
    .local v0, "oldTable":[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    array-length v1, v0

    .line 428
    .local v1, "oldCapacity":I
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_0

    .line 429
    const v2, 0x7fffffff

    iput v2, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->threshold:I

    .line 430
    return-void

    .line 434
    :cond_0
    new-array v2, p1, [Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    check-cast v2, [Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    .line 435
    .local v2, "newTable":[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    invoke-direct {p0, v0, v2}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->transfer([Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;)V

    .line 436
    iput-object v2, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->table:[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    .line 443
    iget v3, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->size:I

    iget v4, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->threshold:I

    div-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_1

    .line 444
    int-to-float v3, p1

    iget v4, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->loadFactor:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->threshold:I

    goto :goto_0

    .line 446
    :cond_1
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->expungeStaleEntries()V

    .line 447
    invoke-direct {p0, v2, v0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->transfer([Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;)V

    .line 448
    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->table:[Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    .line 450
    :goto_0
    return-void
.end method

.method public size()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 310
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>;"
    iget v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 311
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->expungeStaleEntries()V

    .line 312
    iget v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->size:I

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 849
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->our_values:Ljava/util/Collection;

    .line 850
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Values;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Values;-><init>(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$1;)V

    iput-object v1, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->our_values:Ljava/util/Collection;

    :goto_0
    return-object v1
.end method
