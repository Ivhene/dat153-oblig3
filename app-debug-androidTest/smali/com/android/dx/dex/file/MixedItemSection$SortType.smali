.class final enum Lcom/android/dx/dex/file/MixedItemSection$SortType;
.super Ljava/lang/Enum;
.source "MixedItemSection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/dex/file/MixedItemSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SortType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/dx/dex/file/MixedItemSection$SortType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/dx/dex/file/MixedItemSection$SortType;

.field public static final enum INSTANCE:Lcom/android/dx/dex/file/MixedItemSection$SortType;

.field public static final enum NONE:Lcom/android/dx/dex/file/MixedItemSection$SortType;

.field public static final enum TYPE:Lcom/android/dx/dex/file/MixedItemSection$SortType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 43
    new-instance v0, Lcom/android/dx/dex/file/MixedItemSection$SortType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/dx/dex/file/MixedItemSection$SortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dx/dex/file/MixedItemSection$SortType;->NONE:Lcom/android/dx/dex/file/MixedItemSection$SortType;

    .line 46
    new-instance v1, Lcom/android/dx/dex/file/MixedItemSection$SortType;

    const-string v2, "TYPE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/dx/dex/file/MixedItemSection$SortType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/dx/dex/file/MixedItemSection$SortType;->TYPE:Lcom/android/dx/dex/file/MixedItemSection$SortType;

    .line 49
    new-instance v2, Lcom/android/dx/dex/file/MixedItemSection$SortType;

    const-string v3, "INSTANCE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/dx/dex/file/MixedItemSection$SortType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/dx/dex/file/MixedItemSection$SortType;->INSTANCE:Lcom/android/dx/dex/file/MixedItemSection$SortType;

    .line 41
    filled-new-array {v0, v1, v2}, [Lcom/android/dx/dex/file/MixedItemSection$SortType;

    move-result-object v0

    sput-object v0, Lcom/android/dx/dex/file/MixedItemSection$SortType;->$VALUES:[Lcom/android/dx/dex/file/MixedItemSection$SortType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/dx/dex/file/MixedItemSection$SortType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 41
    const-class v0, Lcom/android/dx/dex/file/MixedItemSection$SortType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/file/MixedItemSection$SortType;

    return-object v0
.end method

.method public static values()[Lcom/android/dx/dex/file/MixedItemSection$SortType;
    .locals 1

    .line 41
    sget-object v0, Lcom/android/dx/dex/file/MixedItemSection$SortType;->$VALUES:[Lcom/android/dx/dex/file/MixedItemSection$SortType;

    invoke-virtual {v0}, [Lcom/android/dx/dex/file/MixedItemSection$SortType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/dx/dex/file/MixedItemSection$SortType;

    return-object v0
.end method