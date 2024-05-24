.class public abstract Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;
.super Lorg/checkerframework/com/google/common/collect/ImmutableMultisetGwtSerializationDependencies;
.source "ImmutableMultiset.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/collect/Multiset;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$SerializedForm;,
        Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$ElementSet;,
        Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;,
        Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$EntrySetSerializedForm;,
        Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/ImmutableMultisetGwtSerializationDependencies<",
        "TE;>;",
        "Lorg/checkerframework/com/google/common/collect/Multiset<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private transient asList:Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation
.end field

.field private transient entrySet:Lorg/checkerframework/com/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 233
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;, "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset<TE;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMultisetGwtSerializationDependencies;-><init>()V

    return-void
.end method

.method public static builder()Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 436
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;-><init>()V

    return-object v0
.end method

.method private static varargs copyFromElements([Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 219
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset;->create()Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset;

    move-result-object v0

    .line 220
    .local v0, "multiset":Lorg/checkerframework/com/google/common/collect/Multiset;, "Lorg/checkerframework/com/google/common/collect/Multiset<TE;>;"
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 221
    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;->copyFromEntries(Ljava/util/Collection;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;

    move-result-object v1

    return-object v1
.end method

.method static copyFromEntries(Ljava/util/Collection;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<",
            "+TE;>;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 226
    .local p0, "entries":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/checkerframework/com/google/common/collect/Multiset$Entry<+TE;>;>;"
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;->of()Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0

    .line 229
    :cond_0
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableMultiset;->create(Ljava/util/Collection;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 190
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    instance-of v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;

    if-eqz v0, :cond_0

    .line 192
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;

    .line 193
    .local v0, "result":Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;, "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset<TE;>;"
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;->isPartialView()Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    return-object v0

    .line 198
    .end local v0    # "result":Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;, "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset<TE;>;"
    :cond_0
    instance-of v0, p0, Lorg/checkerframework/com/google/common/collect/Multiset;

    if-eqz v0, :cond_1

    .line 200
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/Multisets;->cast(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/Multiset;

    move-result-object v0

    goto :goto_0

    .line 201
    :cond_1
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset;->create(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset;

    move-result-object v0

    :goto_0
    nop

    .line 203
    .local v0, "multiset":Lorg/checkerframework/com/google/common/collect/Multiset;, "Lorg/checkerframework/com/google/common/collect/Multiset<+TE;>;"
    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;->copyFromEntries(Ljava/util/Collection;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;

    move-result-object v1

    return-object v1
.end method

.method public static copyOf(Ljava/util/Iterator;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 213
    .local p0, "elements":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset;->create()Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset;

    move-result-object v0

    .line 214
    .local v0, "multiset":Lorg/checkerframework/com/google/common/collect/Multiset;, "Lorg/checkerframework/com/google/common/collect/Multiset<TE;>;"
    invoke-static {v0, p0}, Lorg/checkerframework/com/google/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 215
    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;->copyFromEntries(Ljava/util/Collection;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;

    move-result-object v1

    return-object v1
.end method

.method public static copyOf([Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 180
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;->copyFromElements([Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method private createEntrySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 363
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;, "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->of()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$EntrySet;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$1;)V

    :goto_0
    return-object v0
.end method

.method static synthetic lambda$toImmutableMultiset$0(Ljava/lang/Object;)I
    .locals 1
    .param p0, "e"    # Ljava/lang/Object;

    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$toImmutableMultiset$1(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;Lorg/checkerframework/com/google/common/collect/Multiset;Ljava/lang/Object;)V
    .locals 2
    .param p0, "elementFunction"    # Ljava/util/function/Function;
    .param p1, "countFunction"    # Ljava/util/function/ToIntFunction;
    .param p2, "multiset"    # Lorg/checkerframework/com/google/common/collect/Multiset;
    .param p3, "t"    # Ljava/lang/Object;

    .line 88
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p3}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lorg/checkerframework/com/google/common/collect/Multiset;->add(Ljava/lang/Object;I)I

    return-void
.end method

.method static synthetic lambda$toImmutableMultiset$2(Lorg/checkerframework/com/google/common/collect/Multiset;Lorg/checkerframework/com/google/common/collect/Multiset;)Lorg/checkerframework/com/google/common/collect/Multiset;
    .locals 0
    .param p0, "multiset1"    # Lorg/checkerframework/com/google/common/collect/Multiset;
    .param p1, "multiset2"    # Lorg/checkerframework/com/google/common/collect/Multiset;

    .line 90
    invoke-interface {p0, p1}, Lorg/checkerframework/com/google/common/collect/Multiset;->addAll(Ljava/util/Collection;)Z

    .line 91
    return-object p0
.end method

.method static synthetic lambda$toImmutableMultiset$3(Lorg/checkerframework/com/google/common/collect/Multiset;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;
    .locals 1
    .param p0, "multiset"    # Lorg/checkerframework/com/google/common/collect/Multiset;

    .line 93
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;->copyFromEntries(Ljava/util/Collection;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static of()Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 99
    sget-object v0, Lorg/checkerframework/com/google/common/collect/RegularImmutableMultiset;->EMPTY:Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 110
    .local p0, "element":Ljava/lang/Object;, "TE;"
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;->copyFromElements([Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 121
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    .local p1, "e2":Ljava/lang/Object;, "TE;"
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;->copyFromElements([Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 133
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    .local p1, "e2":Ljava/lang/Object;, "TE;"
    .local p2, "e3":Ljava/lang/Object;, "TE;"
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;->copyFromElements([Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 145
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    .local p1, "e2":Ljava/lang/Object;, "TE;"
    .local p2, "e3":Ljava/lang/Object;, "TE;"
    .local p3, "e4":Ljava/lang/Object;, "TE;"
    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;->copyFromElements([Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 157
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    .local p1, "e2":Ljava/lang/Object;, "TE;"
    .local p2, "e3":Ljava/lang/Object;, "TE;"
    .local p3, "e4":Ljava/lang/Object;, "TE;"
    .local p4, "e5":Ljava/lang/Object;, "TE;"
    filled-new-array {p0, p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;->copyFromElements([Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static varargs of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;[TE;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 169
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    .local p1, "e2":Ljava/lang/Object;, "TE;"
    .local p2, "e3":Ljava/lang/Object;, "TE;"
    .local p3, "e4":Ljava/lang/Object;, "TE;"
    .local p4, "e5":Ljava/lang/Object;, "TE;"
    .local p5, "e6":Ljava/lang/Object;, "TE;"
    .local p6, "others":[Ljava/lang/Object;, "[TE;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;->add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;->add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;->add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;->add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;->add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;

    move-result-object v0

    invoke-virtual {v0, p5}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;->add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;

    move-result-object v0

    invoke-virtual {v0, p6}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;->add([Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static toImmutableMultiset()Ljava/util/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/stream/Collector<",
            "TE;*",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset<",
            "TE;>;>;"
        }
    .end annotation

    .line 67
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;->toImmutableMultiset(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static toImmutableMultiset(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;)Ljava/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TE;>;",
            "Ljava/util/function/ToIntFunction<",
            "-TT;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset<",
            "TE;>;>;"
        }
    .end annotation

    .line 83
    .local p0, "elementFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TE;>;"
    .local p1, "countFunction":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TT;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$$ExternalSyntheticLambda1;-><init>()V

    new-instance v1, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;)V

    new-instance v2, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$$ExternalSyntheticLambda3;-><init>()V

    new-instance v3, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$$ExternalSyntheticLambda4;-><init>()V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;I)I
    .locals 1
    .param p2, "occurrences"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 283
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;, "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public asList()Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 264
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;, "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;->asList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    .line 265
    .local v0, "result":Lorg/checkerframework/com/google/common/collect/ImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<TE;>;"
    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMultisetGwtSerializationDependencies;->asList()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;->asList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 270
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;, "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset<TE;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method copyIntoArray([Ljava/lang/Object;I)I
    .locals 4
    .param p1, "dst"    # [Ljava/lang/Object;
    .param p2, "offset"    # I

    .line 328
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;, "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;->entrySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;

    .line 329
    .local v1, "entry":Lorg/checkerframework/com/google/common/collect/Multiset$Entry;, "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<TE;>;"
    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;->getCount()I

    move-result v2

    add-int/2addr v2, p2

    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, p2, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 330
    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;->getCount()I

    move-result v2

    add-int/2addr p2, v2

    .line 331
    .end local v1    # "entry":Lorg/checkerframework/com/google/common/collect/Multiset$Entry;, "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<TE;>;"
    goto :goto_0

    .line 332
    :cond_0
    return p2
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 54
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;, "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;->elementSet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public abstract elementSet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 54
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;, "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;->entrySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 358
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;, "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;->entrySet:Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    .line 359
    .local v0, "es":Lorg/checkerframework/com/google/common/collect/ImmutableSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet<Lorg/checkerframework/com/google/common/collect/Multiset$Entry<TE;>;>;"
    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;->createEntrySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;->entrySet:Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 337
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;, "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset<TE;>;"
    invoke-static {p0, p1}, Lorg/checkerframework/com/google/common/collect/Multisets;->equalsImpl(Lorg/checkerframework/com/google/common/collect/Multiset;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method abstract getEntry(I)Lorg/checkerframework/com/google/common/collect/Multiset$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation
.end method

.method public hashCode()I
    .locals 1

    .line 342
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;, "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;->entrySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Sets;->hashCodeImpl(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 54
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;, "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 237
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;, "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;->entrySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    .line 238
    .local v0, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/google/common/collect/Multiset$Entry<TE;>;>;"
    new-instance v1, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$1;

    invoke-direct {v1, p0, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$1;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final remove(Ljava/lang/Object;I)I
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "occurrences"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 296
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;, "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final setCount(Ljava/lang/Object;I)I
    .locals 1
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 309
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;, "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final setCount(Ljava/lang/Object;II)Z
    .locals 1
    .param p2, "oldCount"    # I
    .param p3, "newCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 322
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;, "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 347
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;, "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;->entrySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .line 428
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;, "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset<TE;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$SerializedForm;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$SerializedForm;-><init>(Lorg/checkerframework/com/google/common/collect/Multiset;)V

    return-object v0
.end method
