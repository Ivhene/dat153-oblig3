.class Lorg/checkerframework/com/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;
.super Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;->entryIterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
        "TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/checkerframework/com/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;

.field final synthetic val$backingIterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;Ljava/util/Iterator;)V
    .locals 0
    .param p1, "this$1"    # Lorg/checkerframework/com/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;

    .line 841
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;->this$1:Lorg/checkerframework/com/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;

    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;->val$backingIterator:Ljava/util/Iterator;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 844
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;->val$backingIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 841
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "TV;>;>;"
        }
    .end annotation

    .line 849
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;->val$backingIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 850
    .local v0, "backingEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    new-instance v1, Lorg/checkerframework/com/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;

    invoke-direct {v1, p0, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;Ljava/util/Map$Entry;)V

    return-object v1
.end method
