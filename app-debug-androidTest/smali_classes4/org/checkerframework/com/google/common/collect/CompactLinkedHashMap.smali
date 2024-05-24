.class Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;
.super Lorg/checkerframework/com/google/common/collect/CompactHashMap;
.source "CompactLinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/CompactHashMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final ENDPOINT:I = -0x2


# instance fields
.field private final accessOrder:Z

.field private transient firstEntry:I

.field private transient lastEntry:I

.field transient links:[J


# direct methods
.method constructor <init>()V
    .locals 1

    .line 93
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;, "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;-><init>(I)V

    .line 94
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "expectedSize"    # I

    .line 97
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;, "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;-><init>(IZ)V

    .line 98
    return-void
.end method

.method constructor <init>(IZ)V
    .locals 0
    .param p1, "expectedSize"    # I
    .param p2, "accessOrder"    # Z

    .line 101
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;, "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/CompactHashMap;-><init>(I)V

    .line 102
    iput-boolean p2, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;->accessOrder:Z

    .line 103
    return-void
.end method

.method public static create()Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 55
    new-instance v0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;-><init>()V

    return-object v0
.end method

.method public static createWithExpectedSize(I)Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;
    .locals 1
    .param p0, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 68
    new-instance v0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;-><init>(I)V

    return-object v0
.end method

.method private getPredecessor(I)I
    .locals 3
    .param p1, "entry"    # I

    .line 121
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;, "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;->links:[J

    aget-wide v0, v0, p1

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private setPredecessor(II)V
    .locals 8
    .param p1, "entry"    # I
    .param p2, "pred"    # I

    .line 135
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;, "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    const-wide v0, -0x100000000L

    .line 136
    .local v0, "predMask":J
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;->links:[J

    aget-wide v3, v2, p1

    not-long v5, v0

    and-long/2addr v3, v5

    int-to-long v5, p2

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    aput-wide v3, v2, p1

    .line 137
    return-void
.end method

.method private setSucceeds(II)V
    .locals 1
    .param p1, "pred"    # I
    .param p2, "succ"    # I

    .line 140
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;, "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 141
    iput p2, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;->firstEntry:I

    goto :goto_0

    .line 143
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;->setSuccessor(II)V

    .line 146
    :goto_0
    if-ne p2, v0, :cond_1

    .line 147
    iput p1, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;->lastEntry:I

    goto :goto_1

    .line 149
    :cond_1
    invoke-direct {p0, p2, p1}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;->setPredecessor(II)V

    .line 151
    :goto_1
    return-void
.end method

.method private setSuccessor(II)V
    .locals 7
    .param p1, "entry"    # I
    .param p2, "succ"    # I

    .line 130
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;, "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    const-wide v0, 0xffffffffL

    .line 131
    .local v0, "succMask":J
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;->links:[J

    aget-wide v3, v2, p1

    not-long v5, v0

    and-long/2addr v3, v5

    int-to-long v5, p2

    and-long/2addr v5, v0

    or-long/2addr v3, v5

    aput-wide v3, v2, p1

    .line 132
    return-void
.end method


# virtual methods
.method accessEntry(I)V
    .locals 2
    .param p1, "index"    # I

    .line 162
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;, "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    iget-boolean v0, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;->accessOrder:Z

    if-eqz v0, :cond_0

    .line 164
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;->getPredecessor(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;->getSuccessor(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 166
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;->lastEntry:I

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 167
    const/4 v0, -0x2

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 168
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;->modCount:I

    .line 170
    :cond_0
    return-void
.end method

.method adjustAfterRemove(II)I
    .locals 1
    .param p1, "indexBeforeRemove"    # I
    .param p2, "indexRemoved"    # I

    .line 202
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;, "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;->size()I

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
    .locals 4

    .line 114
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;, "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->allocArrays()V

    .line 115
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;->keys:[Ljava/lang/Object;

    array-length v0, v0

    .line 116
    .local v0, "expectedSize":I
    new-array v1, v0, [J

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;->links:[J

    .line 117
    const-wide/16 v2, -0x1

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 118
    return-void
.end method

.method public clear()V
    .locals 5

    .line 263
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;, "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    return-void

    .line 266
    :cond_0
    const/4 v0, -0x2

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;->firstEntry:I

    .line 267
    iput v0, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;->lastEntry:I

    .line 268
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;->links:[J

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;->size()I

    move-result v1

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 269
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->clear()V

    .line 270
    return-void
.end method

.method createEntrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 214
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;, "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap$1EntrySetImpl;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap$1EntrySetImpl;-><init>(Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;)V

    return-object v0
.end method

.method createKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 236
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;, "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap$1KeySetImpl;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap$1KeySetImpl;-><init>(Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;)V

    return-object v0
.end method

.method createValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 258
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;, "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap$1ValuesImpl;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap$1ValuesImpl;-><init>(Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;)V

    return-object v0
.end method

.method firstEntryIndex()I
    .locals 1

    .line 197
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;, "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;->firstEntry:I

    return v0
.end method

.method getSuccessor(I)I
    .locals 2
    .param p1, "entry"    # I

    .line 126
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;, "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;->links:[J

    aget-wide v0, v0, p1

    long-to-int v0, v0

    return v0
.end method

.method init(I)V
    .locals 1
    .param p1, "expectedSize"    # I

    .line 107
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;, "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->init(I)V

    .line 108
    const/4 v0, -0x2

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;->firstEntry:I

    .line 109
    iput v0, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;->lastEntry:I

    .line 110
    return-void
.end method

.method insertEntry(ILjava/lang/Object;Ljava/lang/Object;I)V
    .locals 1
    .param p1, "entryIndex"    # I
    .param p4, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;I)V"
        }
    .end annotation

    .line 155
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;, "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-super {p0, p1, p2, p3, p4}, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->insertEntry(ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 156
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;->lastEntry:I

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 157
    const/4 v0, -0x2

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 158
    return-void
.end method

.method moveLastEntry(I)V
    .locals 4
    .param p1, "dstIndex"    # I

    .line 174
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;, "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 175
    .local v0, "srcIndex":I
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->moveLastEntry(I)V

    .line 177
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;->getPredecessor(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;->getSuccessor(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 178
    if-ge p1, v0, :cond_0

    .line 179
    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;->getPredecessor(I)I

    move-result v1

    invoke-direct {p0, v1, p1}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 180
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;->getSuccessor(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 182
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;->links:[J

    const-wide/16 v2, -0x1

    aput-wide v2, v1, v0

    .line 183
    return-void
.end method

.method resizeEntries(I)V
    .locals 4
    .param p1, "newCapacity"    # I

    .line 187
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;, "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->resizeEntries(I)V

    .line 188
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;->links:[J

    array-length v1, v0

    .line 189
    .local v1, "oldCapacity":I
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;->links:[J

    .line 190
    if-ge v1, p1, :cond_0

    .line 191
    const-wide/16 v2, -0x1

    invoke-static {v0, v1, p1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 193
    :cond_0
    return-void
.end method
