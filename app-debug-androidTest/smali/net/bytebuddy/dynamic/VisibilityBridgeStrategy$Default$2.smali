.class final enum Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy$Default$2;
.super Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy$Default;
.source "VisibilityBridgeStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/dynamic/VisibilityBridgeStrategy$1;)V

    return-void
.end method


# virtual methods
.method public generateVisibilityBridge(Lnet/bytebuddy/description/method/MethodDescription;)Z
    .locals 1
    .param p1, "methodDescription"    # Lnet/bytebuddy/description/method/MethodDescription;

    .line 60
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->isGenerified()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
