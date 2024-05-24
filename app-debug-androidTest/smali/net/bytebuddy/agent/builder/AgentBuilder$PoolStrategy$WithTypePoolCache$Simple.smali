.class public Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$WithTypePoolCache$Simple;
.super Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$WithTypePoolCache;
.source "AgentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$WithTypePoolCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Simple"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final cacheProviders:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "-",
            "Ljava/lang/ClassLoader;",
            "Lnet/bytebuddy/pool/TypePool$CacheProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ConcurrentMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap<",
            "-",
            "Ljava/lang/ClassLoader;",
            "Lnet/bytebuddy/pool/TypePool$CacheProvider;",
            ">;)V"
        }
    .end annotation

    .line 3329
    .local p1, "cacheProviders":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<-Ljava/lang/ClassLoader;Lnet/bytebuddy/pool/TypePool$CacheProvider;>;"
    sget-object v0, Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;->FAST:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$WithTypePoolCache$Simple;-><init>(Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;Ljava/util/concurrent/ConcurrentMap;)V

    .line 3330
    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 0
    .param p1, "readerMode"    # Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "-",
            "Ljava/lang/ClassLoader;",
            "Lnet/bytebuddy/pool/TypePool$CacheProvider;",
            ">;)V"
        }
    .end annotation

    .line 3339
    .local p2, "cacheProviders":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<-Ljava/lang/ClassLoader;Lnet/bytebuddy/pool/TypePool$CacheProvider;>;"
    invoke-direct {p0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$WithTypePoolCache;-><init>(Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;)V

    .line 3340
    iput-object p2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$WithTypePoolCache$Simple;->cacheProviders:Ljava/util/concurrent/ConcurrentMap;

    .line 3341
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-super {p0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$WithTypePoolCache;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$WithTypePoolCache$Simple;->cacheProviders:Ljava/util/concurrent/ConcurrentMap;

    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$WithTypePoolCache$Simple;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$WithTypePoolCache$Simple;->cacheProviders:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method protected getBootstrapMarkerLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 3372
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$WithTypePoolCache;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$WithTypePoolCache$Simple;->cacheProviders:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected locate(Ljava/lang/ClassLoader;)Lnet/bytebuddy/pool/TypePool$CacheProvider;
    .locals 2
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .line 3345
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$WithTypePoolCache$Simple;->getBootstrapMarkerLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    move-object p1, v0

    .line 3346
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$WithTypePoolCache$Simple;->cacheProviders:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/pool/TypePool$CacheProvider;

    .line 3347
    .local v0, "cacheProvider":Lnet/bytebuddy/pool/TypePool$CacheProvider;
    :goto_1
    if-nez v0, :cond_2

    .line 3348
    invoke-static {}, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;->withObjectType()Lnet/bytebuddy/pool/TypePool$CacheProvider;

    move-result-object v0

    .line 3349
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$WithTypePoolCache$Simple;->cacheProviders:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/pool/TypePool$CacheProvider;

    .line 3350
    .local v1, "previous":Lnet/bytebuddy/pool/TypePool$CacheProvider;
    if-eqz v1, :cond_1

    .line 3351
    move-object v0, v1

    .line 3353
    .end local v1    # "previous":Lnet/bytebuddy/pool/TypePool$CacheProvider;
    :cond_1
    goto :goto_1

    .line 3354
    :cond_2
    return-object v0
.end method
