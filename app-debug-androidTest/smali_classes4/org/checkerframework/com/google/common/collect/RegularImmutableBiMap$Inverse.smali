.class final Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse;
.super Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;
.source "RegularImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Inverse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/ImmutableBiMap<",
        "TV;TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;


# direct methods
.method private constructor <init>(Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;)V
    .locals 0

    .line 192
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap<TK;TV;>.Inverse;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;
    .param p2, "x1"    # Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$1;

    .line 192
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap<TK;TV;>.Inverse;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse;-><init>(Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;)V

    return-void
.end method

.method static synthetic lambda$forEach$0(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "action"    # Ljava/util/function/BiConsumer;
    .param p1, "k"    # Ljava/lang/Object;
    .param p2, "v"    # Ljava/lang/Object;

    .line 207
    invoke-interface {p0, p2, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method createEntrySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;>;"
        }
    .end annotation

    .line 233
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap<TK;TV;>.Inverse;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;-><init>(Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse;)V

    return-object v0
.end method

.method createKeySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "TV;>;"
        }
    .end annotation

    .line 228
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap<TK;TV;>.Inverse;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableMapKeySet;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMapKeySet;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableMap;)V

    return-object v0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TV;-TK;>;)V"
        }
    .end annotation

    .line 206
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap<TK;TV;>.Inverse;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TV;-TK;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;

    new-instance v1, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/BiConsumer;)V

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 208
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .line 212
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap<TK;TV;>.Inverse;"
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;

    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;->access$100(Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;)[Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 215
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/Hashing;->smear(I)I

    move-result v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;

    invoke-static {v2}, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;->access$200(Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;)I

    move-result v2

    and-int/2addr v1, v2

    .line 216
    .local v1, "bucket":I
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;

    invoke-static {v2}, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;->access$100(Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;)[Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;

    move-result-object v2

    aget-object v2, v2, v1

    .line 217
    .local v2, "entry":Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    :goto_0
    if-eqz v2, :cond_2

    .line 219
    invoke-virtual {v2}, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 220
    invoke-virtual {v2}, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 218
    :cond_1
    invoke-virtual {v2}, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;->getNextInValueBucket()Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;

    move-result-object v2

    goto :goto_0

    .line 223
    .end local v2    # "entry":Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    :cond_2
    return-object v0

    .line 213
    .end local v1    # "bucket":I
    :cond_3
    :goto_1
    return-object v0
.end method

.method public bridge synthetic inverse()Lorg/checkerframework/com/google/common/collect/BiMap;
    .locals 1

    .line 192
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap<TK;TV;>.Inverse;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse;->inverse()Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public inverse()Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 201
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap<TK;TV;>.Inverse;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .line 281
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap<TK;TV;>.Inverse;"
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .line 196
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap<TK;TV;>.Inverse;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse;->inverse()Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;->size()I

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .line 286
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap<TK;TV;>.Inverse;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$InverseSerializedForm;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$InverseSerializedForm;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;)V

    return-object v0
.end method