.class abstract enum Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;
.super Ljava/lang/Enum;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "Strength"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

.field public static final enum SOFT:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

.field public static final enum STRONG:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

.field public static final enum WEAK:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 382
    new-instance v0, Lorg/checkerframework/com/google/common/cache/LocalCache$Strength$1;

    const-string v1, "STRONG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/cache/LocalCache$Strength$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;->STRONG:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    .line 396
    new-instance v1, Lorg/checkerframework/com/google/common/cache/LocalCache$Strength$2;

    const-string v3, "SOFT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/checkerframework/com/google/common/cache/LocalCache$Strength$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;->SOFT:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    .line 411
    new-instance v3, Lorg/checkerframework/com/google/common/cache/LocalCache$Strength$3;

    const-string v5, "WEAK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/checkerframework/com/google/common/cache/LocalCache$Strength$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;->WEAK:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    .line 376
    const/4 v5, 0x3

    new-array v5, v5, [Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;->$VALUES:[Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 376
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/checkerframework/com/google/common/cache/LocalCache$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/checkerframework/com/google/common/cache/LocalCache$1;

    .line 376
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 376
    const-class v0, Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;
    .locals 1

    .line 376
    sget-object v0, Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;->$VALUES:[Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    invoke-virtual {v0}, [Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    return-object v0
.end method


# virtual methods
.method abstract defaultEquivalence()Lorg/checkerframework/com/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method abstract referenceValue(Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;Lorg/checkerframework/com/google/common/cache/ReferenceEntry;Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/cache/LocalCache$ValueReference;
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
            "TK;TV;>;TV;I)",
            "Lorg/checkerframework/com/google/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation
.end method
