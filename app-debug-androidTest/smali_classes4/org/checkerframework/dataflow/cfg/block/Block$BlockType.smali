.class public final enum Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;
.super Ljava/lang/Enum;
.source "Block.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/cfg/block/Block;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BlockType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

.field public static final enum CONDITIONAL_BLOCK:Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

.field public static final enum EXCEPTION_BLOCK:Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

.field public static final enum REGULAR_BLOCK:Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

.field public static final enum SPECIAL_BLOCK:Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 10
    new-instance v0, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    const-string v1, "REGULAR_BLOCK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->REGULAR_BLOCK:Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    .line 13
    new-instance v1, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    const-string v2, "CONDITIONAL_BLOCK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->CONDITIONAL_BLOCK:Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    .line 16
    new-instance v2, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    const-string v3, "SPECIAL_BLOCK"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->SPECIAL_BLOCK:Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    .line 19
    new-instance v3, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    const-string v4, "EXCEPTION_BLOCK"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->EXCEPTION_BLOCK:Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    .line 7
    filled-new-array {v0, v1, v2, v3}, [Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->$VALUES:[Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 7
    const-class v0, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;
    .locals 1

    .line 7
    sget-object v0, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->$VALUES:[Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    invoke-virtual {v0}, [Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    return-object v0
.end method
