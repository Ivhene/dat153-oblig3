.class final Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap$1;
.super Ljava/lang/Object;
.source "Maps.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap;->inversePredicate(Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/base/Predicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/base/Predicate<",
        "Ljava/util/Map$Entry<",
        "TV;TK;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$forwardPredicate:Lorg/checkerframework/com/google/common/base/Predicate;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/base/Predicate;)V
    .locals 0

    .line 3196
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap$1;->val$forwardPredicate:Lorg/checkerframework/com/google/common/base/Predicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 3196
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap$1;->apply(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

.method public apply(Ljava/util/Map$Entry;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;)Z"
        }
    .end annotation

    .line 3199
    .local p1, "input":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TV;TK;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap$1;->val$forwardPredicate:Lorg/checkerframework/com/google/common/base/Predicate;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/checkerframework/com/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
