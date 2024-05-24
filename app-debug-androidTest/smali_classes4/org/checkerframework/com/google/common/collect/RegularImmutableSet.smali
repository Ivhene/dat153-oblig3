.class final Lorg/checkerframework/com/google/common/collect/RegularImmutableSet;
.super Lorg/checkerframework/com/google/common/collect/ImmutableSet;
.source "RegularImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final EMPTY:Lorg/checkerframework/com/google/common/collect/RegularImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/RegularImmutableSet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient elements:[Ljava/lang/Object;

.field private final transient hashCode:I

.field private final transient mask:I

.field final transient table:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 33
    new-instance v0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSet;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3, v1}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSet;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V

    sput-object v0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSet;->EMPTY:Lorg/checkerframework/com/google/common/collect/RegularImmutableSet;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V
    .locals 0
    .param p1, "elements"    # [Ljava/lang/Object;
    .param p2, "hashCode"    # I
    .param p3, "table"    # [Ljava/lang/Object;
    .param p4, "mask"    # I

    .line 43
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSet<TE;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSet;->elements:[Ljava/lang/Object;

    .line 45
    iput-object p3, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSet;->table:[Ljava/lang/Object;

    .line 46
    iput p4, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSet;->mask:I

    .line 47
    iput p2, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSet;->hashCode:I

    .line 48
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "target"    # Ljava/lang/Object;

    .line 52
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSet<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSet;->table:[Ljava/lang/Object;

    .line 53
    .local v0, "table":[Ljava/lang/Object;
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    .line 56
    :cond_0
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v2

    .line 57
    .local v2, "i":I
    :goto_0
    iget v3, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSet;->mask:I

    and-int/2addr v2, v3

    .line 58
    aget-object v3, v0, v2

    .line 59
    .local v3, "candidate":Ljava/lang/Object;
    if-nez v3, :cond_1

    .line 60
    return v1

    .line 61
    :cond_1
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 62
    const/4 v1, 0x1

    return v1

    .line 56
    .end local v3    # "candidate":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    .end local v2    # "i":I
    :cond_3
    :goto_1
    return v1
.end method

.method copyIntoArray([Ljava/lang/Object;I)I
    .locals 3
    .param p1, "dst"    # [Ljava/lang/Object;
    .param p2, "offset"    # I

    .line 99
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSet<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSet;->elements:[Ljava/lang/Object;

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSet;->elements:[Ljava/lang/Object;

    array-length v0, v0

    add-int/2addr v0, p2

    return v0
.end method

.method createAsList()Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 105
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSet<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSet;->table:[Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->of()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSet;->elements:[Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableCollection;[Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 115
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSet<TE;>;"
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSet;->hashCode:I

    return v0
.end method

.method internalArray()[Ljava/lang/Object;
    .locals 1

    .line 84
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSet<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSet;->elements:[Ljava/lang/Object;

    return-object v0
.end method

.method internalArrayEnd()I
    .locals 1

    .line 94
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSet<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSet;->elements:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method internalArrayStart()I
    .locals 1

    .line 89
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSet<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method isHashCodeFast()Z
    .locals 1

    .line 120
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSet<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method isPartialView()Z
    .locals 1

    .line 110
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSet<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 30
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSet<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSet;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 74
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSet<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSet;->elements:[Ljava/lang/Object;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Iterators;->forArray([Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 69
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSet<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSet;->elements:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 79
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSet<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSet;->elements:[Ljava/lang/Object;

    const/16 v1, 0x511

    invoke-static {v0, v1}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
