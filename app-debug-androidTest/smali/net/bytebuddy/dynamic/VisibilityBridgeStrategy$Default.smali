.class public abstract enum Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy$Default;
.super Ljava/lang/Enum;
.source "VisibilityBridgeStrategy.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy$Default;",
        ">;",
        "Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy$Default;

.field public static final enum ALWAYS:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy$Default;

.field public static final enum NEVER:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy$Default;

.field public static final enum ON_NON_GENERIC_METHOD:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy$Default;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 43
    new-instance v0, Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy$Default$1;

    const-string v1, "ALWAYS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy$Default$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy$Default;->ALWAYS:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy$Default;

    .line 55
    new-instance v1, Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy$Default$2;

    const-string v3, "ON_NON_GENERIC_METHOD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy$Default$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy$Default;->ON_NON_GENERIC_METHOD:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy$Default;

    .line 67
    new-instance v3, Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy$Default$3;

    const-string v5, "NEVER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy$Default$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy$Default;->NEVER:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy$Default;

    .line 38
    const/4 v5, 0x3

    new-array v5, v5, [Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy$Default;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy$Default;->$VALUES:[Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy$Default;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/bytebuddy/dynamic/VisibilityBridgeStrategy$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy$1;

    .line 38
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy$Default;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy$Default;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 38
    const-class v0, Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy$Default;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy$Default;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy$Default;
    .locals 1

    .line 38
    sget-object v0, Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy$Default;->$VALUES:[Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy$Default;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy$Default;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy$Default;

    return-object v0
.end method
