.class Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;
.super Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;
.source "RegularImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$InverseSerializedForm;,
        Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/ImmutableBiMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field static final EMPTY:Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final MAX_LOAD_FACTOR:D = 1.2


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

.field private final transient hashCode:I

.field private transient inverse:Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableBiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation
.end field

.field private final transient keyTable:[Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient mask:I

.field private final transient valueTable:[Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;
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
    .locals 7

    .line 44
    new-instance v6, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v0, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->EMPTY_ENTRY_ARRAY:[Ljava/util/Map$Entry;

    move-object v3, v0

    check-cast v3, [Ljava/util/Map$Entry;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;-><init>([Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;[Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;[Ljava/util/Map$Entry;II)V

    sput-object v6, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;->EMPTY:Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;

    return-void
.end method

.method private constructor <init>([Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;[Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;[Ljava/util/Map$Entry;II)V
    .locals 0
    .param p4, "mask"    # I
    .param p5, "hashCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<",
            "TK;TV;>;[",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<",
            "TK;TV;>;[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;II)V"
        }
    .end annotation

    .line 111
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    .local p1, "keyTable":[Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;, "[Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    .local p2, "valueTable":[Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;, "[Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    .local p3, "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<TK;TV;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;-><init>()V

    .line 112
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;->keyTable:[Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;

    .line 113
    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;->valueTable:[Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;

    .line 114
    iput-object p3, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;->entries:[Ljava/util/Map$Entry;

    .line 115
    iput p4, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;->mask:I

    .line 116
    iput p5, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;->hashCode:I

    .line 117
    return-void
.end method

.method static synthetic access$100(Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;)[Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;

    .line 43
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;->valueTable:[Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;

    return-object v0
.end method

.method static synthetic access$200(Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;)I
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;

    .line 43
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;->mask:I

    return v0
.end method

.method static synthetic access$300(Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;)I
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;

    .line 43
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;->hashCode:I

    return v0
.end method

.method private static checkNoConflictInValueBucket(Ljava/lang/Object;Ljava/util/Map$Entry;Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;)I
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;
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

    .line 128
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .local p2, "valueBucketHead":Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<**>;"
    const/4 v0, 0x0

    .line 129
    .local v0, "bucketSize":I
    :goto_0
    if-eqz p2, :cond_0

    .line 130
    invoke-virtual {p2}, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "value"

    invoke-static {v1, v2, p1, p2}, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;->checkNoConflict(ZLjava/lang/String;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    .line 131
    add-int/lit8 v0, v0, 0x1

    .line 129
    invoke-virtual {p2}, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;->getNextInValueBucket()Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;

    move-result-object p2

    goto :goto_0

    .line 133
    :cond_0
    return v0
.end method

.method static varargs fromEntries([Ljava/util/Map$Entry;)Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;
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
            "Lorg/checkerframework/com/google/common/collect/ImmutableBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 57
    .local p0, "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<TK;TV;>;"
    array-length v0, p0

    invoke-static {v0, p0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;->fromEntryArray(I[Ljava/util/Map$Entry;)Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method static fromEntryArray(I[Ljava/util/Map$Entry;)Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;
    .locals 20
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
            "Lorg/checkerframework/com/google/common/collect/ImmutableBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 61
    .local p1, "entryArray":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<TK;TV;>;"
    move/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    invoke-static {v0, v2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 62
    const-wide v2, 0x3ff3333333333333L    # 1.2

    invoke-static {v0, v2, v3}, Lorg/checkerframework/com/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v2

    .line 63
    .local v2, "tableSize":I
    add-int/lit8 v9, v2, -0x1

    .line 64
    .local v9, "mask":I
    invoke-static {v2}, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;->createEntryArray(I)[Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;

    move-result-object v10

    .line 65
    .local v10, "keyTable":[Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;, "[Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    invoke-static {v2}, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;->createEntryArray(I)[Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;

    move-result-object v11

    .line 67
    .local v11, "valueTable":[Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;, "[Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    array-length v3, v1

    if-ne v0, v3, :cond_0

    .line 68
    move-object/from16 v3, p1

    move-object v12, v3

    .local v3, "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_0

    .line 70
    .end local v3    # "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    invoke-static/range {p0 .. p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;->createEntryArray(I)[Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;

    move-result-object v3

    move-object v12, v3

    .line 72
    .local v12, "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<TK;TV;>;"
    :goto_0
    const/4 v3, 0x0

    .line 74
    .local v3, "hashCode":I
    const/4 v4, 0x0

    move v13, v3

    .end local v3    # "hashCode":I
    .local v4, "i":I
    .local v13, "hashCode":I
    :goto_1
    if-ge v4, v0, :cond_4

    .line 76
    aget-object v3, v1, v4

    .line 77
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 78
    .local v5, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 79
    .local v6, "value":Ljava/lang/Object;, "TV;"
    invoke-static {v5, v6}, Lorg/checkerframework/com/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v7

    .line 81
    .local v7, "keyHash":I
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v8

    .line 82
    .local v8, "valueHash":I
    invoke-static {v7}, Lorg/checkerframework/com/google/common/collect/Hashing;->smear(I)I

    move-result v14

    and-int/2addr v14, v9

    .line 83
    .local v14, "keyBucket":I
    invoke-static {v8}, Lorg/checkerframework/com/google/common/collect/Hashing;->smear(I)I

    move-result v15

    and-int/2addr v15, v9

    .line 85
    .local v15, "valueBucket":I
    aget-object v0, v10, v14

    .line 86
    .local v0, "nextInKeyBucket":Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    invoke-static {v5, v3, v0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;->checkNoConflictInKeyBucket(Ljava/lang/Object;Ljava/util/Map$Entry;Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;)I

    move-result v1

    .line 87
    .local v1, "keyBucketLength":I
    move/from16 v16, v2

    .end local v2    # "tableSize":I
    .local v16, "tableSize":I
    aget-object v2, v11, v15

    .line 88
    .local v2, "nextInValueBucket":Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    move/from16 v17, v9

    .end local v9    # "mask":I
    .local v17, "mask":I
    invoke-static {v6, v3, v2}, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;->checkNoConflictInValueBucket(Ljava/lang/Object;Ljava/util/Map$Entry;Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;)I

    move-result v9

    .line 89
    .local v9, "valueBucketLength":I
    move/from16 v18, v13

    .end local v13    # "hashCode":I
    .local v18, "hashCode":I
    const/16 v13, 0x8

    if-gt v1, v13, :cond_3

    if-le v9, v13, :cond_1

    goto :goto_3

    .line 93
    :cond_1
    if-nez v2, :cond_2

    if-nez v0, :cond_2

    .line 95
    invoke-static {v3, v5, v6}, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;->makeImmutable(Ljava/util/Map$Entry;Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;

    move-result-object v13

    goto :goto_2

    :cond_2
    new-instance v13, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry$NonTerminalImmutableBiMapEntry;

    invoke-direct {v13, v5, v6, v0, v2}, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry$NonTerminalImmutableBiMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;)V

    .line 98
    .local v13, "newEntry":Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    :goto_2
    aput-object v13, v10, v14

    .line 99
    aput-object v13, v11, v15

    .line 100
    aput-object v13, v12, v4

    .line 101
    xor-int v19, v7, v8

    add-int v13, v18, v19

    .line 74
    .end local v0    # "nextInKeyBucket":Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    .end local v1    # "keyBucketLength":I
    .end local v2    # "nextInValueBucket":Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v5    # "key":Ljava/lang/Object;, "TK;"
    .end local v6    # "value":Ljava/lang/Object;, "TV;"
    .end local v7    # "keyHash":I
    .end local v8    # "valueHash":I
    .end local v9    # "valueBucketLength":I
    .end local v14    # "keyBucket":I
    .end local v15    # "valueBucket":I
    .end local v18    # "hashCode":I
    .local v13, "hashCode":I
    add-int/lit8 v4, v4, 0x1

    move/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    move/from16 v9, v17

    goto :goto_1

    .line 91
    .end local v13    # "hashCode":I
    .restart local v0    # "nextInKeyBucket":Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    .restart local v1    # "keyBucketLength":I
    .restart local v2    # "nextInValueBucket":Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .restart local v5    # "key":Ljava/lang/Object;, "TK;"
    .restart local v6    # "value":Ljava/lang/Object;, "TV;"
    .restart local v7    # "keyHash":I
    .restart local v8    # "valueHash":I
    .restart local v9    # "valueBucketLength":I
    .restart local v14    # "keyBucket":I
    .restart local v15    # "valueBucket":I
    .restart local v18    # "hashCode":I
    :cond_3
    :goto_3
    invoke-static/range {p0 .. p1}, Lorg/checkerframework/com/google/common/collect/JdkBackedImmutableBiMap;->create(I[Ljava/util/Map$Entry;)Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;

    move-result-object v13

    return-object v13

    .line 74
    .end local v0    # "nextInKeyBucket":Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    .end local v1    # "keyBucketLength":I
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v5    # "key":Ljava/lang/Object;, "TK;"
    .end local v6    # "value":Ljava/lang/Object;, "TV;"
    .end local v7    # "keyHash":I
    .end local v8    # "valueHash":I
    .end local v14    # "keyBucket":I
    .end local v15    # "valueBucket":I
    .end local v16    # "tableSize":I
    .end local v17    # "mask":I
    .end local v18    # "hashCode":I
    .local v2, "tableSize":I
    .local v9, "mask":I
    .restart local v13    # "hashCode":I
    :cond_4
    move/from16 v17, v9

    move/from16 v18, v13

    .line 103
    .end local v4    # "i":I
    .end local v9    # "mask":I
    .end local v13    # "hashCode":I
    .restart local v17    # "mask":I
    .restart local v18    # "hashCode":I
    new-instance v0, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;

    move-object v3, v0

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    move/from16 v7, v17

    move/from16 v8, v18

    invoke-direct/range {v3 .. v8}, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;-><init>([Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;[Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;[Ljava/util/Map$Entry;II)V

    return-object v0
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

    .line 143
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->of()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;->entries:[Ljava/util/Map$Entry;

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableMap;[Ljava/util/Map$Entry;)V

    .line 143
    :goto_0
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

    .line 150
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableMapKeySet;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMapKeySet;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableMap;)V

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

    .line 155
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;->entries:[Ljava/util/Map$Entry;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 157
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
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

    .line 138
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;->keyTable:[Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;->mask:I

    invoke-static {p1, v0, v1}, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap;->get(Ljava/lang/Object;[Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 168
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;->hashCode:I

    return v0
.end method

.method public bridge synthetic inverse()Lorg/checkerframework/com/google/common/collect/BiMap;
    .locals 1

    .line 41
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;->inverse()Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public inverse()Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableBiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 185
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;->of()Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0

    .line 188
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;->inverse:Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;

    .line 189
    .local v0, "result":Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableBiMap<TV;TK;>;"
    if-nez v0, :cond_1

    new-instance v1, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$Inverse;-><init>(Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$1;)V

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;->inverse:Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method isHashCodeFast()Z
    .locals 1

    .line 163
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method isPartialView()Z
    .locals 1

    .line 173
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .line 178
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;->entries:[Ljava/util/Map$Entry;

    array-length v0, v0

    return v0
.end method
