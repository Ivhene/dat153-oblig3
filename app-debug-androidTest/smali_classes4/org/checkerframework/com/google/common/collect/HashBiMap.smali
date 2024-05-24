.class public final Lorg/checkerframework/com/google/common/collect/HashBiMap;
.super Lorg/checkerframework/com/google/common/collect/Maps$IteratorBasedAbstractMap;
.source "HashBiMap.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/collect/BiMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/collect/HashBiMap$InverseSerializedForm;,
        Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;,
        Lorg/checkerframework/com/google/common/collect/HashBiMap$KeySet;,
        Lorg/checkerframework/com/google/common/collect/HashBiMap$Itr;,
        Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/Maps$IteratorBasedAbstractMap<",
        "TK;TV;>;",
        "Lorg/checkerframework/com/google/common/collect/BiMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final LOAD_FACTOR:D = 1.0

.field private static final serialVersionUID:J


# instance fields
.field private transient firstInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private transient hashTableKToV:[Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private transient hashTableVToK:[Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private transient inverse:Lorg/checkerframework/com/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/BiMap<",
            "TV;TK;>;"
        }
    .end annotation
.end field

.field private transient lastInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private transient mask:I

.field private transient modCount:I

.field private transient size:I


# direct methods
.method private constructor <init>(I)V
    .locals 0
    .param p1, "expectedSize"    # I

    .line 114
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/Maps$IteratorBasedAbstractMap;-><init>()V

    .line 115
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->init(I)V

    .line 116
    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/com/google/common/collect/HashBiMap;)Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/HashBiMap;

    .line 59
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->firstInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    return-object v0
.end method

.method static synthetic access$100(Lorg/checkerframework/com/google/common/collect/HashBiMap;)I
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/HashBiMap;

    .line 59
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->modCount:I

    return v0
.end method

.method static synthetic access$200(Lorg/checkerframework/com/google/common/collect/HashBiMap;Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;)V
    .locals 0
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/HashBiMap;
    .param p1, "x1"    # Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 59
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->delete(Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;)V

    return-void
.end method

