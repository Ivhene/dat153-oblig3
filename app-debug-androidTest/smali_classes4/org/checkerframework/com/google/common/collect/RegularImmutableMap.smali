.class final Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;
.super Lorg/checkerframework/com/google/common/collect/ImmutableMap;
.source "RegularImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/collect/RegularImmutableMap$Values;,
        Lorg/checkerframework/com/google/common/collect/RegularImmutableMap$KeySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field static final EMPTY:Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final HASH_FLOODING_FPP:D = 0.001

.field static final MAX_HASH_BUCKET_LENGTH:I = 0x8

.field static final MAX_LOAD_FACTOR:D = 1.2

.field private static final serialVersionUID:J


# instance fields
.field final transient entries:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient mask:I

.field private final transient table:[Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 43
    new-instance v0, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;

    sget-object v1, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->EMPTY_ENTRY_ARRAY:[Ljava/util/Map$Entry;

    check-cast v1, [Ljava/util/Map$Entry;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;-><init>([Ljava/util/Map$Entry;[Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;I)V

    sput-object v0, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;->EMPTY:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    return-void
.end method

.method private constructor <init>([Ljava/util/Map$Entry;[Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;I)V
    .locals 0
    .param p3, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;[",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<",
            "TK;TV;>;I)V"
        }
    .end annotation

    .line 131
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableMap<TK;TV;>;"
    .local p1, "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<TK;TV;>;"
    .local p2, "table":[Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;, "[Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;-><init>()V

    .line 132
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;->entries:[Ljava/util/Map$Entry;

    .line 133
    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;->table:[Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;

    .line 134
    iput p3, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;->mask:I

    .line 135
    return-void
.end method

.method static checkNoConflictInKeyBucket(Ljava/lang/Object;Ljava/util/Map$Entry;Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;)I
    .locals 3
    .param p0, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map$Entry<",
            "**>;",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<",
            "**>;)I"
        }
    .end annotation

    .line 144
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .local p2, "keyBucketHead":Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<**>;"
    const/4 v0, 0x0

    .line 145
    .local v0, "bucketSize":I
    :goto_0
    if-eqz p2, :cond_0

    .line 146
    invoke-virtual {p2}, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "key"

    invoke-static {v1, v2, p1, p2}, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;->checkNoConflict(ZLjava/lang/String;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    .line 147
    add-int/lit8 v0, v0, 0x1

    .line 145
    invoke-virtual {p2}, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;->getNextInKeyBucket()Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;

    move-result-object p2

    goto :goto_0

    .line 149
    :cond_0
    return v0
.end method

.method static varargs fromEntries([Ljava/util/Map$Entry;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 73
    .local p0, "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<TK;TV;>;"
    array-length v0, p0

    invoke-static {v0, p0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;->fromEntryArray(I[Ljava/util/Map$Entry;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method static fromEntryArray(I[Ljava/util/Map$Entry;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 13
    .param p0, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 82
    .local p1, "entryArray":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<TK;TV;>;"
    array-length v0, p1

    invoke-static {p0, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 83
    if-nez p0, :cond_0

    .line 84
    sget-object v0, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;->EMPTY:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    check-cast v0, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;

    return-object v0

    .line 87
    :cond_0
    array-length v0, p1

    if-ne p0, v0, :cond_1

    .line 88
    move-object v0, p1

    .local v0, "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_0

    .line 90
    .end local v0    # "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<TK;TV;>;"
    :cond_1
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;->createEntryArray(I)[Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;

    move-result-object v0

    .line 92
    .restart local v0    # "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<TK;TV;>;"
    :goto_0
    const-wide v1, 0x3ff3333333333333L    # 1.2

    invoke-static {p0, v1, v2}, Lorg/checkerframework/com/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v1

    .line 93
    .local v1, "tableSize":I
    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;->createEntryArray(I)[Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;

    move-result-object v2

    .line 94
    .local v2, "table":[Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;, "[Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    add-int/lit8 v3, v1, -0x1

    .line 95
    .local v3, "mask":I
    const/4 v4, 0x0

    .local v4, "entryIndex":I
    :goto_1
    if-ge v4, p0, :cond_4

    .line 96
    aget-object v5, p1, v4

    .line 97
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 98
    .local v6, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 99
    .local v7, "value":Ljava/lang/Object;, "TV;"
    invoke-static {v6, v7}, Lorg/checkerframework/com/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Lorg/checkerframework/com/google/common/collect/Hashing;->smear(I)I

    move-result v8

    and-int/2addr v8, v3

    .line 101
    .local v8, "tableIndex":I
    aget-object v9, v2, v8

    .line 103
    .local v9, "existing":Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    if-nez v9, :cond_2

    .line 105
    invoke-static {v5, v6, v7}, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;->makeImmutable(Ljava/util/Map$Entry;Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;

    move-result-object v10

    goto :goto_2

    :cond_2
    new-instance v10, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry$NonTerminalImmutableMapEntry;

    invoke-direct {v10, v6, v7, v9}, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry$NonTerminalImmutableMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;)V

    .line 107
    .local v10, "newEntry":Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    :goto_2
    aput-object v10, v2, v8

    .line 108
    aput-object v10, v0, v4

    .line 109
    invoke-static {v6, v10, v9}, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;->checkNoConflictInKeyBucket(Ljava/lang/Object;Ljava/util/Map$Entry;Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;)I

    move-result v11

    .line 110
    .local v11, "bucketSize":I
    const/16 v12, 0x8

    if-le v11, v12, :cond_3

    .line 113
    invoke-static {p0, p1}, Lorg/checkerframework/com/google/common/collect/JdkBackedImmutableMap;->create(I[Ljava/util/Map$Entry;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v12

    return-object v12

    .line 95
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v6    # "key":Ljava/lang/Object;, "TK;"
    .end local v7    # "value":Ljava/lang/Object;, "TV;"
    .end local v8    # "tableIndex":I
    .end local v9    # "existing":Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    .end local v10    # "newEntry":Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    .end local v11    # "bucketSize":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 116
    .end local v4    # "entryIndex":I
    :cond_4
    new-instance v4, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;

    invoke-direct {v4, v0, v2, v3}, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;-><init>([Ljava/util/Map$Entry;[Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;I)V

    return-object v4
.end method

.method static get(Ljava/lang/Object;[Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;I)Ljava/lang/Object;
    .locals 5
    .param p0, "key"    # Ljava/lang/Object;
    .param p2, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "[",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<",
            "*TV;>;I)TV;"
        }
    .end annotation

    .line 159
    .local p1, "keyTable":[Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;, "[Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<*TV;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 162
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/Hashing;->smear(I)I

    move-result v1

    and-int/2addr v1, p2

    .line 163
    .local v1, "index":I
    aget-object v2, p1, v1

    .line 164
    .local v2, "entry":Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<*TV;>;"
    :goto_0
    if-eqz v2, :cond_2

    .line 166
    invoke-virtual {v2}, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 174
    .local v3, "candidateKey":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 175
    invoke-virtual {v2}, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 165
    .end local v3    # "candidateKey":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v2}, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;->getNextInKeyBucket()Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;

    move-result-object v2

    goto :goto_0

    .line 178
    .end local v2    # "entry":Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<*TV;>;"
    :cond_2
    return-object v0

    .line 160
    .end local v1    # "index":I
    :cond_3
    :goto_1
    return-object v0
.end method

.method static makeImmutable(Ljava/util/Map$Entry;)Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 128
    .local p0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;->makeImmutable(Ljava/util/Map$Entry;Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;

    move-result-object v0

    return-object v0
.end method

.method static makeImmutable(Ljava/util/Map$Entry;Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;TK;TV;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 121
    .local p0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    instance-of v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;

    .line 122
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;->isReusable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 123
    .local v0, "reusable":Z
    :goto_0
    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;

    goto :goto_1

    :cond_1
    new-instance v1, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;

    invoke-direct {v1, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-object v1
.end method


# virtual methods
.method createEntrySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 201
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableMap<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;->entries:[Ljava/util/Map$Entry;

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableMap;[Ljava/util/Map$Entry;)V

    return-object v0
.end method

.method createKeySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "TK;>;"
        }
    .end annotation

    .line 206
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableMap<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap$KeySet;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap$KeySet;-><init>(Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;)V

    return-object v0
.end method

.method createValues()Lorg/checkerframework/com/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    .line 261
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableMap<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap$Values;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap$Values;-><init>(Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;)V

    return-object v0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 183
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableMap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;->entries:[Ljava/util/Map$Entry;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 185
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 184
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    :cond_0
    return-void
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

    .line 154
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;->table:[Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;

    iget v1, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;->mask:I

    invoke-static {p1, v0, v1}, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;->get(Ljava/lang/Object;[Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .line 196
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableMap<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .line 191
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;->entries:[Ljava/util/Map$Entry;

    array-length v0, v0

    return v0
.end method
