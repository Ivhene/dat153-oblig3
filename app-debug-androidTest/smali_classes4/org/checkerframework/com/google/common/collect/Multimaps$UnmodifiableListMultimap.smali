.class Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableListMultimap;
.super Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableMultimap;
.source "Multimaps.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/collect/ListMultimap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableListMultimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableMultimap<",
        "TK;TV;>;",
        "Lorg/checkerframework/com/google/common/collect/ListMultimap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ListMultimap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ListMultimap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 766
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableListMultimap;, "Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableListMultimap<TK;TV;>;"
    .local p1, "delegate":Lorg/checkerframework/com/google/common/collect/ListMultimap;, "Lorg/checkerframework/com/google/common/collect/ListMultimap<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableMultimap;-><init>(Lorg/checkerframework/com/google/common/collect/Multimap;)V

    .line 767
    return-void
.end method


# virtual methods
.method public bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 763
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableListMultimap;, "Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableListMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableListMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public delegate()Lorg/checkerframework/com/google/common/collect/ListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 771
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableListMultimap;, "Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableListMultimap<TK;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/ListMultimap;

    return-object v0
.end method

.method public bridge synthetic delegate()Lorg/checkerframework/com/google/common/collect/Multimap;
    .locals 1

    .line 763
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableListMultimap;, "Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableListMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableListMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 763
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableListMultimap;, "Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableListMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 776
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableListMultimap;, "Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableListMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableListMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/ListMultimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/collect/ListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 763
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableListMultimap;, "Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableListMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableListMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 781
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableListMultimap;, "Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableListMultimap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0

    .line 763
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableListMultimap;, "Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableListMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 786
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableListMultimap;, "Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableListMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method