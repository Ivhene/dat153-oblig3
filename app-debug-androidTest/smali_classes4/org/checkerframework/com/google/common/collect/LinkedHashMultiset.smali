.class public final Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset;
.super Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultiset;
.source "LinkedHashMultiset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultiset<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 74
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset;, "Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset<TE;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultiset;-><init>(Ljava/util/Map;)V

    .line 75
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "distinctElements"    # I

    .line 78
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset;, "Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset<TE;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/Maps;->newLinkedHashMapWithExpectedSize(I)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultiset;-><init>(Ljava/util/Map;)V

    .line 79
    return-void
.end method

.method public static create()Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 46
    new-instance v0, Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset;-><init>()V

    return-object v0
.end method

.method public static create(I)Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset;
    .locals 1
    .param p0, "distinctElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 57
    new-instance v0, Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset;-><init>(I)V

    return-object v0
.end method

.method public static create(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 68
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/Multisets;->inferDistinctElements(Ljava/lang/Iterable;)I

    move-result v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset;->create(I)Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset;

    move-result-object v0

    .line 69
    .local v0, "multiset":Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset;, "Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset<TE;>;"
    invoke-static {v0, p0}, Lorg/checkerframework/com/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 70
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 93
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset;, "Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 94
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/Serialization;->readCount(Ljava/io/ObjectInputStream;)I

    move-result v0

    .line 95
    .local v0, "distinctElements":I
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0, v1}, Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset;->setBackingMap(Ljava/util/Map;)V

    .line 96
    invoke-static {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/Serialization;->populateMultiset(Lorg/checkerframework/com/google/common/collect/Multiset;Ljava/io/ObjectInputStream;I)V

    .line 97
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset;, "Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 88
    invoke-static {p0, p1}, Lorg/checkerframework/com/google/common/collect/Serialization;->writeMultiset(Lorg/checkerframework/com/google/common/collect/Multiset;Ljava/io/ObjectOutputStream;)V

    .line 89
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;I)I
    .locals 0

    .line 41
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset;, "Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultiset;->add(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic clear()V
    .locals 0

    .line 41
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset;, "Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultiset;->clear()V

    return-void
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 0

    .line 41
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset;, "Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultiset;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic count(Ljava/lang/Object;)I
    .locals 0

    .line 41
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset;, "Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultiset;->count(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 41
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset;, "Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 41
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset;, "Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic forEachEntry(Ljava/util/function/ObjIntConsumer;)V
    .locals 0

    .line 41
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset;, "Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultiset;->forEachEntry(Ljava/util/function/ObjIntConsumer;)V

    return-void
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .line 41
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset;, "Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultiset;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 41
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset;, "Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultiset;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;I)I
    .locals 0

    .line 41
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset;, "Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultiset;->remove(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic setCount(Ljava/lang/Object;I)I
    .locals 0

    .line 41
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset;, "Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultiset;->setCount(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic setCount(Ljava/lang/Object;II)Z
    .locals 0

    .line 41
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset;, "Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultiset;->setCount(Ljava/lang/Object;II)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic size()I
    .locals 1

    .line 41
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset;, "Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultiset;->size()I

    move-result v0

    return v0
.end method
