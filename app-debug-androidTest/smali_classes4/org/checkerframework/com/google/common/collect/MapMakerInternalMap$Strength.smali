.class abstract enum Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;
.super Ljava/lang/Enum;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "Strength"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

.field public static final enum STRONG:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

.field public static final enum WEAK:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 246
    new-instance v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength$1;

    const-string v1, "STRONG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    .line 253
    new-instance v1, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength$2;

    const-string v3, "WEAK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;->WEAK:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    .line 245
    const/4 v3, 0x2

    new-array v3, v3, [Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;->$VALUES:[Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 245
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/checkerframework/com/google/common/collect/MapMakerInternalMap$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$1;

    .line 245
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 245
    const-class v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;
    .locals 1

    .line 245
    sget-object v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;->$VALUES:[Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {v0}, [Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

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
