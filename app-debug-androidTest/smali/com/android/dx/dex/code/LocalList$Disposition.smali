.class public final enum Lcom/android/dx/dex/code/LocalList$Disposition;
.super Ljava/lang/Enum;
.source "LocalList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/dex/code/LocalList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Disposition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/dx/dex/code/LocalList$Disposition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/dx/dex/code/LocalList$Disposition;

.field public static final enum END_CLOBBERED_BY_NEXT:Lcom/android/dx/dex/code/LocalList$Disposition;

.field public static final enum END_CLOBBERED_BY_PREV:Lcom/android/dx/dex/code/LocalList$Disposition;

.field public static final enum END_MOVED:Lcom/android/dx/dex/code/LocalList$Disposition;

.field public static final enum END_REPLACED:Lcom/android/dx/dex/code/LocalList$Disposition;

.field public static final enum END_SIMPLY:Lcom/android/dx/dex/code/LocalList$Disposition;

.field public static final enum START:Lcom/android/dx/dex/code/LocalList$Disposition;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 92
    new-instance v0, Lcom/android/dx/dex/code/LocalList$Disposition;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/dx/dex/code/LocalList$Disposition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dx/dex/code/LocalList$Disposition;->START:Lcom/android/dx/dex/code/LocalList$Disposition;

    .line 95
    new-instance v1, Lcom/android/dx/dex/code/LocalList$Disposition;

    const-string v2, "END_SIMPLY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/dx/dex/code/LocalList$Disposition;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/dx/dex/code/LocalList$Disposition;->END_SIMPLY:Lcom/android/dx/dex/code/LocalList$Disposition;

    .line 98
    new-instance v2, Lcom/android/dx/dex/code/LocalList$Disposition;

    const-string v3, "END_REPLACED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/dx/dex/code/LocalList$Disposition;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/dx/dex/code/LocalList$Disposition;->END_REPLACED:Lcom/android/dx/dex/code/LocalList$Disposition;

    .line 101
    new-instance v3, Lcom/android/dx/dex/code/LocalList$Disposition;

    const-string v4, "END_MOVED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/dx/dex/code/LocalList$Disposition;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/dx/dex/code/LocalList$Disposition;->END_MOVED:Lcom/android/dx/dex/code/LocalList$Disposition;

    .line 107
    new-instance v4, Lcom/android/dx/dex/code/LocalList$Disposition;

    const-string v5, "END_CLOBBERED_BY_PREV"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/android/dx/dex/code/LocalList$Disposition;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/dx/dex/code/LocalList$Disposition;->END_CLOBBERED_BY_PREV:Lcom/android/dx/dex/code/LocalList$Disposition;

    .line 113
    new-instance v5, Lcom/android/dx/dex/code/LocalList$Disposition;

    const-string v6, "END_CLOBBERED_BY_NEXT"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/android/dx/dex/code/LocalList$Disposition;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/dx/dex/code/LocalList$Disposition;->END_CLOBBERED_BY_NEXT:Lcom/android/dx/dex/code/LocalList$Disposition;

    .line 90
    filled-new-array/range {v0 .. v5}, [Lcom/android/dx/dex/code/LocalList$Disposition;

    move-result-object v0

    sput-object v0, Lcom/android/dx/dex/code/LocalList$Disposition;->$VALUES:[Lcom/android/dx/dex/code/LocalList$Disposition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/dx/dex/code/LocalList$Disposition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 90
    const-class v0, Lcom/android/dx/dex/code/LocalList$Disposition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/code/LocalList$Disposition;

    return-object v0
.end method

.method public static values()[Lcom/android/dx/dex/code/LocalList$Disposition;
    .locals 1

    .line 90
    sget-object v0, Lcom/android/dx/dex/code/LocalList$Disposition;->$VALUES:[Lcom/android/dx/dex/code/LocalList$Disposition;

    invoke-virtual {v0}, [Lcom/android/dx/dex/code/LocalList$Disposition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/dx/dex/code/LocalList$Disposition;

    return-object v0
.end method
