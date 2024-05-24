.class public Lscenelib/annotations/util/coll/LinkedHashKeyedSet;
.super Ljava/util/AbstractSet;
.source "LinkedHashKeyedSet.java"

# interfaces
.implements Lscenelib/annotations/util/coll/KeyedSet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscenelib/annotations/util/coll/LinkedHashKeyedSet$KeyedSetIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TV;>;",
        "Lscenelib/annotations/util/coll/KeyedSet<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final keyer:Lscenelib/annotations/util/coll/Keyer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscenelib/annotations/util/coll/Keyer<",
            "+TK;-TV;>;"
        }
    .end annotation
.end field

.field private final theMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final theValues:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscenelib/annotations/util/coll/Keyer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscenelib/annotations/util/coll/Keyer<",
            "+TK;-TV;>;)V"
        }
    .end annotation

    .line 21
    .local p0, "this":Lscenelib/annotations/util/coll/LinkedHashKeyedSet;, "Lscenelib/annotations/util/coll/LinkedHashKeyedSet<TK;TV;>;"
    .local p1, "keyer":Lscenelib/annotations/util/coll/Keyer;, "Lscenelib/annotations/util/coll/Keyer<+TK;-TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 13
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lscenelib/annotations/util/coll/LinkedHashKeyedSet;->theMap:Ljava/util/Map;

    .line 15
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lscenelib/annotations/util/coll/LinkedHashKeyedSet;->theValues:Ljava/util/Collection;

    .line 22
    iput-object p1, p0, Lscenelib/annotations/util/coll/LinkedHashKeyedSet;->keyer:Lscenelib/annotations/util/coll/Keyer;

    .line 23
    return-void
.end method

