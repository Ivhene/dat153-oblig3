.class Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;
.super Lorg/checkerframework/com/google/common/collect/CompactHashSet;
.source "CompactLinkedHashSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/CompactHashSet<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final ENDPOINT:I = -0x2


# instance fields
.field private transient firstEntry:I

.field private transient lastEntry:I

.field private transient predecessor:[I

.field private transient successor:[I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 120
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;, "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/CompactHashSet;-><init>()V

    .line 121
    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "expectedSize"    # I

    .line 124
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;, "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/CompactHashSet;-><init>(I)V

    .line 125
    return-void
.end method

.method public static create()Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 53
    new-instance v0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;-><init>()V

    return-object v0
.end method

.method public static create(Ljava/util/Collection;)Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 64
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;->createWithExpectedSize(I)Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;

    move-result-object v0

    .line 65
    .local v0, "set":Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;, "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-virtual {v0, p0}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 66
    return-object v0
.end method

.method public static varargs create([Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 77
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    array-length v0, p0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;->createWithExpectedSize(I)Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;

    move-result-object v0

    .line 78
    .local v0, "set":Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;, "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 79
    return-object v0
.end method

.method public static createWithExpectedSize(I)Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;
    .locals 1
    .param p0, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 92
    new-instance v0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;-><init>(I)V

    return-object v0
.end method

.method private getPredecessor(I)I
    .locals 1
    .param p1, "entry"    # I

    .line 145
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;, "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    aget v0, v0, p1

    return v0
.end method

.method private setPredecessor(II)V
    .locals 1
    .param p1, "entry"    # I
    .param p2, "pred"    # I

    .line 158
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;, "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    aput p2, v0, p1

    .line 159
    return-void
.end method

.method private setSucceeds(II)V
    .locals 1
    .param p1, "pred"    # I
    .param p2, "succ"    # I

    .line 162
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;, "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet<TE;>;"
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 163
    iput p2, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;->firstEntry:I

    goto :goto_0

    .line 165
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;->setSuccessor(II)V

    .line 168
    :goto_0
    if-ne p2, v0, :cond_1

    .line 169
    iput p1, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;->lastEntry:I

    goto :goto_1

    .line 171
    :cond_1
    invoke-direct {p0, p2, p1}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;->setPredecessor(II)V

    .line 173
    :goto_1
    return-void
.end method

.method private setSuccessor(II)V
    .locals 1
    .param p1, "entry"    # I
    .param p2, "succ"    # I

    .line 154
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;, "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;->successor:[I

    aput p2, v0, p1

    .line 155
    return-void
.end method


# virtual methods
.method adjustAfterRemove(II)I
    .locals 1
    .param p1, "indexBeforeRemove"    # I
    .param p2, "indexRemoved"    # I

    .line 215
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;, "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0
.end method

.method allocArrays()V
    .locals 3

    .line 136
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;, "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/CompactHashSet;->allocArrays()V

    .line 137
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;->elements:[Ljava/lang/Object;

    array-length v0, v0

    .line 138
    .local v0, "expectedSize":I
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    .line 139
    new-array v2, v0, [I

    iput-object v2, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;->successor:[I

    .line 140
    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 141
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;->successor:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 142
    return-void
.end method

.method public clear()V
    .locals 4

    .line 235
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;, "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    return-void

    .line 238
    :cond_0
    const/4 v0, -0x2

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;->firstEntry:I

    .line 239
    iput v0, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;->lastEntry:I

    .line 240
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 241
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;->successor:[I

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;->size()I

    move-result v1

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 242
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/CompactHashSet;->clear()V

    .line 243
    return-void
.end method

.method firstEntryIndex()I
    .locals 1

    .line 210
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;, "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet<TE;>;"
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;->firstEntry:I

    return v0
.end method

.method getSuccessor(I)I
    .locals 1
    .param p1, "entry"    # I

    .line 150
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;, "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;->successor:[I

    aget v0, v0, p1

    return v0
.end method

.method init(I)V
    .locals 1
    .param p1, "expectedSize"    # I

    .line 129
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;, "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/CompactHashSet;->init(I)V

    .line 130
    const/4 v0, -0x2

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;->firstEntry:I

    .line 131
    iput v0, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;->lastEntry:I

    .line 132
    return-void
.end method

.method insertEntry(ILjava/lang/Object;I)V
    .locals 1
    .param p1, "entryIndex"    # I
    .param p3, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;I)V"
        }
    .end annotation

    .line 177
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;, "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    invoke-super {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/collect/CompactHashSet;->insertEntry(ILjava/lang/Object;I)V

    .line 178
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;->lastEntry:I

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;->setSucceeds(II)V

    .line 179
    const/4 v0, -0x2

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;->setSucceeds(II)V

    .line 180
    return-void
.end method

.method moveLastEntry(I)V
    .locals 3
    .param p1, "dstIndex"    # I

    .line 184
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;, "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 185
    .local v0, "srcIndex":I
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/CompactHashSet;->moveLastEntry(I)V

    .line 187
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;->getPredecessor(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;->getSuccessor(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;->setSucceeds(II)V

    .line 188
    if-ge p1, v0, :cond_0

    .line 189
    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;->getPredecessor(I)I

    move-result v1

    invoke-direct {p0, v1, p1}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;->setSucceeds(II)V

    .line 190
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;->getSuccessor(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;->setSucceeds(II)V

    .line 192
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 193
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;->successor:[I

    aput v2, v1, v0

    .line 194
    return-void
.end method

.method resizeEntries(I)V
    .locals 3
    .param p1, "newCapacity"    # I

    .line 198
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;, "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/CompactHashSet;->resizeEntries(I)V

    .line 199
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    array-length v1, v0

    .line 200
    .local v1, "oldCapacity":I
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    .line 201
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;->successor:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;->successor:[I

    .line 202
    if-ge v1, p1, :cond_0

    .line 203
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    const/4 v2, -0x1

    invoke-static {v0, v1, p1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 204
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;->successor:[I

    invoke-static {v0, v1, p1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 206
    :cond_0
    return-void
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 230
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;, "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet<TE;>;"
    const/16 v0, 0x11

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 220
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;, "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/ObjectArrays;->toArrayImpl(Ljava/util/Collection;)[Ljava/lang/Object;

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

    .line 225
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet;, "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashSet<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, p1}, Lorg/checkerframework/com/google/common/collect/ObjectArrays;->toArrayImpl(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
