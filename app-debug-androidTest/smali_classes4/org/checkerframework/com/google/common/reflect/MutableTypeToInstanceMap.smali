.class public final Lorg/checkerframework/com/google/common/reflect/MutableTypeToInstanceMap;
.super Lorg/checkerframework/com/google/common/collect/ForwardingMap;
.source "MutableTypeToInstanceMap.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/reflect/TypeToInstanceMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/reflect/MutableTypeToInstanceMap$UnmodifiableEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/ForwardingMap<",
        "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
        "+TB;>;TB;>;",
        "Lorg/checkerframework/com/google/common/reflect/TypeToInstanceMap<",
        "TB;>;"
    }
.end annotation


# instance fields
.field private final backingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "+TB;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/MutableTypeToInstanceMap;, "Lorg/checkerframework/com/google/common/reflect/MutableTypeToInstanceMap<TB;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingMap;-><init>()V

    .line 42
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/reflect/MutableTypeToInstanceMap;->backingMap:Ljava/util/Map;

    return-void
.end method

.method private trustedGet(Lorg/checkerframework/com/google/common/reflect/TypeToken;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 108
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/MutableTypeToInstanceMap;, "Lorg/checkerframework/com/google/common/reflect/MutableTypeToInstanceMap<TB;>;"
    .local p1, "type":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/MutableTypeToInstanceMap;->backingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private trustedPut(Lorg/checkerframework/com/google/common/reflect/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 103
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/MutableTypeToInstanceMap;, "Lorg/checkerframework/com/google/common/reflect/MutableTypeToInstanceMap<TB;>;"
    .local p1, "type":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/MutableTypeToInstanceMap;->backingMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 38
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/MutableTypeToInstanceMap;, "Lorg/checkerframework/com/google/common/reflect/MutableTypeToInstanceMap<TB;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/MutableTypeToInstanceMap;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "+TB;>;TB;>;"
        }
    .end annotation

    .line 98
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/MutableTypeToInstanceMap;, "Lorg/checkerframework/com/google/common/reflect/MutableTypeToInstanceMap<TB;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/MutableTypeToInstanceMap;->backingMap:Ljava/util/Map;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "+TB;>;TB;>;>;"
        }
    .end annotation

    .line 93
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/MutableTypeToInstanceMap;, "Lorg/checkerframework/com/google/common/reflect/MutableTypeToInstanceMap<TB;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/reflect/MutableTypeToInstanceMap$UnmodifiableEntry;->transformEntries(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 46
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/MutableTypeToInstanceMap;, "Lorg/checkerframework/com/google/common/reflect/MutableTypeToInstanceMap<TB;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/reflect/MutableTypeToInstanceMap;->trustedGet(Lorg/checkerframework/com/google/common/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Lorg/checkerframework/com/google/common/reflect/TypeToken;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 51
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/MutableTypeToInstanceMap;, "Lorg/checkerframework/com/google/common/reflect/MutableTypeToInstanceMap<TB;>;"
    .local p1, "type":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->rejectTypeVariables()Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/reflect/MutableTypeToInstanceMap;->trustedGet(Lorg/checkerframework/com/google/common/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 38
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/MutableTypeToInstanceMap;, "Lorg/checkerframework/com/google/common/reflect/MutableTypeToInstanceMap<TB;>;"
    check-cast p1, Lorg/checkerframework/com/google/common/reflect/TypeToken;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/reflect/MutableTypeToInstanceMap;->put(Lorg/checkerframework/com/google/common/reflect/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Lorg/checkerframework/com/google/common/reflect/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "+TB;>;TB;)TB;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 76
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/MutableTypeToInstanceMap;, "Lorg/checkerframework/com/google/common/reflect/MutableTypeToInstanceMap<TB;>;"
    .local p1, "key":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<+TB;>;"
    .local p2, "value":Ljava/lang/Object;, "TB;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please use putInstance() instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "+TB;>;+TB;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 88
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/MutableTypeToInstanceMap;, "Lorg/checkerframework/com/google/common/reflect/MutableTypeToInstanceMap<TB;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+Lorg/checkerframework/com/google/common/reflect/TypeToken<+TB;>;+TB;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please use putInstance() instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putInstance(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 57
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/MutableTypeToInstanceMap;, "Lorg/checkerframework/com/google/common/reflect/MutableTypeToInstanceMap<TB;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/google/common/reflect/MutableTypeToInstanceMap;->trustedPut(Lorg/checkerframework/com/google/common/reflect/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putInstance(Lorg/checkerframework/com/google/common/reflect/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 63
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/MutableTypeToInstanceMap;, "Lorg/checkerframework/com/google/common/reflect/MutableTypeToInstanceMap<TB;>;"
    .local p1, "type":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->rejectTypeVariables()Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/google/common/reflect/MutableTypeToInstanceMap;->trustedPut(Lorg/checkerframework/com/google/common/reflect/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
