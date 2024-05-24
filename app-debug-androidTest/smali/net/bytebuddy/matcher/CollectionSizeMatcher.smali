.class public Lnet/bytebuddy/matcher/CollectionSizeMatcher;
.super Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase;
.source "CollectionSizeMatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Iterable<",
        "*>;>",
        "Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final size:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .line 41
    .local p0, "this":Lnet/bytebuddy/matcher/CollectionSizeMatcher;, "Lnet/bytebuddy/matcher/CollectionSizeMatcher<TT;>;"
    invoke-direct {p0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase;-><init>()V

    .line 42
    iput p1, p0, Lnet/bytebuddy/matcher/CollectionSizeMatcher;->size:I

    .line 43
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
    iget v2, p0, Lnet/bytebuddy/matcher/CollectionSizeMatcher;->size:I

    check-cast p1, Lnet/bytebuddy/matcher/CollectionSizeMatcher;

    iget p1, p1, Lnet/bytebuddy/matcher/CollectionSizeMatcher;->size:I

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/matcher/CollectionSizeMatcher;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnet/bytebuddy/matcher/CollectionSizeMatcher;->size:I

    add-int/2addr v0, v1

    return v0
.end method

.method public matches(Ljava/lang/Iterable;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 50
    .local p0, "this":Lnet/bytebuddy/matcher/CollectionSizeMatcher;, "Lnet/bytebuddy/matcher/CollectionSizeMatcher<TT;>;"
    .local p1, "target":Ljava/lang/Iterable;, "TT;"
    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 51
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget v3, p0, Lnet/bytebuddy/matcher/CollectionSizeMatcher;->size:I

    if-ne v0, v3, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 53
    :cond_1
    const/4 v0, 0x0

    .line 54
    .local v0, "size":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 55
    .local v4, "ignored":Ljava/lang/Object;
    nop

    .end local v4    # "ignored":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    iget v3, p0, Lnet/bytebuddy/matcher/CollectionSizeMatcher;->size:I

    if-ne v0, v3, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method public bridge synthetic matches(Ljava/lang/Object;)Z
    .locals 0

    .line 28
    .local p0, "this":Lnet/bytebuddy/matcher/CollectionSizeMatcher;, "Lnet/bytebuddy/matcher/CollectionSizeMatcher<TT;>;"
    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p1}, Lnet/bytebuddy/matcher/CollectionSizeMatcher;->matches(Ljava/lang/Iterable;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 63
    .local p0, "this":Lnet/bytebuddy/matcher/CollectionSizeMatcher;, "Lnet/bytebuddy/matcher/CollectionSizeMatcher<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ofSize("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/bytebuddy/matcher/CollectionSizeMatcher;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