.method private checkAdd(ILjava/lang/Object;)Z
    .locals 1
    .param p1, "behavior"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)Z"
        }
    .end annotation

    .line 73
    .local p0, "this":Lscenelib/annotations/util/coll/LinkedHashKeyedSet;, "Lscenelib/annotations/util/coll/LinkedHashKeyedSet<TK;TV;>;"
    .local p2, "old":Ljava/lang/Object;, "TV;"
    packed-switch p1, :pswitch_data_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 75
    :pswitch_0
    invoke-virtual {p0, p2}, Lscenelib/annotations/util/coll/LinkedHashKeyedSet;->remove(Ljava/lang/Object;)Z

    .line 76
    const/4 v0, 0x1

    return v0

    .line 80
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 78
    :pswitch_2
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x"    # Ljava/lang/Object;
    .param p1, "y"    # Ljava/lang/Object;

    .line 87
    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 3
    .param p2, "conflictBehavior"    # I
    .param p3, "equalBehavior"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;II)TV;"
        }
    .end annotation

    .line 92
    .local p0, "this":Lscenelib/annotations/util/coll/LinkedHashKeyedSet;, "Lscenelib/annotations/util/coll/LinkedHashKeyedSet<TK;TV;>;"
    .local p1, "o":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lscenelib/annotations/util/coll/LinkedHashKeyedSet;->keyer:Lscenelib/annotations/util/coll/Keyer;

    invoke-interface {v0, p1}, Lscenelib/annotations/util/coll/Keyer;->getKeyFor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 93
    .local v0, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lscenelib/annotations/util/coll/LinkedHashKeyedSet;->theMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 94
    .local v1, "old":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_1

    .line 95
    invoke-static {p1, v1}, Lscenelib/annotations/util/coll/LinkedHashKeyedSet;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p3, v1}, Lscenelib/annotations/util/coll/LinkedHashKeyedSet;->checkAdd(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2, v1}, Lscenelib/annotations/util/coll/LinkedHashKeyedSet;->checkAdd(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    :cond_1
    :goto_0
    iget-object v2, p0, Lscenelib/annotations/util/coll/LinkedHashKeyedSet;->theMap:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_2
    return-object v1
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 103
    .local p0, "this":Lscenelib/annotations/util/coll/LinkedHashKeyedSet;, "Lscenelib/annotations/util/coll/LinkedHashKeyedSet<TK;TV;>;"
    .local p1, "o":Ljava/lang/Object;, "TV;"
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lscenelib/annotations/util/coll/LinkedHashKeyedSet;->add(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 113
    .local p0, "this":Lscenelib/annotations/util/coll/LinkedHashKeyedSet;, "Lscenelib/annotations/util/coll/LinkedHashKeyedSet<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TV;>;"
    const/4 v0, 0x0

    .line 114
    .local v0, "changed":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 115
    .local v2, "o":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v2}, Lscenelib/annotations/util/coll/LinkedHashKeyedSet;->add(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 116
    .end local v2    # "o":Ljava/lang/Object;, "TV;"
    goto :goto_0

    .line 117
    :cond_0
    return v0
.end method

.method public clear()V
    .locals 1

    .line 122
    .local p0, "this":Lscenelib/annotations/util/coll/LinkedHashKeyedSet;, "Lscenelib/annotations/util/coll/LinkedHashKeyedSet<TK;TV;>;"
    iget-object v0, p0, Lscenelib/annotations/util/coll/LinkedHashKeyedSet;->theValues:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 123
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 32
    .local p0, "this":Lscenelib/annotations/util/coll/LinkedHashKeyedSet;, "Lscenelib/annotations/util/coll/LinkedHashKeyedSet<TK;TV;>;"
    iget-object v0, p0, Lscenelib/annotations/util/coll/LinkedHashKeyedSet;->theValues:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getKeyer()Lscenelib/annotations/util/coll/Keyer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscenelib/annotations/util/coll/Keyer<",
            "+TK;-TV;>;"
        }
    .end annotation

    .line 127
    .local p0, "this":Lscenelib/annotations/util/coll/LinkedHashKeyedSet;, "Lscenelib/annotations/util/coll/LinkedHashKeyedSet<TK;TV;>;"
    iget-object v0, p0, Lscenelib/annotations/util/coll/LinkedHashKeyedSet;->keyer:Lscenelib/annotations/util/coll/Keyer;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 59
    .local p0, "this":Lscenelib/annotations/util/coll/LinkedHashKeyedSet;, "Lscenelib/annotations/util/coll/LinkedHashKeyedSet<TK;TV;>;"
    new-instance v0, Lscenelib/annotations/util/coll/LinkedHashKeyedSet$KeyedSetIterator;

    invoke-direct {v0, p0}, Lscenelib/annotations/util/coll/LinkedHashKeyedSet$KeyedSetIterator;-><init>(Lscenelib/annotations/util/coll/LinkedHashKeyedSet;)V

    return-object v0
.end method

.method public lookup(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 137
    .local p0, "this":Lscenelib/annotations/util/coll/LinkedHashKeyedSet;, "Lscenelib/annotations/util/coll/LinkedHashKeyedSet<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lscenelib/annotations/util/coll/LinkedHashKeyedSet;->theMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 108
    .local p0, "this":Lscenelib/annotations/util/coll/LinkedHashKeyedSet;, "Lscenelib/annotations/util/coll/LinkedHashKeyedSet<TK;TV;>;"
    iget-object v0, p0, Lscenelib/annotations/util/coll/LinkedHashKeyedSet;->theValues:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public replace(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 132
    .local p0, "this":Lscenelib/annotations/util/coll/LinkedHashKeyedSet;, "Lscenelib/annotations/util/coll/LinkedHashKeyedSet<TK;TV;>;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lscenelib/annotations/util/coll/LinkedHashKeyedSet;->theMap:Ljava/util/Map;

    iget-object v1, p0, Lscenelib/annotations/util/coll/LinkedHashKeyedSet;->keyer:Lscenelib/annotations/util/coll/Keyer;

    invoke-interface {v1, p1}, Lscenelib/annotations/util/coll/Keyer;->getKeyFor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 27
    .local p0, "this":Lscenelib/annotations/util/coll/LinkedHashKeyedSet;, "Lscenelib/annotations/util/coll/LinkedHashKeyedSet<TK;TV;>;"
    iget-object v0, p0, Lscenelib/annotations/util/coll/LinkedHashKeyedSet;->theValues:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 64
    .local p0, "this":Lscenelib/annotations/util/coll/LinkedHashKeyedSet;, "Lscenelib/annotations/util/coll/LinkedHashKeyedSet<TK;TV;>;"
    iget-object v0, p0, Lscenelib/annotations/util/coll/LinkedHashKeyedSet;->theValues:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 69
    .local p0, "this":Lscenelib/annotations/util/coll/LinkedHashKeyedSet;, "Lscenelib/annotations/util/coll/LinkedHashKeyedSet<TK;TV;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lscenelib/annotations/util/coll/LinkedHashKeyedSet;->theValues:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
