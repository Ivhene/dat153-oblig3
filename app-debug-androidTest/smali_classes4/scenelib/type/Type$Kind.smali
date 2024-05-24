.class public final enum Lscenelib/type/Type$Kind;
.super Ljava/lang/Enum;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscenelib/type/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lscenelib/type/Type$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lscenelib/type/Type$Kind;

.field public static final enum ARRAY:Lscenelib/type/Type$Kind;

.field public static final enum BOUNDED:Lscenelib/type/Type$Kind;

.field public static final enum DECLARED:Lscenelib/type/Type$Kind;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 16
    new-instance v0, Lscenelib/type/Type$Kind;

    const-string v1, "ARRAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lscenelib/type/Type$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lscenelib/type/Type$Kind;->ARRAY:Lscenelib/type/Type$Kind;

    .line 17
    new-instance v1, Lscenelib/type/Type$Kind;

    const-string v2, "BOUNDED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lscenelib/type/Type$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lscenelib/type/Type$Kind;->BOUNDED:Lscenelib/type/Type$Kind;

    .line 18
    new-instance v2, Lscenelib/type/Type$Kind;

    const-string v3, "DECLARED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lscenelib/type/Type$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lscenelib/type/Type$Kind;->DECLARED:Lscenelib/type/Type$Kind;

    .line 15
    filled-new-array {v0, v1, v2}, [Lscenelib/type/Type$Kind;

    move-result-object v0

    sput-object v0, Lscenelib/type/Type$Kind;->$VALUES:[Lscenelib/type/Type$Kind;

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

.method public static valueOf(Ljava/lang/String;)Lscenelib/type/Type$Kind;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 15
    const-class v0, Lscenelib/type/Type$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lscenelib/type/Type$Kind;

    return-object v0
.end method

.method public static values()[Lscenelib/type/Type$Kind;
    .locals 1

    .line 15
    sget-object v0, Lscenelib/type/Type$Kind;->$VALUES:[Lscenelib/type/Type$Kind;

    invoke-virtual {v0}, [Lscenelib/type/Type$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lscenelib/type/Type$Kind;

    return-object v0
.end method
