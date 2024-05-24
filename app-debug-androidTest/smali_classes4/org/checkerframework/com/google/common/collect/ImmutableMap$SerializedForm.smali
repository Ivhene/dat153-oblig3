.class Lorg/checkerframework/com/google/common/collect/ImmutableMap$SerializedForm;
.super Ljava/lang/Object;
.source "ImmutableMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SerializedForm"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final keys:[Ljava/lang/Object;

.field private final values:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "**>;)V"
        }
    .end annotation

    .line 896
    .local p1, "map":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<**>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 897
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$SerializedForm;->keys:[Ljava/lang/Object;

    .line 898
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$SerializedForm;->values:[Ljava/lang/Object;

    .line 899
    const/4 v0, 0x0

    .line 900
    .local v0, "i":I
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->entrySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 901
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$SerializedForm;->keys:[Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    .line 902
    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$SerializedForm;->values:[Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    .line 903
    nop

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    add-int/lit8 v0, v0, 0x1

    .line 904
    goto :goto_0

    .line 905
    :cond_0
    return-void
.end method


# virtual methods
.method createMap(Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 913
    .local p1, "builder":Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$SerializedForm;->keys:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 914
    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$SerializedForm;->values:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    .line 913
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 916
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method readResolve()Ljava/lang/Object;
    .locals 2

    .line 908
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$SerializedForm;->keys:[Ljava/lang/Object;

    array-length v1, v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;-><init>(I)V

    .line 909
    .local v0, "builder":Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$SerializedForm;->createMap(Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
