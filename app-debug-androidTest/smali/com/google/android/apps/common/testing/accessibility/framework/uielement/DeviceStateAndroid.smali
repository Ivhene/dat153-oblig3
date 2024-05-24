.class public Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;
.super Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceState;
.source "DeviceStateAndroid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid$Builder;
    }
.end annotation


# instance fields
.field private final defaultDisplayInfo:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid;


# direct methods
.method private constructor <init>(ILjava/util/Locale;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid;)V
    .locals 0
    .param p1, "sdkVersion"    # I
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "defaultDisplayInfo"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid;

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceState;-><init>(ILjava/util/Locale;)V

    .line 43
    iput-object p3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;->defaultDisplayInfo:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid;

    .line 44
    return-void
.end method

.method synthetic constructor <init>(ILjava/util/Locale;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/util/Locale;
    .param p3, "x2"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid;
    .param p4, "x3"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid$1;

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;-><init>(ILjava/util/Locale;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid;)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/util/Locale;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 36
    invoke-static {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;->getLocaleFromLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private getLanguageTag()Ljava/lang/String;
    .locals 1

    .line 68
    nop

    .line 69
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getLocaleFromLanguageTag(Ljava/lang/String;)Ljava/util/Locale;
    .locals 1
    .param p0, "languageTag"    # Ljava/lang/String;

    .line 76
    nop

    .line 77
    invoke-static {p0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method static getLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .line 117
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;->HYPHEN_SPLITTER:Lcom/google/common/base/Splitter;

    invoke-virtual {v0, p0}, Lcom/google/common/base/Splitter;->splitToList(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    .line 118
    .local v0, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    .line 126
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "Unsupported locale string: "

    if-eqz v3, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 124
    :pswitch_0
    new-instance v1, Ljava/util/Locale;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v1, v3, v2, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 122
    :pswitch_1
    new-instance v1, Ljava/util/Locale;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 120
    :pswitch_2
    new-instance v1, Ljava/util/Locale;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 126
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getStringFromLocale(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .param p0, "locale"    # Ljava/util/Locale;

    .line 106
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5f

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static newBuilder(Landroid/content/Context;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid$Builder;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 85
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static newBuilder(Landroid/os/Parcel;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid$Builder;
    .locals 1
    .param p0, "fromParcel"    # Landroid/os/Parcel;

    .line 90
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid$Builder;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method static newBuilder(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid$Builder;
    .locals 2
    .param p0, "fromProto"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    .line 95
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid$Builder;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    invoke-direct {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid$Builder;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultDisplayInfo()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;->getDefaultDisplayInfo()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultDisplayInfo()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;->defaultDisplayInfo:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid;

    return-object v0
.end method

.method toProto()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;
    .locals 2

    .line 60
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->newBuilder()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto$Builder;

    move-result-object v0

    .line 61
    .local v0, "builder":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto$Builder;
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;->sdkVersion:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto$Builder;->setSdkVersion(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto$Builder;

    .line 62
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;->defaultDisplayInfo:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid;

    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid;->toProto()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto$Builder;->setDefaultDisplayInfo(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto$Builder;

    .line 63
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;->getLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto$Builder;->setLocale(Ljava/lang/String;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto$Builder;

    .line 64
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    return-object v1
.end method

.method writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 53
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;->defaultDisplayInfo:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 54
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;->sdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;->getLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    return-void
.end method
