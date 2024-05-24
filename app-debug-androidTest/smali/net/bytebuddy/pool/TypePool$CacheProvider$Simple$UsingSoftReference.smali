.class public Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple$UsingSoftReference;
.super Ljava/lang/Object;
.source "TypePool.java"

# interfaces
.implements Lnet/bytebuddy/pool/TypePool$CacheProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsingSoftReference"
.end annotation


# instance fields
.field private final delegate:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/ref/SoftReference<",
            "Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ljava/lang/ref/SoftReference;

    new-instance v2, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;

    invoke-direct {v2}, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple$UsingSoftReference;->delegate:Ljava/util/concurrent/atomic/AtomicReference;

    .line 317
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 353
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple$UsingSoftReference;->delegate:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/pool/TypePool$CacheProvider;

    .line 354
    .local v0, "provider":Lnet/bytebuddy/pool/TypePool$CacheProvider;
    if-eqz v0, :cond_0

    .line 355
    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$CacheProvider;->clear()V

    .line 357
    :cond_0
    return-void
.end method

.method public find(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 323
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple$UsingSoftReference;->delegate:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/pool/TypePool$CacheProvider;

    .line 324
    .local v0, "provider":Lnet/bytebuddy/pool/TypePool$CacheProvider;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 326
    :cond_0
    invoke-interface {v0, p1}, Lnet/bytebuddy/pool/TypePool$CacheProvider;->find(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v1

    .line 324
    :goto_0
    return-object v1
.end method

.method public register(Ljava/lang/String;Lnet/bytebuddy/pool/TypePool$Resolution;)Lnet/bytebuddy/pool/TypePool$Resolution;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resolution"    # Lnet/bytebuddy/pool/TypePool$Resolution;

    .line 333
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple$UsingSoftReference;->delegate:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 334
    .local v0, "reference":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;>;"
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;

    .line 335
    .local v1, "provider":Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;
    if-nez v1, :cond_1

    .line 336
    new-instance v2, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;

    invoke-direct {v2}, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;-><init>()V

    move-object v1, v2

    .line 337
    :goto_0
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple$UsingSoftReference;->delegate:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v0, v3}, Lcom/google/common/util/concurrent/ExecutionSequencer$2$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 338
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple$UsingSoftReference;->delegate:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 339
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;

    .line 340
    .local v2, "previous":Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;
    if-eqz v2, :cond_0

    .line 341
    move-object v1, v2

    .line 342
    goto :goto_1

    .line 344
    .end local v2    # "previous":Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;
    :cond_0
    goto :goto_0

    .line 346
    :cond_1
    :goto_1
    invoke-virtual {v1, p1, p2}, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;->register(Ljava/lang/String;Lnet/bytebuddy/pool/TypePool$Resolution;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v2

    return-object v2
.end method