.method static synthetic access$300(Lorg/checkerframework/com/google/common/collect/HashBiMap;Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/HashBiMap;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # I

    .line 59
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->seekByKey(Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/checkerframework/com/google/common/collect/HashBiMap;Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/HashBiMap;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # I

    .line 59
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->seekByValue(Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lorg/checkerframework/com/google/common/collect/HashBiMap;Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;)V
    .locals 0
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/HashBiMap;
    .param p1, "x1"    # Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;
    .param p2, "x2"    # Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 59
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->insert(Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;)V

    return-void
.end method

.method static synthetic access$700(Lorg/checkerframework/com/google/common/collect/HashBiMap;)I
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/HashBiMap;

    .line 59
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->size:I

    return v0
.end method

.method static synthetic access$800(Lorg/checkerframework/com/google/common/collect/HashBiMap;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/HashBiMap;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Z

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->putInverse(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static create()Lorg/checkerframework/com/google/common/collect/HashBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/collect/HashBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 64
    const/16 v0, 0x10

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->create(I)Lorg/checkerframework/com/google/common/collect/HashBiMap;

    move-result-object v0

    return-object v0
.end method

.method public static create(I)Lorg/checkerframework/com/google/common/collect/HashBiMap;
    .locals 1
    .param p0, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lorg/checkerframework/com/google/common/collect/HashBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 74
    new-instance v0, Lorg/checkerframework/com/google/common/collect/HashBiMap;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/HashBiMap;-><init>(I)V

    return-object v0
.end method

.method public static create(Ljava/util/Map;)Lorg/checkerframework/com/google/common/collect/HashBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/HashBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 82
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->create(I)Lorg/checkerframework/com/google/common/collect/HashBiMap;

    move-result-object v0

    .line 83
    .local v0, "bimap":Lorg/checkerframework/com/google/common/collect/HashBiMap;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>;"
    invoke-virtual {v0, p0}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->putAll(Ljava/util/Map;)V

    .line 84
    return-object v0
.end method

.method private createTable(I)[Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;
    .locals 1
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 379
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>;"
    new-array v0, p1, [Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    return-object v0
.end method

.method private delete(Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 135
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>;"
    .local p1, "entry":Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    iget v0, p1, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->keyHash:I

    iget v1, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->mask:I

    and-int/2addr v0, v1

    .line 136
    .local v0, "keyBucket":I
    const/4 v1, 0x0

    .line 137
    .local v1, "prevBucketEntry":Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->hashTableKToV:[Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    aget-object v2, v2, v0

    .line 140
    .local v2, "bucketEntry":Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    :goto_0
    if-ne v2, p1, :cond_5

    .line 141
    if-nez v1, :cond_0

    .line 142
    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->hashTableKToV:[Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    iget-object v4, p1, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->nextInKToVBucket:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    aput-object v4, v3, v0

    goto :goto_1

    .line 144
    :cond_0
    iget-object v3, p1, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->nextInKToVBucket:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    iput-object v3, v1, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->nextInKToVBucket:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 146
    nop

    .line 151
    .end local v2    # "bucketEntry":Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    :goto_1
    iget v2, p1, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->valueHash:I

    iget v3, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->mask:I

    and-int/2addr v3, v2

    .line 152
    .local v3, "valueBucket":I
    const/4 v1, 0x0

    .line 153
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->hashTableVToK:[Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    aget-object v2, v2, v3

    .line 156
    .restart local v2    # "bucketEntry":Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    :goto_2
    if-ne v2, p1, :cond_4

    .line 157
    if-nez v1, :cond_1

    .line 158
    iget-object v4, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->hashTableVToK:[Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    iget-object v5, p1, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->nextInVToKBucket:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    aput-object v5, v4, v3

    goto :goto_3

    .line 160
    :cond_1
    iget-object v4, p1, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->nextInVToKBucket:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    iput-object v4, v1, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->nextInVToKBucket:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 162
    nop

    .line 167
    .end local v2    # "bucketEntry":Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    :goto_3
    iget-object v2, p1, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->prevInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    if-nez v2, :cond_2

    .line 168
    iget-object v2, p1, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->nextInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    iput-object v2, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->firstInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    goto :goto_4

    .line 170
    :cond_2
    iget-object v2, p1, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->prevInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    iget-object v4, p1, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->nextInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    iput-object v4, v2, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->nextInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 173
    :goto_4
    iget-object v2, p1, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->nextInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    if-nez v2, :cond_3

    .line 174
    iget-object v2, p1, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->prevInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    iput-object v2, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->lastInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    goto :goto_5

    .line 176
    :cond_3
    iget-object v2, p1, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->nextInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    iget-object v4, p1, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->prevInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    iput-object v4, v2, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->prevInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 179
    :goto_5
    iget v2, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->size:I

    .line 180
    iget v2, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->modCount:I

    .line 181
    return-void

    .line 164
    .restart local v2    # "bucketEntry":Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    :cond_4
    move-object v1, v2

    .line 155
    iget-object v2, v2, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->nextInVToKBucket:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    goto :goto_2

    .line 148
    .end local v3    # "valueBucket":I
    :cond_5
    move-object v1, v2

    .line 139
    iget-object v2, v2, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->nextInKToVBucket:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    goto :goto_0
.end method

.method private init(I)V
    .locals 3
    .param p1, "expectedSize"    # I

    .line 119
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>;"
    const-string v0, "expectedSize"

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 120
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p1, v0, v1}, Lorg/checkerframework/com/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v0

    .line 121
    .local v0, "tableSize":I
    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->createTable(I)[Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->hashTableKToV:[Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 122
    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->createTable(I)[Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->hashTableVToK:[Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 123
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->firstInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 124
    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->lastInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 125
    const/4 v1, 0x0

    iput v1, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->size:I

    .line 126
    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->mask:I

    .line 127
    iput v1, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->modCount:I

    .line 128
    return-void
.end method

.method private insert(Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 184
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>;"
    .local p1, "entry":Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    .local p2, "oldEntryForKey":Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    iget v0, p1, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->keyHash:I

    iget v1, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->mask:I

    and-int/2addr v0, v1

    .line 185
    .local v0, "keyBucket":I
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->hashTableKToV:[Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    aget-object v1, v1, v0

    iput-object v1, p1, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->nextInKToVBucket:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 186
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->hashTableKToV:[Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    aput-object p1, v1, v0

    .line 188
    iget v1, p1, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->valueHash:I

    iget v2, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->mask:I

    and-int/2addr v1, v2

    .line 189
    .local v1, "valueBucket":I
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->hashTableVToK:[Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    aget-object v2, v2, v1

    iput-object v2, p1, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->nextInVToKBucket:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 190
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->hashTableVToK:[Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    aput-object p1, v2, v1

    .line 192
    if-nez p2, :cond_1

    .line 193
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->lastInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    iput-object v2, p1, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->prevInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 194
    const/4 v2, 0x0

    iput-object v2, p1, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->nextInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 195
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->lastInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    if-nez v2, :cond_0

    .line 196
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->firstInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    goto :goto_0

    .line 198
    :cond_0
    iput-object p1, v2, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->nextInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 200
    :goto_0
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->lastInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    goto :goto_2

    .line 202
    :cond_1
    iget-object v2, p2, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->prevInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    iput-object v2, p1, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->prevInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 203
    iget-object v2, p1, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->prevInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    if-nez v2, :cond_2

    .line 204
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->firstInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    goto :goto_1

    .line 206
    :cond_2
    iget-object v2, p1, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->prevInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    iput-object p1, v2, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->nextInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 208
    :goto_1
    iget-object v2, p2, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->nextInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    iput-object v2, p1, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->nextInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 209
    iget-object v2, p1, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->nextInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    if-nez v2, :cond_3

    .line 210
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->lastInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    goto :goto_2

    .line 212
    :cond_3
    iget-object v2, p1, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->nextInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    iput-object p1, v2, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->prevInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 216
    :goto_2
    iget v2, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->size:I

    .line 217
    iget v2, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->modCount:I

    .line 218
    return-void
.end method

.method private put(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 7
    .param p3, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;Z)TV;"
        }
    .end annotation

    .line 274
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    .line 275
    .local v0, "keyHash":I
    invoke-static {p2}, Lorg/checkerframework/com/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v1

    .line 277
    .local v1, "valueHash":I
    invoke-direct {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->seekByKey(Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    move-result-object v2

    .line 278
    .local v2, "oldEntryForKey":Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    if-eqz v2, :cond_0

    iget v3, v2, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->valueHash:I

    if-ne v1, v3, :cond_0

    iget-object v3, v2, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->value:Ljava/lang/Object;

    .line 280
    invoke-static {p2, v3}, Lorg/checkerframework/com/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 281
    return-object p2

    .line 284
    :cond_0
    invoke-direct {p0, p2, v1}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->seekByValue(Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    move-result-object v3

    .line 285
    .local v3, "oldEntryForValue":Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    if-eqz v3, :cond_2

    .line 286
    if-eqz p3, :cond_1

    .line 287
    invoke-direct {p0, v3}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->delete(Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;)V

    goto :goto_0

    .line 289
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "value already present: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 293
    :cond_2
    :goto_0
    new-instance v4, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    invoke-direct {v4, p1, v0, p2, v1}, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 294
    .local v4, "newEntry":Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    const/4 v5, 0x0

    if-eqz v2, :cond_3

    .line 295
    invoke-direct {p0, v2}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->delete(Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;)V

    .line 296
    invoke-direct {p0, v4, v2}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->insert(Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;)V

    .line 297
    iput-object v5, v2, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->prevInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 298
    iput-object v5, v2, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->nextInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 299
    iget-object v5, v2, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->value:Ljava/lang/Object;

    return-object v5

    .line 301
    :cond_3
    invoke-direct {p0, v4, v5}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->insert(Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;)V

    .line 302
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->rehashIfNecessary()V

    .line 303
    return-object v5
.end method

.method private putInverse(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 7
    .param p3, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TK;Z)TK;"
        }
    .end annotation

    .line 315
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    .line 316
    .local v0, "valueHash":I
    invoke-static {p2}, Lorg/checkerframework/com/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v1

    .line 318
    .local v1, "keyHash":I
    invoke-direct {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->seekByValue(Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    move-result-object v2

    .line 319
    .local v2, "oldEntryForValue":Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    invoke-direct {p0, p2, v1}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->seekByKey(Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    move-result-object v3

    .line 320
    .local v3, "oldEntryForKey":Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    if-eqz v2, :cond_0

    iget v4, v2, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->keyHash:I

    if-ne v1, v4, :cond_0

    iget-object v4, v2, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->key:Ljava/lang/Object;

    .line 322
    invoke-static {p2, v4}, Lorg/checkerframework/com/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 323
    return-object p2

    .line 324
    :cond_0
    if-eqz v3, :cond_2

    if-eqz p3, :cond_1

    goto :goto_0

    .line 325
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "key already present: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 335
    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 336
    invoke-direct {p0, v2}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->delete(Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;)V

    .line 339
    :cond_3
    if-eqz v3, :cond_4

    .line 340
    invoke-direct {p0, v3}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->delete(Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;)V

    .line 343
    :cond_4
    new-instance v4, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    invoke-direct {v4, p2, v1, p1, v0}, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 344
    .local v4, "newEntry":Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    invoke-direct {p0, v4, v3}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->insert(Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;)V

    .line 346
    const/4 v5, 0x0

    if-eqz v3, :cond_5

    .line 347
    iput-object v5, v3, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->prevInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 348
    iput-object v5, v3, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->nextInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 350
    :cond_5
    if-eqz v2, :cond_6

    .line 351
    iput-object v5, v2, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->prevInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 352
    iput-object v5, v2, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->nextInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 354
    :cond_6
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->rehashIfNecessary()V

    .line 355
    invoke-static {v2}, Lorg/checkerframework/com/google/common/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v5

    return-object v5
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 755
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 756
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/Serialization;->readCount(Ljava/io/ObjectInputStream;)I

    move-result v0

    .line 757
    .local v0, "size":I
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->init(I)V

    .line 758
    invoke-static {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/Serialization;->populateMap(Ljava/util/Map;Ljava/io/ObjectInputStream;I)V

    .line 759
    return-void
.end method

.method private rehashIfNecessary()V
    .locals 5

    .line 359
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->hashTableKToV:[Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 360
    .local v0, "oldKToV":[Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;, "[Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    iget v1, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->size:I

    array-length v2, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2, v3, v4}, Lorg/checkerframework/com/google/common/collect/Hashing;->needsResizing(IID)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 361
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    .line 363
    .local v1, "newTableSize":I
    invoke-direct {p0, v1}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->createTable(I)[Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->hashTableKToV:[Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 364
    invoke-direct {p0, v1}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->createTable(I)[Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->hashTableVToK:[Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 365
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->mask:I

    .line 366
    const/4 v2, 0x0

    iput v2, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->size:I

    .line 368
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->firstInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 369
    .local v2, "entry":Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    :goto_0
    if-eqz v2, :cond_0

    .line 371
    invoke-direct {p0, v2, v2}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->insert(Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;)V

    .line 370
    iget-object v2, v2, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->nextInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    goto :goto_0

    .line 373
    .end local v2    # "entry":Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    :cond_0
    iget v2, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->modCount:I

    .line 375
    .end local v1    # "newTableSize":I
    :cond_1
    return-void
.end method

.method private seekByKey(Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "keyHash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 221
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->hashTableKToV:[Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    iget v1, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->mask:I

    and-int/2addr v1, p2

    aget-object v0, v0, v1

    .line 222
    .local v0, "entry":Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 224
    iget v1, v0, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->keyHash:I

    if-ne p2, v1, :cond_0

    iget-object v1, v0, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->key:Ljava/lang/Object;

    invoke-static {p1, v1}, Lorg/checkerframework/com/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    return-object v0

    .line 223
    :cond_0
    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->nextInKToVBucket:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    goto :goto_0

    .line 228
    .end local v0    # "entry":Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private seekByValue(Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "valueHash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 232
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->hashTableVToK:[Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    iget v1, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->mask:I

    and-int/2addr v1, p2

    aget-object v0, v0, v1

    .line 233
    .local v0, "entry":Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 235
    iget v1, v0, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->valueHash:I

    if-ne p2, v1, :cond_0

    iget-object v1, v0, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->value:Ljava/lang/Object;

    invoke-static {p1, v1}, Lorg/checkerframework/com/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    return-object v0

    .line 234
    :cond_0
    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->nextInVToKBucket:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    goto :goto_0

    .line 239
    .end local v0    # "entry":Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 749
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 750
    invoke-static {p0, p1}, Lorg/checkerframework/com/google/common/collect/Serialization;->writeMap(Ljava/util/Map;Ljava/io/ObjectOutputStream;)V

    .line 751
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 399
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>;"
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->size:I

    .line 400
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->hashTableKToV:[Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 401
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->hashTableVToK:[Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 402
    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->firstInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 403
    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->lastInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 404
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->modCount:I

    .line 405
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 244
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->seekByKey(Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 259
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->seekByValue(Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 495
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/HashBiMap$1;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/HashBiMap$1;-><init>(Lorg/checkerframework/com/google/common/collect/HashBiMap;)V

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 58
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/Maps$IteratorBasedAbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 544
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->firstInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 546
    .local v0, "entry":Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 548
    iget-object v1, v0, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->key:Ljava/lang/Object;

    iget-object v2, v0, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->value:Ljava/lang/Object;

    invoke-interface {p1, v1, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 547
    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->nextInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    goto :goto_0

    .line 550
    .end local v0    # "entry":Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    :cond_0
    return-void
.end method

.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 311
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->put(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 264
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->seekByKey(Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Maps;->valueOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public inverse()Lorg/checkerframework/com/google/common/collect/BiMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/BiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 566
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->inverse:Lorg/checkerframework/com/google/common/collect/BiMap;

    .line 567
    .local v0, "result":Lorg/checkerframework/com/google/common/collect/BiMap;, "Lorg/checkerframework/com/google/common/collect/BiMap<TV;TK;>;"
    if-nez v0, :cond_0

    new-instance v1, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;-><init>(Lorg/checkerframework/com/google/common/collect/HashBiMap;Lorg/checkerframework/com/google/common/collect/HashBiMap$1;)V

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->inverse:Lorg/checkerframework/com/google/common/collect/BiMap;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 455
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/HashBiMap$KeySet;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/HashBiMap$KeySet;-><init>(Lorg/checkerframework/com/google/common/collect/HashBiMap;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 270
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->put(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 386
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->seekByKey(Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    move-result-object v0

    .line 387
    .local v0, "entry":Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 388
    return-object v1

    .line 390
    :cond_0
    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->delete(Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;)V

    .line 391
    iput-object v1, v0, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->prevInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 392
    iput-object v1, v0, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->nextInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 393
    iget-object v1, v0, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->value:Ljava/lang/Object;

    return-object v1
.end method

.method public replaceAll(Ljava/util/function/BiFunction;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .line 554
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->firstInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 556
    .local v0, "oldFirst":Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->clear()V

    .line 557
    move-object v1, v0

    .local v1, "entry":Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    :goto_0
    if-eqz v1, :cond_0

    .line 558
    iget-object v2, v1, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->key:Ljava/lang/Object;

    iget-object v3, v1, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->key:Ljava/lang/Object;

    iget-object v4, v1, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->value:Ljava/lang/Object;

    invoke-interface {p1, v3, v4}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    iget-object v1, v1, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->nextInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    goto :goto_0

    .line 560
    .end local v1    # "entry":Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .line 409
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>;"
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap;->size:I

    return v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 58
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 490
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->inverse()Lorg/checkerframework/com/google/common/collect/BiMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/BiMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
