.class public Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceState;
.super Ljava/lang/Object;
.source "DeviceState.java"


# static fields
.field protected static final HYPHEN_SPLITTER:Lcom/google/common/base/Splitter;


# instance fields
.field private final defaultDisplayInfo:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo;

.field protected final locale:Ljava/util/Locale;

.field protected final sdkVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const/16 v0, 0x2d

    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceState;->HYPHEN_SPLITTER:Lcom/google/common/base/Splitter;

    return-void
.end method

.method protected constructor <init>(ILjava/util/Locale;)V
    .locals 1
    .param p1, "sdkVersion"    # I
    .param p2, "locale"    # Ljava/util/Locale;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceState;->sdkVersion:I

    .line 52
    iput-object p2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceState;->locale:Ljava/util/Locale;

    .line 53
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo;

    invoke-direct {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceState;->defaultDisplayInfo:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo;

    .line 54
    return-void
.end method

.method constructor <init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;)V
    .locals 2
    .param p1, "fromProto"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->getSdkVersion()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceState;->sdkVersion:I

    .line 44
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo;

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->getDefaultDisplayInfo()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;)V

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceState;->defaultDisplayInfo:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo;

    .line 45
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->getLocale()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "languageTag":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceState;->getLocaleFromLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceState;->locale:Ljava/util/Locale;

    .line 48
    return-void
.end method

.method private getLanguageTag()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceState;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getLocaleFromLanguageTag(Ljava/lang/String;)Ljava/util/Locale;
    .locals 1
    .param p0, "languageTag"    # Ljava/lang/String;

    .line 87
    invoke-static {p0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultDisplayInfo()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceState;->defaultDisplayInfo:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceState;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getSdkVersion()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceState;->sdkVersion:I

    return v0
.end method

.method toProto()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;
    .locals 2

    .line 75
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->newBuilder()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto$Builder;

    move-result-object v0

    .line 76
    .local v0, "builder":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto$Builder;
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceState;->sdkVersion:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto$Builder;->setSdkVersion(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto$Builder;

    .line 77
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceState;->getDefaultDisplayInfo()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo;->toProto()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto$Builder;->setDefaultDisplayInfo(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto$Builder;

    .line 78
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceState;->getLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto$Builder;->setLocale(Ljava/lang/String;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto$Builder;

    .line 79
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    return-object v1
.end method
