.class public final enum Lorg/checkerframework/com/google/common/collect/BoundType;
.super Ljava/lang/Enum;
.source "BoundType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/com/google/common/collect/BoundType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/com/google/common/collect/BoundType;

.field public static final enum CLOSED:Lorg/checkerframework/com/google/common/collect/BoundType;

.field public static final enum OPEN:Lorg/checkerframework/com/google/common/collect/BoundType;


# instance fields
.field final inclusive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 29
    new-instance v0, Lorg/checkerframework/com/google/common/collect/BoundType;

    const-string v1, "OPEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/checkerframework/com/google/common/collect/BoundType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/checkerframework/com/google/common/collect/BoundType;->OPEN:Lorg/checkerframework/com/google/common/collect/BoundType;

    .line 30
    new-instance v1, Lorg/checkerframework/com/google/common/collect/BoundType;

    const-string v2, "CLOSED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lorg/checkerframework/com/google/common/collect/BoundType;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lorg/checkerframework/com/google/common/collect/BoundType;->CLOSED:Lorg/checkerframework/com/google/common/collect/BoundType;

    .line 26
    filled-new-array {v0, v1}, [Lorg/checkerframework/com/google/common/collect/BoundType;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/google/common/collect/BoundType;->$VALUES:[Lorg/checkerframework/com/google/common/collect/BoundType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p3, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput-boolean p3, p0, Lorg/checkerframework/com/google/common/collect/BoundType;->inclusive:Z

    .line 36
    return-void
.end method

.method static forBoolean(Z)Lorg/checkerframework/com/google/common/collect/BoundType;
    .locals 1
    .param p0, "inclusive"    # Z

    .line 40
    if-eqz p0, :cond_0

    sget-object v0, Lorg/checkerframework/com/google/common/collect/BoundType;->CLOSED:Lorg/checkerframework/com/google/common/collect/BoundType;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/checkerframework/com/google/common/collect/BoundType;->OPEN:Lorg/checkerframework/com/google/common/collect/BoundType;

    :goto_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/com/google/common/collect/BoundType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 26
    const-class v0, Lorg/checkerframework/com/google/common/collect/BoundType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/BoundType;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/com/google/common/collect/BoundType;
    .locals 1

    .line 26
    sget-object v0, Lorg/checkerframework/com/google/common/collect/BoundType;->$VALUES:[Lorg/checkerframework/com/google/common/collect/BoundType;

    invoke-virtual {v0}, [Lorg/checkerframework/com/google/common/collect/BoundType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/com/google/common/collect/BoundType;

    return-object v0
.end method


# virtual methods
.method flip()Lorg/checkerframework/com/google/common/collect/BoundType;
    .locals 1

    .line 44
    iget-boolean v0, p0, Lorg/checkerframework/com/google/common/collect/BoundType;->inclusive:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/BoundType;->forBoolean(Z)Lorg/checkerframework/com/google/common/collect/BoundType;

    move-result-object v0

    return-object v0
.end method
