.class final Lorg/checkerframework/org/plumelib/util/WeakHasherMap$Entry;
.super Ljava/lang/Object;
.source "WeakHasherMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/plumelib/util/WeakHasherMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private ent:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<",
            "TK;TV;>.WeakKey;TV;>;"
        }
    .end annotation
.end field

.field private key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;


# direct methods
.method constructor <init>(Lorg/checkerframework/org/plumelib/util/WeakHasherMap;Ljava/util/Map$Entry;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<",
            "TK;TV;>.WeakKey;TV;>;TK;)V"
        }
    .end annotation

    .line 357
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakHasherMap$Entry;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>.Entry<TK;TV;>;"
    .local p2, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>.WeakKey;TV;>;"
    .local p3, "key":Ljava/lang/Object;, "TK;"
    iput-object p1, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$Entry;->this$0:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    iput-object p2, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$Entry;->ent:Ljava/util/Map$Entry;

    .line 359
    iput-object p3, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$Entry;->key:Ljava/lang/Object;

    .line 360
    return-void
.end method

.method private keyvalEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)Z"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 381
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakHasherMap$Entry;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>.Entry<TK;TV;>;"
    .local p1, "o1":Ljava/lang/Object;, "TK;"
    .local p2, "o2":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$Entry;->this$0:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    invoke-static {v0, p1, p2}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->access$300(Lorg/checkerframework/org/plumelib/util/WeakHasherMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method private valEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;)Z"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 386
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakHasherMap$Entry;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>.Entry<TK;TV;>;"
    .local p1, "o1":Ljava/lang/Object;, "TV;"
    .local p2, "o2":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method


# virtual methods
.method public equals(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 394
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakHasherMap$Entry;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>.Entry<TK;TV;>;"
    .local p1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$Entry;->key:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$Entry;->keyvalEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$Entry;->valEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 365
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakHasherMap$Entry;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>.Entry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$Entry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 371
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakHasherMap$Entry;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>.Entry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$Entry;->ent:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 401
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakHasherMap$Entry;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>.Entry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$Entry;->key:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$Entry;->this$0:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    invoke-static {v2, v0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->access$200(Lorg/checkerframework/org/plumelib/util/WeakHasherMap;Ljava/lang/Object;)I

    move-result v0

    .line 402
    :goto_0
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    .local v3, "v":Ljava/lang/Object;, "TV;"
    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    .line 401
    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 376
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakHasherMap$Entry;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>.Entry<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$Entry;->ent:Ljava/util/Map$Entry;

    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
