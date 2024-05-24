.class public Lnet/bytebuddy/matcher/CollectionOneToOneMatcher;
.super Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase;
.source "CollectionOneToOneMatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase<",
        "Ljava/lang/Iterable<",
        "+TT;>;>;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final matchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-TT;>;>;)V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lnet/bytebuddy/matcher/CollectionOneToOneMatcher;, "Lnet/bytebuddy/matcher/CollectionOneToOneMatcher<TT;>;"
    .local p1, "matchers":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/matcher/ElementMatcher<-TT;>;>;"
    invoke-direct {p0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase;-><init>()V

    .line 47
    iput-object p1, p0, Lnet/bytebuddy/matcher/CollectionOneToOneMatcher;->matchers:Ljava/util/List;

    .line 48
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
    iget-object v2, p0, Lnet/bytebuddy/matcher/CollectionOneToOneMatcher;->matchers:Ljava/util/List;

    check-cast p1, Lnet/bytebuddy/matcher/CollectionOneToOneMatcher;

    iget-object p1, p1, Lnet/bytebuddy/matcher/CollectionOneToOneMatcher;->matchers:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/matcher/CollectionOneToOneMatcher;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/matcher/CollectionOneToOneMatcher;->matchers:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public matches(Ljava/lang/Iterable;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 54
    .local p0, "this":Lnet/bytebuddy/matcher/CollectionOneToOneMatcher;, "Lnet/bytebuddy/matcher/CollectionOneToOneMatcher<TT;>;"
    .local p1, "target":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget-object v2, p0, Lnet/bytebuddy/matcher/CollectionOneToOneMatcher;->matchers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 55
    return v1

    .line 57
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/matcher/CollectionOneToOneMatcher;->matchers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 58
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lnet/bytebuddy/matcher/ElementMatcher<-TT;>;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 59
    .local v3, "value":Ljava/lang/Object;, "TT;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-interface {v4, v3}, Lnet/bytebuddy/matcher/ElementMatcher;->matches(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 62
    .end local v3    # "value":Ljava/lang/Object;, "TT;"
    :cond_1
    goto :goto_0

    .line 60
    .restart local v3    # "value":Ljava/lang/Object;, "TT;"
    :cond_2
    :goto_1
    return v1

    .line 63
    .end local v3    # "value":Ljava/lang/Object;, "TT;"
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method public bridge synthetic matches(Ljava/lang/Object;)Z
    .locals 0

    .line 32
    .local p0, "this":Lnet/bytebuddy/matcher/CollectionOneToOneMatcher;, "Lnet/bytebuddy/matcher/CollectionOneToOneMatcher<TT;>;"
    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p1}, Lnet/bytebuddy/matcher/CollectionOneToOneMatcher;->matches(Ljava/lang/Iterable;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 68
    .local p0, "this":Lnet/bytebuddy/matcher/CollectionOneToOneMatcher;, "Lnet/bytebuddy/matcher/CollectionOneToOneMatcher<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "containing("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 70
    .local v1, "first":Z
    iget-object v2, p0, Lnet/bytebuddy/matcher/CollectionOneToOneMatcher;->matchers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 71
    .local v3, "value":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 72
    const/4 v1, 0x0

    goto :goto_1

    .line 74
    :cond_0
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .end local v3    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 78
    :cond_1
    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
