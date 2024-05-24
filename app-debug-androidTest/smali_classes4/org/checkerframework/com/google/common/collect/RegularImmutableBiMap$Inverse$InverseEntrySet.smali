.class final Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;
.super Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet;
.source "RegularImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InverseEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet<",
        "TV;TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse;)V
    .locals 0
    .param p1, "this$1"    # Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse;

    .line 236
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap<TK;TV;>.Inverse.InverseEntrySet;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;->this$1:Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method createAsList()Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;>;"
        }
    .end annotation

    .line 264
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap<TK;TV;>.Inverse.InverseEntrySet;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet$1;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet$1;-><init>(Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;)V

    return-object v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;>;)V"
        }
    .end annotation

    .line 259
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap<TK;TV;>.Inverse.InverseEntrySet;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TV;TK;>;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;->asList()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->forEach(Ljava/util/function/Consumer;)V

    .line 260
    return-void
.end method

.method public hashCode()I
    .locals 1

    .line 249
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap<TK;TV;>.Inverse.InverseEntrySet;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;->this$1:Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;->access$300(Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;)I

    move-result v0

    return v0
.end method

.method isHashCodeFast()Z
    .locals 1

    .line 244
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap<TK;TV;>.Inverse.InverseEntrySet;"
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 236
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap<TK;TV;>.Inverse.InverseEntrySet;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator<",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;>;"
        }
    .end annotation

    .line 254
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap<TK;TV;>.Inverse.InverseEntrySet;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;->asList()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method map()Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 239
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap<TK;TV;>.Inverse.InverseEntrySet;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;->this$1:Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse;

    return-object v0
.end method
