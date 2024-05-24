.class Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;
.super Ljava/util/AbstractMap;
.source "MapMakerInternalMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$SerializationProxy;,
        Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;,
        Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$SafeToArraySet;,
        Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$EntrySet;,
        Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Values;,
        Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$KeySet;,
        Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$EntryIterator;,
        Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WriteThroughEntry;,
        Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$ValueIterator;,
        Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$KeyIterator;,
        Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;,
        Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$CleanupMapTask;,
        Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;,
        Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;,
        Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;,
        Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;,
        Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;,
        Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;,
        Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;,
        Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReferenceImpl;,
        Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$DummyInternalEntry;,
        Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;,
        Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;,
        Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;,
        Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;,
        Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;,
        Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;,
        Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;,
        Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;,
        Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueEntry;,
        Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongValueEntry;,
        Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractStrongKeyEntry;,
        Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;,
        Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntryHelper;,
        Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E::",
        "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<",
        "TK;TV;TE;>;S:",
        "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<",
        "TK;TV;TE;TS;>;>",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final CLEANUP_EXECUTOR_DELAY_SECS:J = 0x3cL

.field static final CONTAINS_VALUE_RETRIES:I = 0x3

.field static final DRAIN_MAX:I = 0x10

.field static final DRAIN_THRESHOLD:I = 0x3f

.field static final MAXIMUM_CAPACITY:I = 0x40000000

.field static final MAX_SEGMENTS:I = 0x10000

.field static final UNSET_WEAK_VALUE_REFERENCE:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$DummyInternalEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x5L


# instance fields
.field final concurrencyLevel:I

.field final transient entryHelper:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntryHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntryHelper<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation
.end field

.field transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final keyEquivalence:Lorg/checkerframework/com/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field final transient segmentMask:I

.field final transient segmentShift:I

