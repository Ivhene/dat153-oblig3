.class Lorg/mockito/internal/configuration/plugins/DefaultPluginSwitch;
.super Ljava/lang/Object;
.source "DefaultPluginSwitch.java"

# interfaces
.implements Lorg/mockito/plugins/PluginSwitch;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pluginClassName"    # Ljava/lang/String;

    .line 12
    const/4 v0, 0x1

    return v0
.end method
