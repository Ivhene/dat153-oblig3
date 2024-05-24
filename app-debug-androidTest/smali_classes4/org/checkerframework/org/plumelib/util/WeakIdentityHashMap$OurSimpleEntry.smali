.class Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$OurSimpleEntry;
.super Ljava/lang/Object;
.source "WeakIdentityHashMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OurSimpleEntry"
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
.field key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 963
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$OurSimpleEntry;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$OurSimpleEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 964
    iput-object p1, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$OurSimpleEntry;->key:Ljava/lang/Object;

    .line 965
    iput-object p2, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$OurSimpleEntry;->value:Ljava/lang/Object;

    .line 966
    return-void
.end method

.method public constructor <init>(Ljava/util/Map$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 968
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$OurSimpleEntry;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$OurSimpleEntry<TK;TV;>;"
    .local p1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 969
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$OurSimpleEntry;->key:Ljava/lang/Object;

    .line 970
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$OurSimpleEntry;->value:Ljava/lang/Object;

    .line 971
    return-void
.end method

.method private static eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;

    .line 1013
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 995
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$OurSimpleEntry;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$OurSimpleEntry<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 996
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 997
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    iget-object v2, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$OurSimpleEntry;->key:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$OurSimpleEntry;->value:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$OurSimpleEntry;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
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

    .line 976
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$OurSimpleEntry;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$OurSimpleEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$OurSimpleEntry;->key:Ljava/lang/Object;

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

    .line 982
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$OurSimpleEntry;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$OurSimpleEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$OurSimpleEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1003
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$OurSimpleEntry;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$OurSimpleEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$OurSimpleEntry;->key:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$OurSimpleEntry;->value:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 987
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$OurSimpleEntry;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$OurSimpleEntry<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$OurSimpleEntry;->value:Ljava/lang/Object;

    .line 988
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$OurSimpleEntry;->value:Ljava/lang/Object;

    .line 989
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 1009
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$OurSimpleEntry;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$OurSimpleEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$OurSimpleEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$OurSimpleEntry;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
