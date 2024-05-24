.class public final enum Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;
.super Ljava/lang/Enum;
.source "ElementOrder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/graph/ElementOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;

.field public static final enum INSERTION:Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;

.field public static final enum SORTED:Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;

.field public static final enum UNORDERED:Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 65
    new-instance v0, Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;

    const-string v1, "UNORDERED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;->UNORDERED:Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;

    .line 66
    new-instance v1, Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;

    const-string v2, "INSERTION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;->INSERTION:Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;

    .line 67
    new-instance v2, Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;

    const-string v3, "SORTED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;->SORTED:Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;

    .line 64
    filled-new-array {v0, v1, v2}, [Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;->$VALUES:[Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 64
    const-class v0, Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;
    .locals 1

    .line 64
    sget-object v0, Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;->$VALUES:[Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;

    invoke-virtual {v0}, [Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;

    return-object v0
.end method
