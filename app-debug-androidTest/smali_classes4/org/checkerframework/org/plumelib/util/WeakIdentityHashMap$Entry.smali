.class Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;
.super Ljava/lang/ref/WeakReference;
.source "WeakIdentityHashMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference<",
        "TK;>;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final hash:I

.field private next:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;ILorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;)V
    .locals 0
    .param p4, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;I",
            "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 626
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TK;>;"
    .local p5, "next":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    invoke-direct {p0, p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 627
    iput-object p2, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->value:Ljava/lang/Object;

    .line 628
    iput p4, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->hash:I

    .line 629
    iput-object p5, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->next:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    .line 630
    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;)I
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    .line 619
    iget v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->hash:I

    return v0
.end method

.method static synthetic access$100(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;)Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    .line 619
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->next:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    return-object v0
.end method

.method static synthetic access$102(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;)Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;
    .locals 0
    .param p0, "x0"    # Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;
    .param p1, "x1"    # Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    .line 619
    iput-object p1, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->next:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    return-object p1
.end method

.method static synthetic access$200(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    .line 619
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 619
    iput-object p1, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->value:Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 655
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 656
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 657
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 658
    .local v2, "k1":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 659
    .local v3, "k2":Ljava/lang/Object;
    invoke-static {v2, v3}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 660
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 661
    .local v4, "v1":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 662
    .local v5, "v2":Ljava/lang/Object;
    if-eq v4, v5, :cond_1

    if-eqz v4, :cond_2

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    const/4 v1, 0x1

    return v1

    .line 664
    .end local v4    # "v1":Ljava/lang/Object;
    .end local v5    # "v2":Ljava/lang/Object;
    :cond_2
    return v1
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

    .line 635
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->access$300(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    .line 641
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 4
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 671
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 672
    .local v0, "k":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 673
    .local v1, "v":Ljava/lang/Object;
    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->hasher(Ljava/lang/Object;)I

    move-result v3

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v2, v3

    return v2
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 646
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->value:Ljava/lang/Object;

    .line 647
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->value:Ljava/lang/Object;

    .line 648
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 679
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
