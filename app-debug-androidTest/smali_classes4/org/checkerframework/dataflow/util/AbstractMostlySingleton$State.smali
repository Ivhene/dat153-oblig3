.class public final enum Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;
.super Ljava/lang/Enum;
.source "AbstractMostlySingleton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;

.field public static final enum ANY:Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;

.field public static final enum EMPTY:Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;

.field public static final enum SINGLETON:Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 18
    new-instance v0, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;

    const-string v1, "EMPTY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;->EMPTY:Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;

    .line 20
    new-instance v1, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;

    const-string v2, "SINGLETON"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;->SINGLETON:Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;

    .line 22
    new-instance v2, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;

    const-string v3, "ANY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;->ANY:Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;

    .line 16
    filled-new-array {v0, v1, v2}, [Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;->$VALUES:[Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 16
    const-class v0, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;
    .locals 1

    .line 16
    sget-object v0, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;->$VALUES:[Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;

    invoke-virtual {v0}, [Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;

    return-object v0
.end method
