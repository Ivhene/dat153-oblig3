.class public Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid$Builder;
.super Ljava/lang/Object;
.source "DeviceStateAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final defaultDisplayInfo:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid;

.field private final locale:Ljava/util/Locale;

.field private final sdkVersion:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 142
    .local v0, "wm":Landroid/view/WindowManager;
    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid;-><init>(Landroid/view/Display;)V

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid$Builder;->defaultDisplayInfo:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid;

    .line 143
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid$Builder;->sdkVersion:I

    .line 144
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid$Builder;->locale:Ljava/util/Locale;

    .line 145
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "fromParcel"    # Landroid/os/Parcel;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid;

    invoke-direct {v0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid$Builder;->defaultDisplayInfo:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid$Builder;->sdkVersion:I

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;->access$000(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid$Builder;->locale:Ljava/util/Locale;

    .line 151
    return-void
.end method

.method constructor <init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;)V
    .locals 2
    .param p1, "fromProto"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->getSdkVersion()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid$Builder;->sdkVersion:I

    .line 155
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid;

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->getDefaultDisplayInfo()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;)V

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid$Builder;->defaultDisplayInfo:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid;

    .line 156
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->getLocale()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "languageTag":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;->access$000(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid$Builder;->locale:Ljava/util/Locale;

    .line 160
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;
    .locals 5

    .line 163
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;

    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid$Builder;->sdkVersion:I

    iget-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid$Builder;->locale:Ljava/util/Locale;

    iget-object v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid$Builder;->defaultDisplayInfo:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;-><init>(ILjava/util/Locale;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid$1;)V

    return-object v0
.end method
