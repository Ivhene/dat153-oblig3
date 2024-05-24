.class public Lnet/bytebuddy/pool/TypePool$CacheProvider$Discriminating;
.super Ljava/lang/Object;
.source "TypePool.java"

# interfaces
.implements Lnet/bytebuddy/pool/TypePool$CacheProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$CacheProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Discriminating"
.end annotation


# instance fields
.field private final matched:Lnet/bytebuddy/pool/TypePool$CacheProvider;

.field private final matcher:Lnet/bytebuddy/matcher/ElementMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final unmatched:Lnet/bytebuddy/pool/TypePool$CacheProvider;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/pool/TypePool$CacheProvider;Lnet/bytebuddy/pool/TypePool$CacheProvider;)V
    .locals 0
    .param p2, "matched"    # Lnet/bytebuddy/pool/TypePool$CacheProvider;
    .param p3, "unmatched"    # Lnet/bytebuddy/pool/TypePool$CacheProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "Ljava/lang/String;",
            ">;",
            "Lnet/bytebuddy/pool/TypePool$CacheProvider;",
            "Lnet/bytebuddy/pool/TypePool$CacheProvider;",
            ")V"
        }
    .end annotation

    .line 388
    .local p1, "matcher":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$CacheProvider$Discriminating;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    .line 390
    iput-object p2, p0, Lnet/bytebuddy/pool/TypePool$CacheProvider$Discriminating;->matched:Lnet/bytebuddy/pool/TypePool$CacheProvider;

    .line 391
    iput-object p3, p0, Lnet/bytebuddy/pool/TypePool$CacheProvider$Discriminating;->unmatched:Lnet/bytebuddy/pool/TypePool$CacheProvider;

    .line 392
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 413
    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$CacheProvider$Discriminating;->unmatched:Lnet/bytebuddy/pool/TypePool$CacheProvider;

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$CacheProvider;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$CacheProvider$Discriminating;->matched:Lnet/bytebuddy/pool/TypePool$CacheProvider;

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$CacheProvider;->clear()V

    .line 416
    nop

    .line 417
    return-void

    .line 415
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$CacheProvider$Discriminating;->matched:Lnet/bytebuddy/pool/TypePool$CacheProvider;

    invoke-interface {v1}, Lnet/bytebuddy/pool/TypePool$CacheProvider;->clear()V

    .line 416
    throw v0
.end method

.method public find(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 398
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$CacheProvider$Discriminating;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-interface {v0, p1}, Lnet/bytebuddy/matcher/ElementMatcher;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$CacheProvider$Discriminating;->matched:Lnet/bytebuddy/pool/TypePool$CacheProvider;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$CacheProvider$Discriminating;->unmatched:Lnet/bytebuddy/pool/TypePool$CacheProvider;

    :goto_0
    invoke-interface {v0, p1}, Lnet/bytebuddy/pool/TypePool$CacheProvider;->find(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v0

    return-object v0
.end method

.method public register(Ljava/lang/String;Lnet/bytebuddy/pool/TypePool$Resolution;)Lnet/bytebuddy/pool/TypePool$Resolution;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resolution"    # Lnet/bytebuddy/pool/TypePool$Resolution;

    .line 405
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$CacheProvider$Discriminating;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-interface {v0, p1}, Lnet/bytebuddy/matcher/ElementMatcher;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$CacheProvider$Discriminating;->matched:Lnet/bytebuddy/pool/TypePool$CacheProvider;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$CacheProvider$Discriminating;->unmatched:Lnet/bytebuddy/pool/TypePool$CacheProvider;

    :goto_0
    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/pool/TypePool$CacheProvider;->register(Ljava/lang/String;Lnet/bytebuddy/pool/TypePool$Resolution;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v0

    return-object v0
.end method
