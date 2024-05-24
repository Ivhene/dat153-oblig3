.class final Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$SerializationProxy;
.super Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SerializationProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3L


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

    .line 2925
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$SerializationProxy;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$SerializationProxy<TK;TV;>;"
    .local p3, "keyEquivalence":Lorg/checkerframework/com/google/common/base/Equivalence;, "Lorg/checkerframework/com/google/common/base/Equivalence<Ljava/lang/Object;>;"
    .local p4, "valueEquivalence":Lorg/checkerframework/com/google/common/base/Equivalence;, "Lorg/checkerframework/com/google/common/base/Equivalence<Ljava/lang/Object;>;"
    .local p6, "delegate":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<TK;TV;>;"
    invoke-direct/range {p0 .. p6}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;-><init>(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;Lorg/checkerframework/com/google/common/base/Equivalence;Lorg/checkerframework/com/google/common/base/Equivalence;ILjava/util/concurrent/ConcurrentMap;)V

    .line 2927
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 2935
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$SerializationProxy;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$SerializationProxy<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2936
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$SerializationProxy;->readMapMaker(Ljava/io/ObjectInputStream;)Lorg/checkerframework/com/google/common/collect/MapMaker;

    move-result-object v0

    .line 2937
    .local v0, "mapMaker":Lorg/checkerframework/com/google/common/collect/MapMaker;
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$SerializationProxy;->delegate:Ljava/util/concurrent/ConcurrentMap;

    .line 2938
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$SerializationProxy;->readEntries(Ljava/io/ObjectInputStream;)V

    .line 2939
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 2942
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$SerializationProxy;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$SerializationProxy<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$SerializationProxy;->delegate:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2930
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$SerializationProxy;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$SerializationProxy<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2931
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$SerializationProxy;->writeMapTo(Ljava/io/ObjectOutputStream;)V

    .line 2932
    return-void
.end method
