.class final Lorg/checkerframework/com/google/common/collect/RegularImmutableMap$KeySet;
.super Lorg/checkerframework/com/google/common/collect/IndexedImmutableSet;
.source "RegularImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/collect/RegularImmutableMap$KeySet$SerializedForm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/IndexedImmutableSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private final map:Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/RegularImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/RegularImmutableMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 213
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableMap$KeySet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableMap$KeySet<TK;TV;>;"
    .local p1, "map":Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableMap<TK;TV;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/IndexedImmutableSet;-><init>()V

    .line 214
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap$KeySet;->map:Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;

    .line 215
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 224
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableMap$KeySet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableMap$KeySet<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap$KeySet;->map:Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 219
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableMap$KeySet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableMap$KeySet<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap$KeySet;->map:Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;->entries:[Ljava/util/Map$Entry;

    aget-object v0, v0, p1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .line 229
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableMap$KeySet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableMap$KeySet<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .line 234
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableMap$KeySet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableMap$KeySet<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap$KeySet;->map:Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;->size()I

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .line 240
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableMap$KeySet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableMap$KeySet<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap$KeySet$SerializedForm;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap$KeySet;->map:Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap$KeySet$SerializedForm;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableMap;)V

    return-object v0
.end method
