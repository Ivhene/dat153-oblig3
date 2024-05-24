.class abstract Lorg/checkerframework/com/google/common/collect/Maps$ViewCachingAbstractMap;
.super Ljava/util/AbstractMap;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ViewCachingAbstractMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field private transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3481
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$ViewCachingAbstractMap;, "Lorg/checkerframework/com/google/common/collect/Maps$ViewCachingAbstractMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method abstract createEntrySet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end method

.method createKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 3505
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$ViewCachingAbstractMap;, "Lorg/checkerframework/com/google/common/collect/Maps$ViewCachingAbstractMap<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$KeySet;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/Maps$KeySet;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method createValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 3517
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$ViewCachingAbstractMap;, "Lorg/checkerframework/com/google/common/collect/Maps$ViewCachingAbstractMap<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$Values;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/Maps$Values;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 3492
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$ViewCachingAbstractMap;, "Lorg/checkerframework/com/google/common/collect/Maps$ViewCachingAbstractMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$ViewCachingAbstractMap;->entrySet:Ljava/util/Set;

    .line 3493
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$ViewCachingAbstractMap;->createEntrySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/Maps$ViewCachingAbstractMap;->entrySet:Ljava/util/Set;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 3500
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$ViewCachingAbstractMap;, "Lorg/checkerframework/com/google/common/collect/Maps$ViewCachingAbstractMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$ViewCachingAbstractMap;->keySet:Ljava/util/Set;

    .line 3501
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$ViewCachingAbstractMap;->createKeySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/Maps$ViewCachingAbstractMap;->keySet:Ljava/util/Set;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 3512
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$ViewCachingAbstractMap;, "Lorg/checkerframework/com/google/common/collect/Maps$ViewCachingAbstractMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$ViewCachingAbstractMap;->values:Ljava/util/Collection;

    .line 3513
    .local v0, "result":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$ViewCachingAbstractMap;->createValues()Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/Maps$ViewCachingAbstractMap;->values:Ljava/util/Collection;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method
