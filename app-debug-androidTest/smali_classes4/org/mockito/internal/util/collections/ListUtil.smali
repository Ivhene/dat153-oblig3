.class public final Lorg/mockito/internal/util/collections/ListUtil;
.super Ljava/lang/Object;
.source "ListUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/util/collections/ListUtil$Converter;,
        Lorg/mockito/internal/util/collections/ListUtil$Filter;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Ljava/util/Collection;Lorg/mockito/internal/util/collections/ListUtil$Converter;)Ljava/util/LinkedList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<FromT:",
            "Ljava/lang/Object;",
            "To:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TFromT;>;",
            "Lorg/mockito/internal/util/collections/ListUtil$Converter<",
            "TFromT;TTo;>;)",
            "Ljava/util/LinkedList<",
            "TTo;>;"
        }
    .end annotation

    .line 29
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TFromT;>;"
    .local p1, "converter":Lorg/mockito/internal/util/collections/ListUtil$Converter;, "Lorg/mockito/internal/util/collections/ListUtil$Converter<TFromT;TTo;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 30
    .local v0, "converted":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TTo;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 31
    .local v2, "f":Ljava/lang/Object;, "TFromT;"
    invoke-interface {p1, v2}, Lorg/mockito/internal/util/collections/ListUtil$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 32
    .end local v2    # "f":Ljava/lang/Object;, "TFromT;"
    goto :goto_0

    .line 33
    :cond_0
    return-object v0
.end method

.method public static filter(Ljava/util/Collection;Lorg/mockito/internal/util/collections/ListUtil$Filter;)Ljava/util/LinkedList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Lorg/mockito/internal/util/collections/ListUtil$Filter<",
            "TT;>;)",
            "Ljava/util/LinkedList<",
            "TT;>;"
        }
    .end annotation

    .line 18
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "filter":Lorg/mockito/internal/util/collections/ListUtil$Filter;, "Lorg/mockito/internal/util/collections/ListUtil$Filter<TT;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 19
    .local v0, "filtered":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 20
    .local v2, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v2}, Lorg/mockito/internal/util/collections/ListUtil$Filter;->isOut(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 21
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 23
    .end local v2    # "t":Ljava/lang/Object;, "TT;"
    :cond_0
    goto :goto_0

    .line 24
    :cond_1
    return-object v0
.end method
