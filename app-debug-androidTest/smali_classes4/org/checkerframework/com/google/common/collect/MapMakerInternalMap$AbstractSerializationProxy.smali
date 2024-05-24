.class abstract Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;
.super Lorg/checkerframework/com/google/common/collect/ForwardingConcurrentMap;
.source "MapMakerInternalMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractSerializationProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/ForwardingConcurrentMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3L


# instance fields
.field final concurrencyLevel:I

.field transient delegate:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final keyEquivalence:Lorg/checkerframework/com/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final keyStrength:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

.field final valueEquivalence:Lorg/checkerframework/com/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final valueStrength:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;Lorg/checkerframework/com/google/common/base/Equivalence;Lorg/checkerframework/com/google/common/base/Equivalence;ILjava/util/concurrent/ConcurrentMap;)V
    .locals 0
    .param p1, "keyStrength"    # Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;
    .param p2, "valueStrength"    # Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;
    .param p5, "concurrencyLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;",
            "Lorg/checkerframework/com/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/checkerframework/com/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 2864
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy<TK;TV;>;"
    .local p3, "keyEquivalence":Lorg/checkerframework/com/google/common/base/Equivalence;, "Lorg/checkerframework/com/google/common/base/Equivalence<Ljava/lang/Object;>;"
    .local p4, "valueEquivalence":Lorg/checkerframework/com/google/common/base/Equivalence;, "Lorg/checkerframework/com/google/common/base/Equivalence<Ljava/lang/Object;>;"
    .local p6, "delegate":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<TK;TV;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingConcurrentMap;-><init>()V

    .line 2865
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->keyStrength:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    .line 2866
    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->valueStrength:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    .line 2867
    iput-object p3, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->keyEquivalence:Lorg/checkerframework/com/google/common/base/Equivalence;

    .line 2868
    iput-object p4, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->valueEquivalence:Lorg/checkerframework/com/google/common/base/Equivalence;

    .line 2869
    iput p5, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->concurrencyLevel:I

    .line 2870
    iput-object p6, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->delegate:Ljava/util/concurrent/ConcurrentMap;

    .line 2871
    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 2846
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->delegate()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Map;
    .locals 1

    .line 2846
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->delegate()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2875
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->delegate:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method readEntries(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 2901
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy<TK;TV;>;"
    nop

    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 2902
    .local v0, "key":Ljava/lang/Object;, "TK;"
    if-nez v0, :cond_0

    .line 2903
    nop

    .line 2908
    .end local v0    # "key":Ljava/lang/Object;, "TK;"
    return-void

    .line 2905
    .restart local v0    # "key":Ljava/lang/Object;, "TK;"
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 2906
    .local v1, "value":Ljava/lang/Object;, "TV;"
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->delegate:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2907
    .end local v0    # "key":Ljava/lang/Object;, "TK;"
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_0
.end method

.method readMapMaker(Ljava/io/ObjectInputStream;)Lorg/checkerframework/com/google/common/collect/MapMaker;
    .locals 3
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2889
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 2890
    .local v0, "size":I
    new-instance v1, Lorg/checkerframework/com/google/common/collect/MapMaker;

    invoke-direct {v1}, Lorg/checkerframework/com/google/common/collect/MapMaker;-><init>()V

    .line 2891
    invoke-virtual {v1, v0}, Lorg/checkerframework/com/google/common/collect/MapMaker;->initialCapacity(I)Lorg/checkerframework/com/google/common/collect/MapMaker;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->keyStrength:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    .line 2892
    invoke-virtual {v1, v2}, Lorg/checkerframework/com/google/common/collect/MapMaker;->setKeyStrength(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;)Lorg/checkerframework/com/google/common/collect/MapMaker;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->valueStrength:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    .line 2893
    invoke-virtual {v1, v2}, Lorg/checkerframework/com/google/common/collect/MapMaker;->setValueStrength(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;)Lorg/checkerframework/com/google/common/collect/MapMaker;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->keyEquivalence:Lorg/checkerframework/com/google/common/base/Equivalence;

    .line 2894
    invoke-virtual {v1, v2}, Lorg/checkerframework/com/google/common/collect/MapMaker;->keyEquivalence(Lorg/checkerframework/com/google/common/base/Equivalence;)Lorg/checkerframework/com/google/common/collect/MapMaker;

    move-result-object v1

    iget v2, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->concurrencyLevel:I

    .line 2895
    invoke-virtual {v1, v2}, Lorg/checkerframework/com/google/common/collect/MapMaker;->concurrencyLevel(I)Lorg/checkerframework/com/google/common/collect/MapMaker;

    move-result-object v1

    .line 2890
    return-object v1
.end method

.method writeMapTo(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2879
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->delegate:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 2880
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->delegate:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2881
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2882
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2883
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_0

    .line 2884
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2885
    return-void
.end method
