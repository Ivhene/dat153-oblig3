.class Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet$1;
.super Lorg/checkerframework/com/google/common/collect/ImmutableAsList;
.source "RegularImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;->createAsList()Lorg/checkerframework/com/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/ImmutableAsList<",
        "Ljava/util/Map$Entry<",
        "TV;TK;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;)V
    .locals 0
    .param p1, "this$2"    # Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;

    .line 264
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet$1;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet$1;->this$2:Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableAsList;-><init>()V

    return-void
.end method


# virtual methods
.method delegateCollection()Lorg/checkerframework/com/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;>;"
        }
    .end annotation

    .line 273
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet$1;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet$1;->this$2:Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 264
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet$1;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet$1;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet$1;->get(I)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Ljava/util/Map$Entry;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;"
        }
    .end annotation

    .line 267
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet$1;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet$1;->this$2:Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;->this$1:Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;->entries:[Ljava/util/Map$Entry;

    aget-object v0, v0, p1

    .line 268
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    return-object v1
.end method