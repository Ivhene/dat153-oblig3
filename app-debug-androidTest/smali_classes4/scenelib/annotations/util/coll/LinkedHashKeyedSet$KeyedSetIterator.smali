.class Lscenelib/annotations/util/coll/LinkedHashKeyedSet$KeyedSetIterator;
.super Ljava/lang/Object;
.source "LinkedHashKeyedSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscenelib/annotations/util/coll/LinkedHashKeyedSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyedSetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final itr:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lscenelib/annotations/util/coll/LinkedHashKeyedSet;


# direct methods
.method constructor <init>(Lscenelib/annotations/util/coll/LinkedHashKeyedSet;)V
    .locals 0

    .line 53
    .local p0, "this":Lscenelib/annotations/util/coll/LinkedHashKeyedSet$KeyedSetIterator;, "Lscenelib/annotations/util/coll/LinkedHashKeyedSet<TK;TV;>.KeyedSetIterator;"
    iput-object p1, p0, Lscenelib/annotations/util/coll/LinkedHashKeyedSet$KeyedSetIterator;->this$0:Lscenelib/annotations/util/coll/LinkedHashKeyedSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iget-object p1, p1, Lscenelib/annotations/util/coll/LinkedHashKeyedSet;->theValues:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lscenelib/annotations/util/coll/LinkedHashKeyedSet$KeyedSetIterator;->itr:Ljava/util/Iterator;

    .line 54
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 40
    .local p0, "this":Lscenelib/annotations/util/coll/LinkedHashKeyedSet$KeyedSetIterator;, "Lscenelib/annotations/util/coll/LinkedHashKeyedSet<TK;TV;>.KeyedSetIterator;"
    iget-object v0, p0, Lscenelib/annotations/util/coll/LinkedHashKeyedSet$KeyedSetIterator;->itr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 45
    .local p0, "this":Lscenelib/annotations/util/coll/LinkedHashKeyedSet$KeyedSetIterator;, "Lscenelib/annotations/util/coll/LinkedHashKeyedSet<TK;TV;>.KeyedSetIterator;"
    iget-object v0, p0, Lscenelib/annotations/util/coll/LinkedHashKeyedSet$KeyedSetIterator;->itr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 50
    .local p0, "this":Lscenelib/annotations/util/coll/LinkedHashKeyedSet$KeyedSetIterator;, "Lscenelib/annotations/util/coll/LinkedHashKeyedSet<TK;TV;>.KeyedSetIterator;"
    iget-object v0, p0, Lscenelib/annotations/util/coll/LinkedHashKeyedSet$KeyedSetIterator;->itr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 51
    return-void
.end method
