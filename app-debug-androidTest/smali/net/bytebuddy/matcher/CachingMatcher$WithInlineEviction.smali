.class public Lnet/bytebuddy/matcher/CachingMatcher$WithInlineEviction;
.super Lnet/bytebuddy/matcher/CachingMatcher;
.source "CachingMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/matcher/CachingMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WithInlineEviction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/bytebuddy/matcher/CachingMatcher<",
        "TS;>;"
    }
.end annotation


# instance fields
.field private final evictionSize:I


# direct methods
.method public constructor <init>(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/util/concurrent/ConcurrentMap;I)V
    .locals 0
    .param p3, "evictionSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-TS;>;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "-TS;",
            "Ljava/lang/Boolean;",
            ">;I)V"
        }
    .end annotation

    .line 105
    .local p0, "this":Lnet/bytebuddy/matcher/CachingMatcher$WithInlineEviction;, "Lnet/bytebuddy/matcher/CachingMatcher$WithInlineEviction<TS;>;"
    .local p1, "matcher":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-TS;>;"
    .local p2, "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<-TS;Ljava/lang/Boolean;>;"
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/matcher/CachingMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/util/concurrent/ConcurrentMap;)V

    .line 106
    iput p3, p0, Lnet/bytebuddy/matcher/CachingMatcher$WithInlineEviction;->evictionSize:I

    .line 107
    return-void
.end method


# virtual methods
.method protected onCacheMiss(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation

    .line 113
    .local p0, "this":Lnet/bytebuddy/matcher/CachingMatcher$WithInlineEviction;, "Lnet/bytebuddy/matcher/CachingMatcher$WithInlineEviction<TS;>;"
    .local p1, "target":Ljava/lang/Object;, "TS;"
    iget-object v0, p0, Lnet/bytebuddy/matcher/CachingMatcher$WithInlineEviction;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    iget v1, p0, Lnet/bytebuddy/matcher/CachingMatcher$WithInlineEviction;->evictionSize:I

    if-lt v0, v1, :cond_0

    .line 114
    iget-object v0, p0, Lnet/bytebuddy/matcher/CachingMatcher$WithInlineEviction;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 115
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 118
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-super {p0, p1}, Lnet/bytebuddy/matcher/CachingMatcher;->onCacheMiss(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
