.class public Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;
.super Ljava/lang/Object;
.source "HashCodeAndEqualsSafeSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final backingHashSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->backingHashSet:Ljava/util/HashSet;

    return-void
.end method

.method static synthetic access$000(Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;

    .line 32
    iget-object v0, p0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->backingHashSet:Ljava/util/HashSet;

    return-object v0
.end method

.method private asWrappedMocks(Ljava/util/Collection;)Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)",
            "Ljava/util/HashSet<",
            "Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;",
            ">;"
        }
    .end annotation

    .line 150
    .local p1, "mocks":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const-string v0, "Passed collection should notify() be null"

    invoke-static {p1, v0}, Lorg/mockito/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 151
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 152
    .local v0, "hashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 153
    .local v2, "mock":Ljava/lang/Object;
    instance-of v3, v2, Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;

    if-nez v3, :cond_0

    .line 154
    invoke-static {v2}, Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;->of(Ljava/lang/Object;)Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 155
    .end local v2    # "mock":Ljava/lang/Object;
    goto :goto_0

    .line 153
    .restart local v2    # "mock":Ljava/lang/Object;
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    const-string v3, "WRONG"

    invoke-direct {v1, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 156
    .end local v2    # "mock":Ljava/lang/Object;
    :cond_1
    return-object v0
.end method

.method public static of(Ljava/lang/Iterable;)Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;"
        }
    .end annotation

    .line 169
    .local p0, "objects":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Object;>;"
    new-instance v0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;

    invoke-direct {v0}, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;-><init>()V

    .line 170
    .local v0, "hashCodeAndEqualsSafeSet":Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;
    if-eqz p0, :cond_0

    .line 171
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 172
    .local v2, "mock":Ljava/lang/Object;
    invoke-virtual {v0, v2}, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->add(Ljava/lang/Object;)Z

    .line 173
    .end local v2    # "mock":Ljava/lang/Object;
    goto :goto_0

    .line 175
    :cond_0
    return-object v0
.end method

.method public static varargs of([Ljava/lang/Object;)Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;
    .locals 1
    .param p0, "mocks"    # [Ljava/lang/Object;

    .line 165
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->of(Ljava/lang/Iterable;)Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;

    move-result-object v0

    return-object v0
.end method

.method private unwrapTo([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 121
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 122
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p1

    .local v2, "objectsLength":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 123
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v1

    .line 122
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    .end local v1    # "i":I
    .end local v2    # "objectsLength":I
    :cond_1
    return-object p1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "mock"    # Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->backingHashSet:Ljava/util/HashSet;

    invoke-static {p1}, Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;->of(Ljava/lang/Object;)Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 141
    .local p1, "mocks":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->backingHashSet:Ljava/util/HashSet;

    invoke-direct {p0, p1}, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->asWrappedMocks(Ljava/util/Collection;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->backingHashSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 85
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "mock"    # Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->backingHashSet:Ljava/util/HashSet;

    invoke-static {p1}, Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;->of(Ljava/lang/Object;)Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 136
    .local p1, "mocks":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->backingHashSet:Ljava/util/HashSet;

    invoke-direct {p0, p1}, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->asWrappedMocks(Ljava/util/Collection;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 94
    instance-of v0, p1, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;

    if-nez v0, :cond_0

    .line 95
    const/4 v0, 0x0

    return v0

    .line 97
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;

    .line 98
    .local v0, "that":Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;
    iget-object v1, p0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->backingHashSet:Ljava/util/HashSet;

    iget-object v2, v0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->backingHashSet:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->backingHashSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->backingHashSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 38
    new-instance v0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet$1;

    invoke-direct {v0, p0}, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet$1;-><init>(Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "mock"    # Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->backingHashSet:Ljava/util/HashSet;

    invoke-static {p1}, Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;->of(Ljava/lang/Object;)Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 131
    .local p1, "mocks":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->backingHashSet:Ljava/util/HashSet;

    invoke-direct {p0, p1}, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->asWrappedMocks(Ljava/util/Collection;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 146
    .local p1, "mocks":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->backingHashSet:Ljava/util/HashSet;

    invoke-direct {p0, p1}, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->asWrappedMocks(Ljava/util/Collection;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->backingHashSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 107
    invoke-virtual {p0}, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->unwrapTo([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 113
    .local p1, "typedArray":[Ljava/lang/Object;, "[TT;"
    array-length v0, p1

    invoke-virtual {p0}, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 114
    move-object v0, p1

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    :goto_0
    nop

    .line 116
    .local v0, "array":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0, v0}, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->unwrapTo([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->backingHashSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
