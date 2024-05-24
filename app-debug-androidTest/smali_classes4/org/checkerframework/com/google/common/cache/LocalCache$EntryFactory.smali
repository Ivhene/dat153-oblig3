.class abstract enum Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;
.super Ljava/lang/Enum;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "EntryFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;

.field static final ACCESS_MASK:I = 0x1

.field public static final enum STRONG:Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;

.field public static final enum STRONG_ACCESS:Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;

.field public static final enum STRONG_ACCESS_WRITE:Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;

.field public static final enum STRONG_WRITE:Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;

.field public static final enum WEAK:Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;

.field public static final enum WEAK_ACCESS:Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;

.field public static final enum WEAK_ACCESS_WRITE:Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;

.field static final WEAK_MASK:I = 0x4

.field public static final enum WEAK_WRITE:Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;

.field static final WRITE_MASK:I = 0x2

.field static final factories:[Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 441
    new-instance v0, Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory$1;

    const-string v1, "STRONG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;->STRONG:Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;

    .line 448
    new-instance v1, Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory$2;

    const-string v3, "STRONG_ACCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;->STRONG_ACCESS:Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;

    .line 463
    new-instance v3, Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory$3;

    const-string v5, "STRONG_WRITE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;->STRONG_WRITE:Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;

    .line 478
    new-instance v5, Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory$4;

    const-string v7, "STRONG_ACCESS_WRITE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;->STRONG_ACCESS_WRITE:Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;

    .line 494
    new-instance v7, Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory$5;

    const-string v9, "WEAK"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory$5;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;->WEAK:Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;

    .line 501
    new-instance v9, Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory$6;

    const-string v11, "WEAK_ACCESS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory$6;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;->WEAK_ACCESS:Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;

    .line 516
    new-instance v11, Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory$7;

    const-string v13, "WEAK_WRITE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory$7;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;->WEAK_WRITE:Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;

    .line 531
    new-instance v13, Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory$8;

    const-string v15, "WEAK_ACCESS_WRITE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory$8;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;->WEAK_ACCESS_WRITE:Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;

    .line 440
    const/16 v15, 0x8

    new-array v14, v15, [Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    aput-object v9, v14, v12

    const/16 v16, 0x6

    aput-object v11, v14, v16

    const/16 v17, 0x7

    aput-object v13, v14, v17

    sput-object v14, Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;->$VALUES:[Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;

    .line 555
    new-array v14, v15, [Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    aput-object v9, v14, v12

    aput-object v11, v14, v16

    aput-object v13, v14, v17

    sput-object v14, Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;->factories:[Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 440
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/checkerframework/com/google/common/cache/LocalCache$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/checkerframework/com/google/common/cache/LocalCache$1;

    .line 440
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static getFactory(Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;ZZ)Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;
    .locals 2
    .param p0, "keyStrength"    # Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;
    .param p1, "usesAccessQueue"    # Z
    .param p2, "usesWriteQueue"    # Z

    .line 568
    sget-object v0, Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;->WEAK:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p1

    if-eqz p2, :cond_1

    const/4 v1, 0x2

    :cond_1
    or-int/2addr v0, v1

    .line 572
    .local v0, "flags":I
    sget-object v1, Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;->factories:[Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 440
    const-class v0, Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;
    .locals 1

    .line 440
    sget-object v0, Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;->$VALUES:[Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;

    invoke-virtual {v0}, [Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;

    return-object v0
.end method


# virtual methods
.method copyAccessEntry(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 602
    .local p1, "original":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    .local p2, "newEntry":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->getAccessTime()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->setAccessTime(J)V

    .line 604
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->getPreviousInAccessQueue()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/checkerframework/com/google/common/cache/LocalCache;->connectAccessOrder(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)V

    .line 605
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->getNextInAccessQueue()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->connectAccessOrder(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)V

    .line 607
    invoke-static {p1}, Lorg/checkerframework/com/google/common/cache/LocalCache;->nullifyAccessOrder(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)V

    .line 608
    return-void
.end method

.method copyEntry(Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;Lorg/checkerframework/com/google/common/cache/ReferenceEntry;Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)Lorg/checkerframework/com/google/common/cache/ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/cache/LocalCache$Segment<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 595
    .local p1, "segment":Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;, "Lorg/checkerframework/com/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p2, "original":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    .local p3, "newNext":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-interface {p2}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->getHash()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p3}, Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;->newEntry(Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;Ljava/lang/Object;ILorg/checkerframework/com/google/common/cache/ReferenceEntry;)Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method copyWriteEntry(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 614
    .local p1, "original":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    .local p2, "newEntry":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->getWriteTime()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->setWriteTime(J)V

    .line 616
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->getPreviousInWriteQueue()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/checkerframework/com/google/common/cache/LocalCache;->connectWriteOrder(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)V

    .line 617
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->getNextInWriteQueue()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->connectWriteOrder(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)V

    .line 619
    invoke-static {p1}, Lorg/checkerframework/com/google/common/cache/LocalCache;->nullifyWriteOrder(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)V

    .line 620
    return-void
.end method

.method abstract newEntry(Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;Ljava/lang/Object;ILorg/checkerframework/com/google/common/cache/ReferenceEntry;)Lorg/checkerframework/com/google/common/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/cache/LocalCache$Segment<",
            "TK;TV;>;TK;I",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end method
