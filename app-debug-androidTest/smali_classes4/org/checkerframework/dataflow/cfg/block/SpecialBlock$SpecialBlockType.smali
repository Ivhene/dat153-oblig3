.class public final enum Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;
.super Ljava/lang/Enum;
.source "SpecialBlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SpecialBlockType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;

.field public static final enum ENTRY:Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;

.field public static final enum EXCEPTIONAL_EXIT:Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;

.field public static final enum EXIT:Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 18
    new-instance v0, Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;

    const-string v1, "ENTRY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;->ENTRY:Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;

    .line 21
    new-instance v1, Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;

    const-string v2, "EXIT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;->EXIT:Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;

    .line 24
    new-instance v2, Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;

    const-string v3, "EXCEPTIONAL_EXIT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;->EXCEPTIONAL_EXIT:Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;

    .line 15
    filled-new-array {v0, v1, v2}, [Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;->$VALUES:[Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 15
    const-class v0, Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;
    .locals 1

    .line 15
    sget-object v0, Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;->$VALUES:[Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;

    invoke-virtual {v0}, [Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;

    return-object v0
.end method
