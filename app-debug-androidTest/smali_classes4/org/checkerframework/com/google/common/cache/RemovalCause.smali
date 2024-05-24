.class public abstract enum Lorg/checkerframework/com/google/common/cache/RemovalCause;
.super Ljava/lang/Enum;
.source "RemovalCause.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/com/google/common/cache/RemovalCause;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/com/google/common/cache/RemovalCause;

.field public static final enum COLLECTED:Lorg/checkerframework/com/google/common/cache/RemovalCause;

.field public static final enum EXPIRED:Lorg/checkerframework/com/google/common/cache/RemovalCause;

.field public static final enum EXPLICIT:Lorg/checkerframework/com/google/common/cache/RemovalCause;

.field public static final enum REPLACED:Lorg/checkerframework/com/google/common/cache/RemovalCause;

.field public static final enum SIZE:Lorg/checkerframework/com/google/common/cache/RemovalCause;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 35
    new-instance v0, Lorg/checkerframework/com/google/common/cache/RemovalCause$1;

    const-string v1, "EXPLICIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/cache/RemovalCause$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/com/google/common/cache/RemovalCause;->EXPLICIT:Lorg/checkerframework/com/google/common/cache/RemovalCause;

    .line 48
    new-instance v1, Lorg/checkerframework/com/google/common/cache/RemovalCause$2;

    const-string v3, "REPLACED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/checkerframework/com/google/common/cache/RemovalCause$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/com/google/common/cache/RemovalCause;->REPLACED:Lorg/checkerframework/com/google/common/cache/RemovalCause;

    .line 60
    new-instance v3, Lorg/checkerframework/com/google/common/cache/RemovalCause$3;

    const-string v5, "COLLECTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/checkerframework/com/google/common/cache/RemovalCause$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/checkerframework/com/google/common/cache/RemovalCause;->COLLECTED:Lorg/checkerframework/com/google/common/cache/RemovalCause;

    .line 71
    new-instance v5, Lorg/checkerframework/com/google/common/cache/RemovalCause$4;

    const-string v7, "EXPIRED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/checkerframework/com/google/common/cache/RemovalCause$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/checkerframework/com/google/common/cache/RemovalCause;->EXPIRED:Lorg/checkerframework/com/google/common/cache/RemovalCause;

    .line 82
    new-instance v7, Lorg/checkerframework/com/google/common/cache/RemovalCause$5;

    const-string v9, "SIZE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/checkerframework/com/google/common/cache/RemovalCause$5;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/checkerframework/com/google/common/cache/RemovalCause;->SIZE:Lorg/checkerframework/com/google/common/cache/RemovalCause;

    .line 28
    const/4 v9, 0x5

    new-array v9, v9, [Lorg/checkerframework/com/google/common/cache/RemovalCause;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lorg/checkerframework/com/google/common/cache/RemovalCause;->$VALUES:[Lorg/checkerframework/com/google/common/cache/RemovalCause;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/checkerframework/com/google/common/cache/RemovalCause$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/checkerframework/com/google/common/cache/RemovalCause$1;

    .line 29
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/cache/RemovalCause;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/com/google/common/cache/RemovalCause;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 28
    const-class v0, Lorg/checkerframework/com/google/common/cache/RemovalCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/cache/RemovalCause;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/com/google/common/cache/RemovalCause;
    .locals 1

    .line 28
    sget-object v0, Lorg/checkerframework/com/google/common/cache/RemovalCause;->$VALUES:[Lorg/checkerframework/com/google/common/cache/RemovalCause;

    invoke-virtual {v0}, [Lorg/checkerframework/com/google/common/cache/RemovalCause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/com/google/common/cache/RemovalCause;

    return-object v0
.end method


# virtual methods
.method abstract wasEvicted()Z
.end method
