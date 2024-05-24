.class Lorg/checkerframework/com/google/common/collect/Maps$UnmodifiableBiMap;
.super Lorg/checkerframework/com/google/common/collect/ForwardingMap;
.source "Maps.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/collect/BiMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableBiMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/ForwardingMap<",
        "TK;TV;>;",
        "Lorg/checkerframework/com/google/common/collect/BiMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final delegate:Lorg/checkerframework/com/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/BiMap<",
            "+TK;+TV;>;"
        }
    .end annotation
.end field

.field inverse:Lorg/checkerframework/com/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/BiMap<",
            "TV;TK;>;"
        }
    .end annotation
.end field

.field final unmodifiableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field transient values:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/BiMap;Lorg/checkerframework/com/google/common/collect/BiMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/BiMap<",
            "+TK;+TV;>;",
            "Lorg/checkerframework/com/google/common/collect/BiMap<",
            "TV;TK;>;)V"
        }
    .end annotation

    .line 1600
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$UnmodifiableBiMap;, "Lorg/checkerframework/com/google/common/collect/Maps$UnmodifiableBiMap<TK;TV;>;"
    .local p1, "delegate":Lorg/checkerframework/com/google/common/collect/BiMap;, "Lorg/checkerframework/com/google/common/collect/BiMap<+TK;+TV;>;"
    .local p2, "inverse":Lorg/checkerframework/com/google/common/collect/BiMap;, "Lorg/checkerframework/com/google/common/collect/BiMap<TV;TK;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingMap;-><init>()V

    .line 1601
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$UnmodifiableBiMap;->unmodifiableMap:Ljava/util/Map;

    .line 1602
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Maps$UnmodifiableBiMap;->delegate:Lorg/checkerframework/com/google/common/collect/BiMap;

    .line 1603
    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/Maps$UnmodifiableBiMap;->inverse:Lorg/checkerframework/com/google/common/collect/BiMap;

    .line 1604
    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 1593
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$UnmodifiableBiMap;, "Lorg/checkerframework/com/google/common/collect/Maps$UnmodifiableBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$UnmodifiableBiMap;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1608
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$UnmodifiableBiMap;, "Lorg/checkerframework/com/google/common/collect/Maps$UnmodifiableBiMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$UnmodifiableBiMap;->unmodifiableMap:Ljava/util/Map;

    return-object v0
.end method

.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1613
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$UnmodifiableBiMap;, "Lorg/checkerframework/com/google/common/collect/Maps$UnmodifiableBiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public inverse()Lorg/checkerframework/com/google/common/collect/BiMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/BiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 1618
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$UnmodifiableBiMap;, "Lorg/checkerframework/com/google/common/collect/Maps$UnmodifiableBiMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$UnmodifiableBiMap;->inverse:Lorg/checkerframework/com/google/common/collect/BiMap;

    .line 1619
    .local v0, "result":Lorg/checkerframework/com/google/common/collect/BiMap;, "Lorg/checkerframework/com/google/common/collect/BiMap<TV;TK;>;"
    if-nez v0, :cond_0

    new-instance v1, Lorg/checkerframework/com/google/common/collect/Maps$UnmodifiableBiMap;

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Maps$UnmodifiableBiMap;->delegate:Lorg/checkerframework/com/google/common/collect/BiMap;

    .line 1620
    invoke-interface {v2}, Lorg/checkerframework/com/google/common/collect/BiMap;->inverse()Lorg/checkerframework/com/google/common/collect/BiMap;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lorg/checkerframework/com/google/common/collect/Maps$UnmodifiableBiMap;-><init>(Lorg/checkerframework/com/google/common/collect/BiMap;Lorg/checkerframework/com/google/common/collect/BiMap;)V

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/Maps$UnmodifiableBiMap;->inverse:Lorg/checkerframework/com/google/common/collect/BiMap;

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 1619
    :goto_0
    return-object v1
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 1593
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$UnmodifiableBiMap;, "Lorg/checkerframework/com/google/common/collect/Maps$UnmodifiableBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$UnmodifiableBiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 1626
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$UnmodifiableBiMap;, "Lorg/checkerframework/com/google/common/collect/Maps$UnmodifiableBiMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$UnmodifiableBiMap;->values:Ljava/util/Set;

    .line 1627
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Maps$UnmodifiableBiMap;->delegate:Lorg/checkerframework/com/google/common/collect/BiMap;

    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/BiMap;->values()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/Maps$UnmodifiableBiMap;->values:Ljava/util/Set;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method
