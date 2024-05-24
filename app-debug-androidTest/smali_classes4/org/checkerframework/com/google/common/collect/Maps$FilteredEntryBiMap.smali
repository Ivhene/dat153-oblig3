.class final Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap;
.super Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap;
.source "Maps.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/collect/BiMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FilteredEntryBiMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap<",
        "TK;TV;>;",
        "Lorg/checkerframework/com/google/common/collect/BiMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final inverse:Lorg/checkerframework/com/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/BiMap<",
            "TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/BiMap;Lorg/checkerframework/com/google/common/base/Predicate;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/BiMap<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 3205
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap;, "Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap<TK;TV;>;"
    .local p1, "delegate":Lorg/checkerframework/com/google/common/collect/BiMap;, "Lorg/checkerframework/com/google/common/collect/BiMap<TK;TV;>;"
    .local p2, "predicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap;-><init>(Ljava/util/Map;Lorg/checkerframework/com/google/common/base/Predicate;)V

    .line 3206
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap;

    .line 3207
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/collect/BiMap;->inverse()Lorg/checkerframework/com/google/common/collect/BiMap;

    move-result-object v1

    invoke-static {p2}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap;->inversePredicate(Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap;-><init>(Lorg/checkerframework/com/google/common/collect/BiMap;Lorg/checkerframework/com/google/common/base/Predicate;Lorg/checkerframework/com/google/common/collect/BiMap;)V

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap;->inverse:Lorg/checkerframework/com/google/common/collect/BiMap;

    .line 3208
    return-void
.end method

.method private constructor <init>(Lorg/checkerframework/com/google/common/collect/BiMap;Lorg/checkerframework/com/google/common/base/Predicate;Lorg/checkerframework/com/google/common/collect/BiMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/BiMap<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;",
            "Lorg/checkerframework/com/google/common/collect/BiMap<",
            "TV;TK;>;)V"
        }
    .end annotation

    .line 3212
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap;, "Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap<TK;TV;>;"
    .local p1, "delegate":Lorg/checkerframework/com/google/common/collect/BiMap;, "Lorg/checkerframework/com/google/common/collect/BiMap<TK;TV;>;"
    .local p2, "predicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    .local p3, "inverse":Lorg/checkerframework/com/google/common/collect/BiMap;, "Lorg/checkerframework/com/google/common/collect/BiMap<TV;TK;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap;-><init>(Ljava/util/Map;Lorg/checkerframework/com/google/common/base/Predicate;)V

    .line 3213
    iput-object p3, p0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap;->inverse:Lorg/checkerframework/com/google/common/collect/BiMap;

    .line 3214
    return-void
.end method

.method private static inversePredicate(Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;>;"
        }
    .end annotation

    .line 3196
    .local p0, "forwardPredicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap$1;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap$1;-><init>(Lorg/checkerframework/com/google/common/base/Predicate;)V

    return-object v0
.end method


# virtual methods
.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 3222
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap;, "Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 3223
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap;->unfiltered()Lorg/checkerframework/com/google/common/collect/BiMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/com/google/common/collect/BiMap;->forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public inverse()Lorg/checkerframework/com/google/common/collect/BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/BiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 3238
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap;, "Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap;->inverse:Lorg/checkerframework/com/google/common/collect/BiMap;

    return-object v0
.end method

.method synthetic lambda$replaceAll$0$org-checkerframework-com-google-common-collect-Maps$FilteredEntryBiMap(Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "function"    # Ljava/util/function/BiFunction;
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;

    .line 3231
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap;, "Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap;->predicate:Lorg/checkerframework/com/google/common/base/Predicate;

    invoke-static {p2, p3}, Lorg/checkerframework/com/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/checkerframework/com/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3232
    invoke-interface {p1, p2, p3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p3

    .line 3231
    :goto_0
    return-object v0
.end method

.method public replaceAll(Ljava/util/function/BiFunction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .line 3228
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap;, "Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap;->unfiltered()Lorg/checkerframework/com/google/common/collect/BiMap;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap;Ljava/util/function/BiFunction;)V

    .line 3229
    invoke-interface {v0, v1}, Lorg/checkerframework/com/google/common/collect/BiMap;->replaceAll(Ljava/util/function/BiFunction;)V

    .line 3234
    return-void
.end method

.method unfiltered()Lorg/checkerframework/com/google/common/collect/BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/BiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3217
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap;, "Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap;->unfiltered:Ljava/util/Map;

    check-cast v0, Lorg/checkerframework/com/google/common/collect/BiMap;

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 3190
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap;, "Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 3243
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap;, "Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap;->inverse:Lorg/checkerframework/com/google/common/collect/BiMap;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/BiMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
