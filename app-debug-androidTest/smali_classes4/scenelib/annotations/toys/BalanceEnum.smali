.class public final enum Lscenelib/annotations/toys/BalanceEnum;
.super Ljava/lang/Enum;
.source "BalanceEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lscenelib/annotations/toys/BalanceEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lscenelib/annotations/toys/BalanceEnum;

.field public static final enum BALANCED:Lscenelib/annotations/toys/BalanceEnum;

.field public static final enum LEFT_HEAVY:Lscenelib/annotations/toys/BalanceEnum;

.field public static final enum RIGHT_HEAVY:Lscenelib/annotations/toys/BalanceEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lscenelib/annotations/toys/BalanceEnum;

    const-string v1, "BALANCED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lscenelib/annotations/toys/BalanceEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lscenelib/annotations/toys/BalanceEnum;->BALANCED:Lscenelib/annotations/toys/BalanceEnum;

    new-instance v1, Lscenelib/annotations/toys/BalanceEnum;

    const-string v2, "LEFT_HEAVY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lscenelib/annotations/toys/BalanceEnum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lscenelib/annotations/toys/BalanceEnum;->LEFT_HEAVY:Lscenelib/annotations/toys/BalanceEnum;

    new-instance v2, Lscenelib/annotations/toys/BalanceEnum;

    const-string v3, "RIGHT_HEAVY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lscenelib/annotations/toys/BalanceEnum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lscenelib/annotations/toys/BalanceEnum;->RIGHT_HEAVY:Lscenelib/annotations/toys/BalanceEnum;

    .line 3
    filled-new-array {v0, v1, v2}, [Lscenelib/annotations/toys/BalanceEnum;

    move-result-object v0

    sput-object v0, Lscenelib/annotations/toys/BalanceEnum;->$VALUES:[Lscenelib/annotations/toys/BalanceEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lscenelib/annotations/toys/BalanceEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lscenelib/annotations/toys/BalanceEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/toys/BalanceEnum;

    return-object v0
.end method

.method public static values()[Lscenelib/annotations/toys/BalanceEnum;
    .locals 1

    .line 3
    sget-object v0, Lscenelib/annotations/toys/BalanceEnum;->$VALUES:[Lscenelib/annotations/toys/BalanceEnum;

    invoke-virtual {v0}, [Lscenelib/annotations/toys/BalanceEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lscenelib/annotations/toys/BalanceEnum;

    return-object v0
.end method
