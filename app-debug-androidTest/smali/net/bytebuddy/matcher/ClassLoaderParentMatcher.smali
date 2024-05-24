.class public Lnet/bytebuddy/matcher/ClassLoaderParentMatcher;
.super Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase;
.source "ClassLoaderParentMatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/ClassLoader;",
        ">",
        "Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .line 38
    .local p0, "this":Lnet/bytebuddy/matcher/ClassLoaderParentMatcher;, "Lnet/bytebuddy/matcher/ClassLoaderParentMatcher<TT;>;"
    invoke-direct {p0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase;-><init>()V

    .line 39
    iput-object p1, p0, Lnet/bytebuddy/matcher/ClassLoaderParentMatcher;->classLoader:Ljava/lang/ClassLoader;

    .line 40
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/matcher/ClassLoaderParentMatcher;->classLoader:Ljava/lang/ClassLoader;

    check-cast p1, Lnet/bytebuddy/matcher/ClassLoaderParentMatcher;

    iget-object p1, p1, Lnet/bytebuddy/matcher/ClassLoaderParentMatcher;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/matcher/ClassLoaderParentMatcher;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/matcher/ClassLoaderParentMatcher;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1}, Ljava/lang/ClassLoader;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public matches(Ljava/lang/ClassLoader;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 46
    .local p0, "this":Lnet/bytebuddy/matcher/ClassLoaderParentMatcher;, "Lnet/bytebuddy/matcher/ClassLoaderParentMatcher<TT;>;"
    .local p1, "target":Ljava/lang/ClassLoader;, "TT;"
    iget-object v0, p0, Lnet/bytebuddy/matcher/ClassLoaderParentMatcher;->classLoader:Ljava/lang/ClassLoader;

    .line 47
    .local v0, "current":Ljava/lang/ClassLoader;
    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 48
    if-ne v0, p1, :cond_0

    .line 49
    return v1

    .line 51
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    .line 53
    :cond_1
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public bridge synthetic matches(Ljava/lang/Object;)Z
    .locals 0

    .line 25
    .local p0, "this":Lnet/bytebuddy/matcher/ClassLoaderParentMatcher;, "Lnet/bytebuddy/matcher/ClassLoaderParentMatcher<TT;>;"
    check-cast p1, Ljava/lang/ClassLoader;

    invoke-virtual {p0, p1}, Lnet/bytebuddy/matcher/ClassLoaderParentMatcher;->matches(Ljava/lang/ClassLoader;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 58
    .local p0, "this":Lnet/bytebuddy/matcher/ClassLoaderParentMatcher;, "Lnet/bytebuddy/matcher/ClassLoaderParentMatcher<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isParentOf("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/matcher/ClassLoaderParentMatcher;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