.field final transient segments:[Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation
.end field

.field transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1001
    new-instance v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$1;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$1;-><init>()V

    sput-object v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->UNSET_WEAK_VALUE_REFERENCE:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;

    return-void
.end method

.method private constructor <init>(Lorg/checkerframework/com/google/common/collect/MapMaker;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntryHelper;)V
    .locals 8
    .param p1, "builder"    # Lorg/checkerframework/com/google/common/collect/MapMaker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/MapMaker;",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntryHelper<",
            "TK;TV;TE;TS;>;)V"
        }
    .end annotation

    .line 161
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    .local p2, "entryHelper":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntryHelper;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntryHelper<TK;TV;TE;TS;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 162
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/MapMaker;->getConcurrencyLevel()I

    move-result v0

    const/high16 v1, 0x10000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->concurrencyLevel:I

    .line 164
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/MapMaker;->getKeyEquivalence()Lorg/checkerframework/com/google/common/base/Equivalence;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lorg/checkerframework/com/google/common/base/Equivalence;

    .line 165
    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->entryHelper:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    .line 167
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/MapMaker;->getInitialCapacity()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 171
    .local v0, "initialCapacity":I
    const/4 v1, 0x0

    .line 172
    .local v1, "segmentShift":I
    const/4 v2, 0x1

    .line 173
    .local v2, "segmentCount":I
    :goto_0
    iget v3, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->concurrencyLevel:I

    if-ge v2, v3, :cond_0

    .line 174
    add-int/lit8 v1, v1, 0x1

    .line 175
    shl-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    :cond_0
    rsub-int/lit8 v3, v1, 0x20

    iput v3, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->segmentShift:I

    .line 178
    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->segmentMask:I

    .line 180
    invoke-virtual {p0, v2}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->newSegmentArray(I)[Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v3

    iput-object v3, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->segments:[Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;

    .line 182
    div-int v3, v0, v2

    .line 183
    .local v3, "segmentCapacity":I
    mul-int v4, v3, v2

    if-ge v4, v0, :cond_1

    .line 184
    add-int/lit8 v3, v3, 0x1

    .line 187
    :cond_1
    const/4 v4, 0x1

    .line 188
    .local v4, "segmentSize":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 189
    shl-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 192
    :cond_2
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    iget-object v6, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->segments:[Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;

    array-length v7, v6

    if-ge v5, v7, :cond_3

    .line 193
    const/4 v7, -0x1

    invoke-virtual {p0, v4, v7}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->createSegment(II)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v7

    aput-object v7, v6, v5

    .line 192
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 195
    .end local v5    # "i":I
    :cond_3
    return-void
.end method

.method static synthetic access$900(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Ljava/util/Collection;

    .line 70
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->toArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static create(Lorg/checkerframework/com/google/common/collect/MapMaker;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;
    .locals 2
    .param p0, "builder"    # Lorg/checkerframework/com/google/common/collect/MapMaker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/MapMaker;",
            ")",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<",
            "TK;TV;+",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;*>;"
        }
    .end annotation

    .line 200
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMaker;->getKeyStrength()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    if-ne v0, v1, :cond_0

    .line 201
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMaker;->getValueStrength()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    if-ne v0, v1, :cond_0

    .line 202
    new-instance v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;->instance()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;-><init>(Lorg/checkerframework/com/google/common/collect/MapMaker;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntryHelper;)V

    return-object v0

    .line 204
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMaker;->getKeyStrength()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    if-ne v0, v1, :cond_1

    .line 205
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMaker;->getValueStrength()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;->WEAK:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    if-ne v0, v1, :cond_1

    .line 206
    new-instance v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;->instance()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;-><init>(Lorg/checkerframework/com/google/common/collect/MapMaker;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntryHelper;)V

    return-object v0

    .line 208
    :cond_1
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMaker;->getKeyStrength()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;->WEAK:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    if-ne v0, v1, :cond_2

    .line 209
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMaker;->getValueStrength()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    if-ne v0, v1, :cond_2

    .line 210
    new-instance v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;->instance()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;-><init>(Lorg/checkerframework/com/google/common/collect/MapMaker;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntryHelper;)V

    return-object v0

    .line 212
    :cond_2
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMaker;->getKeyStrength()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;->WEAK:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMaker;->getValueStrength()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;->WEAK:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    if-ne v0, v1, :cond_3

    .line 213
    new-instance v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;->instance()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;-><init>(Lorg/checkerframework/com/google/common/collect/MapMaker;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntryHelper;)V

    return-object v0

    .line 215
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static createWithDummyValues(Lorg/checkerframework/com/google/common/collect/MapMaker;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;
    .locals 2
    .param p0, "builder"    # Lorg/checkerframework/com/google/common/collect/MapMaker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/MapMaker;",
            ")",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<",
            "TK;",
            "Lorg/checkerframework/com/google/common/collect/MapMaker$Dummy;",
            "+",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;",
            "Lorg/checkerframework/com/google/common/collect/MapMaker$Dummy;",
            "*>;*>;"
        }
    .end annotation

    .line 231
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMaker;->getKeyStrength()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    if-ne v0, v1, :cond_0

    .line 232
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMaker;->getValueStrength()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    if-ne v0, v1, :cond_0

    .line 233
    new-instance v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;->instance()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;-><init>(Lorg/checkerframework/com/google/common/collect/MapMaker;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntryHelper;)V

    return-object v0

    .line 235
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMaker;->getKeyStrength()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;->WEAK:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    if-ne v0, v1, :cond_1

    .line 236
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMaker;->getValueStrength()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    if-ne v0, v1, :cond_1

    .line 237
    new-instance v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;->instance()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;-><init>(Lorg/checkerframework/com/google/common/collect/MapMaker;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntryHelper;)V

    return-object v0

    .line 239
    :cond_1
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMaker;->getValueStrength()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;->WEAK:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    if-ne v0, v1, :cond_2

    .line 240
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Map cannot have both weak and dummy values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static rehash(I)I
    .locals 2
    .param p0, "h"    # I

    .line 1056
    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr p0, v0

    .line 1057
    ushr-int/lit8 v0, p0, 0xa

    xor-int/2addr p0, v0

    .line 1058
    shl-int/lit8 v0, p0, 0x3

    add-int/2addr p0, v0

    .line 1059
    ushr-int/lit8 v0, p0, 0x6

    xor-int/2addr p0, v0

    .line 1060
    shl-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0xe

    add-int/2addr v0, v1

    add-int/2addr p0, v0

    .line 1061
    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr v0, p0

    return v0
.end method

.method private static toArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation

    .line 2823
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2824
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 2825
    return-object v0
.end method

.method static unsetWeakValueReference()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "E::",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;TE;>;>()",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference<",
            "TK;TV;TE;>;"
        }
    .end annotation

    .line 386
    sget-object v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->UNSET_WEAK_VALUE_REFERENCE:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 2471
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->segments:[Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2472
    .local v3, "segment":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    invoke-virtual {v3}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->clear()V

    .line 2471
    .end local v3    # "segment":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2474
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 2358
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    if-nez p1, :cond_0

    .line 2359
    const/4 v0, 0x0

    return v0

    .line 2361
    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 2362
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->containsKey(Ljava/lang/Object;I)Z

    move-result v1

    return v1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 16
    .param p1, "value"    # Ljava/lang/Object;

    .line 2367
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2368
    return v1

    .line 2376
    :cond_0
    move-object/from16 v2, p0

    iget-object v3, v2, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->segments:[Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;

    .line 2377
    .local v3, "segments":[Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "[Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    const-wide/16 v4, -0x1

    .line 2378
    .local v4, "last":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/4 v7, 0x3

    if-ge v6, v7, :cond_6

    .line 2379
    const-wide/16 v7, 0x0

    .line 2380
    .local v7, "sum":J
    array-length v9, v3

    move v10, v1

    :goto_1
    if-ge v10, v9, :cond_4

    aget-object v11, v3, v10

    .line 2382
    .local v11, "segment":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    iget v12, v11, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 2384
    .local v12, "unused":I
    iget-object v13, v11, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2385
    .local v13, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_2
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v15

    if-ge v14, v15, :cond_3

    .line 2386
    invoke-virtual {v13, v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    .local v15, "e":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :goto_3
    if-eqz v15, :cond_2

    .line 2387
    invoke-virtual {v11, v15}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->getLiveValue(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Ljava/lang/Object;

    move-result-object v1

    .line 2388
    .local v1, "v":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->valueEquivalence()Lorg/checkerframework/com/google/common/base/Equivalence;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/checkerframework/com/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2389
    const/4 v2, 0x1

    return v2

    .line 2386
    .end local v1    # "v":Ljava/lang/Object;, "TV;"
    :cond_1
    invoke-interface {v15}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v15

    move-object/from16 v2, p0

    const/4 v1, 0x0

    goto :goto_3

    .line 2385
    .end local v15    # "e":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :cond_2
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p0

    const/4 v1, 0x0

    goto :goto_2

    .line 2393
    .end local v14    # "j":I
    :cond_3
    iget v1, v11, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    int-to-long v1, v1

    add-long/2addr v7, v1

    .line 2380
    .end local v11    # "segment":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .end local v12    # "unused":I
    .end local v13    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, p0

    const/4 v1, 0x0

    goto :goto_1

    .line 2395
    :cond_4
    cmp-long v1, v7, v4

    if-nez v1, :cond_5

    .line 2396
    goto :goto_4

    .line 2398
    :cond_5
    move-wide v4, v7

    .line 2378
    .end local v7    # "sum":J
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, p0

    const/4 v1, 0x0

    goto :goto_0

    .line 2400
    .end local v6    # "i":I
    :cond_6
    :goto_4
    const/4 v1, 0x0

    return v1
.end method

.method copyEntry(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)TE;"
        }
    .end annotation

    .line 1070
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    .local p1, "original":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .local p2, "newNext":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v0

    .line 1071
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->copyEntry(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v1

    return-object v1
.end method

.method createSegment(II)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;
    .locals 1
    .param p1, "initialCapacity"    # I
    .param p2, "maxSegmentSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation

    .line 1111
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->entryHelper:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    invoke-interface {v0, p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntryHelper;->newSegment(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;II)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2496
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->entrySet:Ljava/util/Set;

    .line 2497
    .local v0, "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$EntrySet;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$EntrySet;-><init>(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;)V

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->entrySet:Ljava/util/Set;

    :goto_0
    return-object v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 2337
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    if-nez p1, :cond_0

    .line 2338
    const/4 v0, 0x0

    return-object v0

    .line 2340
    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 2341
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method getEntry(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    .line 2349
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    if-nez p1, :cond_0

    .line 2350
    const/4 v0, 0x0

    return-object v0

    .line 2352
    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 2353
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->getEntry(Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v1

    return-object v1
.end method

.method getLiveValue(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TV;"
        }
    .end annotation

    .line 1119
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    .local p1, "entry":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1120
    const/4 v0, 0x0

    return-object v0

    .line 1122
    :cond_0
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method hash(Ljava/lang/Object;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 1075
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lorg/checkerframework/com/google/common/base/Equivalence;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/base/Equivalence;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1076
    .local v0, "h":I
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->rehash(I)I

    move-result v1

    return v1
.end method

.method public isEmpty()Z
    .locals 9

    .line 2302
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    const-wide/16 v0, 0x0

    .line 2303
    .local v0, "sum":J
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->segments:[Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;

    .line 2304
    .local v2, "segments":[Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "[Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    const/4 v5, 0x0

    if-ge v3, v4, :cond_1

    .line 2305
    aget-object v4, v2, v3

    iget v4, v4, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v4, :cond_0

    .line 2306
    return v5

    .line 2308
    :cond_0
    aget-object v4, v2, v3

    iget v4, v4, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 2304
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2311
    .end local v3    # "i":I
    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v6, v0, v3

    if-eqz v6, :cond_4

    .line 2312
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v7, v2

    if-ge v6, v7, :cond_3

    .line 2313
    aget-object v7, v2, v6

    iget v7, v7, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v7, :cond_2

    .line 2314
    return v5

    .line 2316
    :cond_2
    aget-object v7, v2, v6

    iget v7, v7, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    int-to-long v7, v7

    sub-long/2addr v0, v7

    .line 2312
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2318
    .end local v6    # "i":I
    :cond_3
    cmp-long v3, v0, v3

    if-eqz v3, :cond_4

    .line 2319
    return v5

    .line 2322
    :cond_4
    const/4 v3, 0x1

    return v3
.end method

.method isLiveForTesting(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;)Z"
        }
    .end annotation

    .line 1096
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    .local p1, "entry":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->getLiveValueForTesting(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 2480
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->keySet:Ljava/util/Set;

    .line 2481
    .local v0, "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$KeySet;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$KeySet;-><init>(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;)V

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->keySet:Ljava/util/Set;

    :goto_0
    return-object v1
.end method

.method keyStrength()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;
    .locals 1

    .line 2278
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->entryHelper:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntryHelper;->keyStrength()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    return-object v0
.end method

.method final newSegmentArray(I)[Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;
    .locals 1
    .param p1, "ssize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation

    .line 1127
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    new-array v0, p1, [Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 2406
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2407
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2408
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 2409
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 2423
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2424
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2425
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    goto :goto_0

    .line 2426
    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 2415
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2416
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2417
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 2418
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method reclaimKey(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1086
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    .local p1, "entry":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v0

    .line 1087
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->reclaimKey(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;I)Z

    .line 1088
    return-void
.end method

.method reclaimValue(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference<",
            "TK;TV;TE;>;)V"
        }
    .end annotation

    .line 1080
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    .local p1, "valueReference":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference<TK;TV;TE;>;"
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;->getEntry()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    .line 1081
    .local v0, "entry":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v1

    .line 1082
    .local v1, "hash":I
    invoke-virtual {p0, v1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v2

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, v1, p1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->reclaimValue(Ljava/lang/Object;ILorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;)Z

    .line 1083
    return-void
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

    .line 2431
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    if-nez p1, :cond_0

    .line 2432
    const/4 v0, 0x0

    return-object v0

    .line 2434
    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 2435
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 2441
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 2444
    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 2445
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v1

    return v1

    .line 2442
    .end local v0    # "hash":I
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 2463
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2464
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2465
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 2466
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 2451
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2452
    invoke-static {p3}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2453
    if-nez p2, :cond_0

    .line 2454
    const/4 v0, 0x0

    return v0

    .line 2456
    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 2457
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method segmentFor(I)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;
    .locals 3
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation

    .line 1107
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->segments:[Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;

    iget v1, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->segmentShift:I

    ushr-int v1, p1, v1

    iget v2, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->segmentMask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public size()I
    .locals 6

    .line 2327
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->segments:[Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;

    .line 2328
    .local v0, "segments":[Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "[Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    const-wide/16 v1, 0x0

    .line 2329
    .local v1, "sum":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 2330
    aget-object v4, v0, v3

    iget v4, v4, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->count:I

    int-to-long v4, v4

    add-long/2addr v1, v4

    .line 2329
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2332
    .end local v3    # "i":I
    :cond_0
    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v3

    return v3
.end method

.method valueEquivalence()Lorg/checkerframework/com/google/common/base/Equivalence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2288
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->entryHelper:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntryHelper;->valueStrength()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;->defaultEquivalence()Lorg/checkerframework/com/google/common/base/Equivalence;

    move-result-object v0

    return-object v0
.end method

.method valueStrength()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;
    .locals 1

    .line 2283
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->entryHelper:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntryHelper;->valueStrength()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 2488
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->values:Ljava/util/Collection;

    .line 2489
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Values;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Values;-><init>(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;)V

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->values:Ljava/util/Collection;

    :goto_0
    return-object v1
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 8

    .line 2833
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    new-instance v7, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$SerializationProxy;

    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->entryHelper:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    .line 2834
    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntryHelper;->keyStrength()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v1

    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->entryHelper:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    .line 2835
    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntryHelper;->valueStrength()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lorg/checkerframework/com/google/common/base/Equivalence;

    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->entryHelper:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    .line 2837
    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntryHelper;->valueStrength()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;->defaultEquivalence()Lorg/checkerframework/com/google/common/base/Equivalence;

    move-result-object v4

    iget v5, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->concurrencyLevel:I

    move-object v0, v7

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$SerializationProxy;-><init>(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;Lorg/checkerframework/com/google/common/base/Equivalence;Lorg/checkerframework/com/google/common/base/Equivalence;ILjava/util/concurrent/ConcurrentMap;)V

    .line 2833
    return-object v7
.end method
