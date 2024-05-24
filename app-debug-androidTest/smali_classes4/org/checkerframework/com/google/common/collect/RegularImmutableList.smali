.class Lorg/checkerframework/com/google/common/collect/RegularImmutableList;
.super Lorg/checkerframework/com/google/common/collect/ImmutableList;
.source "RegularImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final EMPTY:Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final transient array:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lorg/checkerframework/com/google/common/collect/RegularImmutableList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/collect/RegularImmutableList;-><init>([Ljava/lang/Object;)V

    sput-object v0, Lorg/checkerframework/com/google/common/collect/RegularImmutableList;->EMPTY:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .param p1, "array"    # [Ljava/lang/Object;

    .line 36
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableList;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableList<TE;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    .line 38
    return-void
.end method


# virtual methods
.method copyIntoArray([Ljava/lang/Object;I)I
    .locals 3
    .param p1, "dst"    # [Ljava/lang/Object;
    .param p2, "dstOff"    # I

    .line 67
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableList;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableList<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    array-length v0, v0

    add-int/2addr v0, p2

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 75
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableList;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableList<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method internalArray()[Ljava/lang/Object;
    .locals 1

    .line 52
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableList;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableList<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    return-object v0
.end method

.method internalArrayEnd()I
    .locals 1

    .line 62
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableList;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableList<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method internalArrayStart()I
    .locals 1

    .line 57
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableList;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableList<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method isPartialView()Z
    .locals 1

    .line 47
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableList;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableList<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 29
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableList;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableList<TE;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/RegularImmutableList;->listIterator(I)Lorg/checkerframework/com/google/common/collect/UnmodifiableListIterator;

    move-result-object p1

    return-object p1
.end method

.method public listIterator(I)Lorg/checkerframework/com/google/common/collect/UnmodifiableListIterator;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/checkerframework/com/google/common/collect/UnmodifiableListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 83
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableList;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableList<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2, p1}, Lorg/checkerframework/com/google/common/collect/Iterators;->forArray([Ljava/lang/Object;III)Lorg/checkerframework/com/google/common/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 42
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableList;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableList<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

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

    .line 88
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableList;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableList<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    const/16 v1, 0x510

    invoke-static {v0, v1}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
