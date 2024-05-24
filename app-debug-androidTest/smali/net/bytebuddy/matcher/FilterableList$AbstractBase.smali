.class public abstract Lnet/bytebuddy/matcher/FilterableList$AbstractBase;
.super Ljava/util/AbstractList;
.source "FilterableList.java"

# interfaces
.implements Lnet/bytebuddy/matcher/FilterableList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/matcher/FilterableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S::",
        "Lnet/bytebuddy/matcher/FilterableList<",
        "TT;TS;>;>",
        "Ljava/util/AbstractList<",
        "TT;>;",
        "Lnet/bytebuddy/matcher/FilterableList<",
        "TT;TS;>;"
    }
.end annotation


# static fields
.field private static final ONLY:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 111
    .local p0, "this":Lnet/bytebuddy/matcher/FilterableList$AbstractBase;, "Lnet/bytebuddy/matcher/FilterableList$AbstractBase<TT;TS;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-TT;>;)TS;"
        }
    .end annotation

    .line 123
    .local p0, "this":Lnet/bytebuddy/matcher/FilterableList$AbstractBase;, "Lnet/bytebuddy/matcher/FilterableList$AbstractBase<TT;TS;>;"
    .local p1, "elementMatcher":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lnet/bytebuddy/matcher/FilterableList$AbstractBase;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 124
    .local v0, "filteredElements":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0}, Lnet/bytebuddy/matcher/FilterableList$AbstractBase;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 125
    .local v2, "value":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v2}, Lnet/bytebuddy/matcher/ElementMatcher;->matches(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    .end local v2    # "value":Ljava/lang/Object;, "TT;"
    :cond_0
    goto :goto_0

    .line 129
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lnet/bytebuddy/matcher/FilterableList$AbstractBase;->size()I

    move-result v2

    if-ne v1, v2, :cond_2

    move-object v1, p0

    goto :goto_1

    .line 131
    :cond_2
    invoke-virtual {p0, v0}, Lnet/bytebuddy/matcher/FilterableList$AbstractBase;->wrap(Ljava/util/List;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v1

    .line 129
    :goto_1
    return-object v1
.end method

.method public getOnly()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 138
    .local p0, "this":Lnet/bytebuddy/matcher/FilterableList$AbstractBase;, "Lnet/bytebuddy/matcher/FilterableList$AbstractBase<TT;TS;>;"
    invoke-virtual {p0}, Lnet/bytebuddy/matcher/FilterableList$AbstractBase;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 141
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/matcher/FilterableList$AbstractBase;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/bytebuddy/matcher/FilterableList$AbstractBase;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 111
    .local p0, "this":Lnet/bytebuddy/matcher/FilterableList$AbstractBase;, "Lnet/bytebuddy/matcher/FilterableList$AbstractBase<TT;TS;>;"
    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/matcher/FilterableList$AbstractBase;->subList(II)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object p1

    return-object p1
.end method

.method public subList(II)Lnet/bytebuddy/matcher/FilterableList;
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TS;"
        }
    .end annotation

    .line 148
    .local p0, "this":Lnet/bytebuddy/matcher/FilterableList$AbstractBase;, "Lnet/bytebuddy/matcher/FilterableList$AbstractBase<TT;TS;>;"
    invoke-super {p0, p1, p2}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/matcher/FilterableList$AbstractBase;->wrap(Ljava/util/List;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    return-object v0
.end method

.method protected abstract wrap(Ljava/util/List;)Lnet/bytebuddy/matcher/FilterableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)TS;"
        }
    .end annotation
.end method
