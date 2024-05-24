.class public Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;
.super Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;
.source "AccessibilityHierarchyAndroid.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;,
        Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$ViewElementClassNamesAndroid;
    }
.end annotation


# static fields
.field private static final AT_17:Z

.field private static final AT_22:Z

.field private static final AT_29:Z

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "A11yHierarchyAndroid"


# instance fields
.field private final activeWindow:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

.field private final deviceState:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;

.field private final windowHierarchyElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->AT_29:Z

    .line 68
    sput-boolean v2, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->AT_22:Z

    .line 69
    sput-boolean v2, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->AT_17:Z

    .line 518
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$1;

    invoke-direct {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$ViewElementClassNamesAndroid;)V
    .locals 0
    .param p1, "deviceState"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;
    .param p3, "activeWindow"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    .param p4, "viewElementClassNames"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$ViewElementClassNamesAndroid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;",
            ">;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$ViewElementClassNamesAndroid;",
            ")V"
        }
    .end annotation

    .line 84
    .local p2, "windowHierarchyElements":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceState;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy$ViewElementClassNames;)V

    .line 85
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->deviceState:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;

    .line 86
    iput-object p2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->windowHierarchyElements:Ljava/util/List;

    .line 87
    iput-object p3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->activeWindow:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    .line 88
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$ViewElementClassNamesAndroid;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;
    .param p2, "x1"    # Ljava/util/List;
    .param p3, "x2"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    .param p4, "x3"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$ViewElementClassNamesAndroid;
    .param p5, "x4"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$1;

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$ViewElementClassNamesAndroid;)V

    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;
    .locals 1
    .param p0, "x0"    # Landroid/os/Parcel;

    .line 63
    invoke-static {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->readFromParcel(Landroid/os/Parcel;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;Landroid/content/Context;Lcom/google/common/collect/BiMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/google/common/collect/BiMap;

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->resolveAccessibilityTraversalRelationshipsAmongViews(Landroid/content/Context;Lcom/google/common/collect/BiMap;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;Lcom/google/common/collect/BiMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;
    .param p1, "x1"    # Lcom/google/common/collect/BiMap;

    .line 63
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->resolveLabelForRelationshipsAmongInfos(Lcom/google/common/collect/BiMap;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;Lcom/google/common/collect/BiMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;
    .param p1, "x1"    # Lcom/google/common/collect/BiMap;

    .line 63
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->resolveAccessibilityTraversalRelationshipsAmongInfos(Lcom/google/common/collect/BiMap;)V

    return-void
.end method

.method static synthetic access$1300()Z
    .locals 1

    .line 63
    sget-boolean v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->AT_29:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;Lcom/google/common/collect/BiMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;
    .param p1, "x1"    # Lcom/google/common/collect/BiMap;

    .line 63
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->resolveTouchDelegateRelationshipsAmongInfos(Lcom/google/common/collect/BiMap;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/view/accessibility/AccessibilityWindowInfo;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;Lcom/google/common/collect/BiMap;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    .locals 1
    .param p0, "x0"    # Landroid/view/accessibility/AccessibilityWindowInfo;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    .param p3, "x3"    # Lcom/google/common/collect/BiMap;
    .param p4, "x4"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;

    .line 63
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->buildWindowHierarchy(Landroid/view/accessibility/AccessibilityWindowInfo;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;Lcom/google/common/collect/BiMap;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;

    .line 63
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->setAccessibilityHierarchy()V

    return-void
.end method

.method static synthetic access$700()Z
    .locals 1

    .line 63
    sget-boolean v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->AT_17:Z

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;Landroid/content/Context;Lcom/google/common/collect/BiMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/google/common/collect/BiMap;

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->resolveLabelForRelationshipsAmongViews(Landroid/content/Context;Lcom/google/common/collect/BiMap;)V

    return-void
.end method

.method static synthetic access$900()Z
    .locals 1

    .line 63
    sget-boolean v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->AT_22:Z

    return v0
.end method

.method private static buildWindowHierarchy(Landroid/os/Parcel;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    .locals 4
    .param p0, "fromParcel"    # Landroid/os/Parcel;
    .param p2, "parent"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;",
            ">;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;",
            ")",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;"
        }
    .end annotation

    .line 307
    .local p1, "elementList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;>;"
    nop

    .line 308
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0, p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->newBuilder(ILandroid/os/Parcel;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;

    move-result-object v0

    .line 309
    invoke-virtual {v0, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->setParent(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->build()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    move-result-object v0

    .line 311
    .local v0, "element":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 314
    .local v1, "childWindowCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 315
    invoke-static {p0, p1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->buildWindowHierarchy(Landroid/os/Parcel;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->addChild(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;)V

    .line 314
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 318
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method private static buildWindowHierarchy(Landroid/view/accessibility/AccessibilityWindowInfo;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;Lcom/google/common/collect/BiMap;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    .locals 4
    .param p0, "info"    # Landroid/view/accessibility/AccessibilityWindowInfo;
    .param p2, "parent"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    .param p4, "extraDataExtractor"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;",
            ">;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;",
            "Lcom/google/common/collect/BiMap<",
            "Ljava/lang/Long;",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;",
            ")",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;"
        }
    .end annotation

    .line 284
    .local p1, "elementList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;>;"
    .local p3, "originMap":Lcom/google/common/collect/BiMap;, "Lcom/google/common/collect/BiMap<Ljava/lang/Long;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    nop

    .line 285
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0, p0, p4}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->newBuilder(ILandroid/view/accessibility/AccessibilityWindowInfo;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;

    move-result-object v0

    .line 286
    invoke-virtual {v0, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->setParent(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;

    move-result-object v0

    .line 287
    invoke-virtual {v0, p3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->setNodeInfoOriginMap(Ljava/util/Map;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->build()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    move-result-object v0

    .line 289
    .local v0, "element":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 292
    invoke-virtual {p0, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getChild(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v2

    .line 293
    .local v2, "child":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-eqz v2, :cond_0

    .line 294
    nop

    .line 295
    invoke-static {v2, p1, v0, p3, p4}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->buildWindowHierarchy(Landroid/view/accessibility/AccessibilityWindowInfo;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;Lcom/google/common/collect/BiMap;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    move-result-object v3

    .line 294
    invoke-virtual {v0, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->addChild(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;)V

    .line 296
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    .line 291
    .end local v2    # "child":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 300
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private findElementByNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Lcom/google/common/collect/BiMap;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    .locals 3
    .param p1, "targetNode"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Lcom/google/common/collect/BiMap<",
            "Ljava/lang/Long;",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;"
        }
    .end annotation

    .line 472
    .local p2, "originMap":Lcom/google/common/collect/BiMap;, "Lcom/google/common/collect/BiMap<Ljava/lang/Long;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {p2}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 473
    .local v0, "viewId":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 474
    const/4 v1, 0x0

    return-object v1

    .line 476
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->getViewById(J)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    move-result-object v1

    return-object v1
.end method

.method private findElementByViewId(ILcom/google/common/collect/BiMap;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    .locals 4
    .param p1, "targetViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/common/collect/BiMap<",
            "Ljava/lang/Long;",
            "Landroid/view/View;",
            ">;)",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;"
        }
    .end annotation

    .line 485
    .local p2, "originMap":Lcom/google/common/collect/BiMap;, "Lcom/google/common/collect/BiMap<Ljava/lang/Long;Landroid/view/View;>;"
    invoke-interface {p2}, Lcom/google/common/collect/BiMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 486
    .local v1, "matchingEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/view/View;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 487
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->getViewById(J)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    move-result-object v0

    return-object v0

    .line 489
    .end local v1    # "matchingEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/view/View;>;"
    :cond_0
    goto :goto_0

    .line 490
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static newBuilder(Landroid/view/View;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 541
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;

    invoke-direct {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;-><init>()V

    .line 542
    .local v0, "builder":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->access$102(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;Landroid/view/View;)Landroid/view/View;

    .line 543
    return-object v0
.end method

.method public static newBuilder(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/content/Context;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;
    .locals 2
    .param p0, "fromRootNode"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p1, "context"    # Landroid/content/Context;

    .line 577
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;

    invoke-direct {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;-><init>()V

    .line 578
    .local v0, "builder":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->access$402(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 579
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->access$302(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;Landroid/content/Context;)Landroid/content/Context;

    .line 580
    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;
    .locals 2
    .param p0, "proto"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto;

    .line 589
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;

    invoke-direct {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;-><init>()V

    .line 590
    .local v0, "builder":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto;

    iput-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->proto:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto;

    .line 591
    return-object v0
.end method

.method public static newBuilder(Ljava/util/List;Landroid/content/Context;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;"
        }
    .end annotation

    .line 558
    .local p0, "fromWindowList":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;

    invoke-direct {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;-><init>()V

    .line 559
    .local v0, "builder":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->access$202(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;Ljava/util/List;)Ljava/util/List;

    .line 560
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->access$302(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;Landroid/content/Context;)Landroid/content/Context;

    .line 561
    return-object v0
.end method

.method private static readFromParcel(Landroid/os/Parcel;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;
    .locals 11
    .param p0, "in"    # Landroid/os/Parcel;

    .line 227
    invoke-static {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;->newBuilder(Landroid/os/Parcel;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid$Builder;->build()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;

    move-result-object v0

    .line 228
    .local v0, "deviceState":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 229
    .local v1, "totalWindows":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 231
    .local v2, "rootWindows":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 232
    .local v3, "windowHierarchyElements":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 233
    const/4 v5, 0x0

    invoke-static {p0, v3, v5}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->buildWindowHierarchy(Landroid/os/Parcel;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    .line 232
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 236
    .end local v4    # "i":I
    :cond_0
    nop

    .line 237
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v1, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v5

    .line 236
    :goto_1
    const-string v7, "Window hierarchy failed consistency check."

    invoke-static {v4, v7}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 241
    const/4 v4, 0x0

    .line 242
    .local v4, "activeWindow":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    .line 243
    .local v8, "window":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->isActive()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 244
    if-nez v4, :cond_2

    move v9, v6

    goto :goto_3

    :cond_2
    move v9, v5

    :goto_3
    const-string v10, "More than one active window detected."

    invoke-static {v9, v10}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 245
    move-object v4, v8

    .line 247
    .end local v8    # "window":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    :cond_3
    goto :goto_2

    .line 248
    :cond_4
    const-string v5, "No active windows detected."

    invoke-static {v4, v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    new-instance v5, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$ViewElementClassNamesAndroid;

    .line 251
    invoke-static {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->readMapFromParcel(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$ViewElementClassNamesAndroid;-><init>(Ljava/util/Map;)V

    .line 253
    .local v5, "viewElementClassNames":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$ViewElementClassNamesAndroid;
    new-instance v6, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;

    invoke-direct {v6, v0, v3, v4, v5}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$ViewElementClassNamesAndroid;)V

    .line 256
    .local v6, "hierarchy":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;
    invoke-direct {v6}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->setAccessibilityHierarchy()V

    .line 257
    return-object v6
.end method

.method private static readMapFromParcel(Landroid/os/Parcel;)Ljava/util/Map;
    .locals 5
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 214
    invoke-static {}, Lcom/google/common/collect/HashBiMap;->create()Lcom/google/common/collect/HashBiMap;

    move-result-object v0

    .line 215
    .local v0, "viewElementsMap":Lcom/google/common/collect/BiMap;, "Lcom/google/common/collect/BiMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 216
    .local v1, "mapSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 217
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 219
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method private resolveAccessibilityTraversalRelationshipsAmongInfos(Lcom/google/common/collect/BiMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BiMap<",
            "Ljava/lang/Long;",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .line 370
    .local p1, "originMap":Lcom/google/common/collect/BiMap;, "Lcom/google/common/collect/BiMap<Ljava/lang/Long;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {p1}, Lcom/google/common/collect/BiMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 371
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getTraversalBefore()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 372
    .local v2, "beforeNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getTraversalAfter()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    .line 373
    .local v3, "afterNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v2, :cond_0

    if-eqz v3, :cond_4

    .line 374
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->getViewById(J)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    move-result-object v4

    .line 375
    .local v4, "currentElement":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    const/4 v5, 0x0

    const-string v6, "A11yHierarchyAndroid"

    if-eqz v2, :cond_2

    .line 376
    invoke-direct {p0, v2, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->findElementByNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Lcom/google/common/collect/BiMap;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    move-result-object v7

    .line 377
    .local v7, "beforeElement":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    if-nez v7, :cond_1

    .line 378
    const-string v8, "Element not found for accessibilityTraversalBefore."

    new-array v9, v5, [Ljava/lang/Object;

    invoke-static {v6, v8, v9}, Lcom/google/android/libraries/accessibility/utils/log/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 380
    :cond_1
    invoke-virtual {v4, v7}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->setAccessibilityTraversalBefore(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;)V

    .line 383
    .end local v7    # "beforeElement":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    :cond_2
    :goto_1
    if-eqz v3, :cond_4

    .line 384
    invoke-direct {p0, v3, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->findElementByNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Lcom/google/common/collect/BiMap;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    move-result-object v7

    .line 385
    .local v7, "afterElement":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    if-nez v7, :cond_3

    .line 386
    const-string v8, "Element not found for accessibilityTraversalAfter."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6, v8, v5}, Lcom/google/android/libraries/accessibility/utils/log/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 388
    :cond_3
    invoke-virtual {v4, v7}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->setAccessibilityTraversalAfter(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;)V

    .line 392
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v2    # "beforeNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v3    # "afterNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v4    # "currentElement":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    .end local v7    # "afterElement":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    :cond_4
    :goto_2
    goto :goto_0

    .line 393
    :cond_5
    return-void
.end method

.method private resolveAccessibilityTraversalRelationshipsAmongViews(Landroid/content/Context;Lcom/google/common/collect/BiMap;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/common/collect/BiMap<",
            "Ljava/lang/Long;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 398
    .local p2, "originMap":Lcom/google/common/collect/BiMap;, "Lcom/google/common/collect/BiMap<Ljava/lang/Long;Landroid/view/View;>;"
    invoke-interface {p2}, Lcom/google/common/collect/BiMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 399
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/view/View;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAccessibilityTraversalBefore()I

    move-result v2

    .line 400
    .local v2, "beforeViewId":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getAccessibilityTraversalAfter()I

    move-result v3

    .line 401
    .local v3, "afterViewId":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->getViewById(J)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    move-result-object v4

    .line 402
    .local v4, "viewElement":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    const-string v5, "A11yHierarchyAndroid"

    const/4 v6, -0x1

    if-eq v2, v6, :cond_1

    .line 403
    invoke-direct {p0, v2, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->findElementByViewId(ILcom/google/common/collect/BiMap;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    move-result-object v7

    .line 404
    .local v7, "matchingElement":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    if-nez v7, :cond_0

    .line 405
    nop

    .line 408
    invoke-static {p1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->resourceName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 405
    const-string v9, "View not found for accessibilityTraversalBefore = %1$s"

    invoke-static {v5, v9, v8}, Lcom/google/android/libraries/accessibility/utils/log/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 410
    :cond_0
    invoke-virtual {v4, v7}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->setAccessibilityTraversalBefore(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;)V

    .line 413
    .end local v7    # "matchingElement":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    :cond_1
    :goto_1
    if-eq v3, v6, :cond_3

    .line 414
    invoke-direct {p0, v3, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->findElementByViewId(ILcom/google/common/collect/BiMap;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    move-result-object v6

    .line 415
    .local v6, "matchingElement":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    if-nez v6, :cond_2

    .line 416
    nop

    .line 419
    invoke-static {p1, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->resourceName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 416
    const-string v8, "View not found for accessibilityTraversalAfter = %1$s"

    invoke-static {v5, v8, v7}, Lcom/google/android/libraries/accessibility/utils/log/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 421
    :cond_2
    invoke-virtual {v4, v6}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->setAccessibilityTraversalAfter(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;)V

    .line 424
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/view/View;>;"
    .end local v2    # "beforeViewId":I
    .end local v3    # "afterViewId":I
    .end local v4    # "viewElement":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    .end local v6    # "matchingElement":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    :cond_3
    :goto_2
    goto :goto_0

    .line 425
    :cond_4
    return-void
.end method

.method private resolveLabelForRelationshipsAmongInfos(Lcom/google/common/collect/BiMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BiMap<",
            "Ljava/lang/Long;",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .line 332
    .local p1, "originMap":Lcom/google/common/collect/BiMap;, "Lcom/google/common/collect/BiMap<Ljava/lang/Long;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {p1}, Lcom/google/common/collect/BiMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 333
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getLabelFor()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 334
    .local v2, "labeledNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v2, :cond_0

    .line 335
    invoke-interface {p1}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 336
    .local v3, "labeledElementId":Ljava/lang/Long;
    if-eqz v3, :cond_0

    .line 337
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->getViewById(J)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    move-result-object v4

    .line 338
    .local v4, "labelElement":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->getViewById(J)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    move-result-object v5

    .line 339
    .local v5, "labeledElement":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    invoke-virtual {v5, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->setLabeledBy(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;)V

    .line 342
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v2    # "labeledNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v3    # "labeledElementId":Ljava/lang/Long;
    .end local v4    # "labelElement":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    .end local v5    # "labeledElement":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    :cond_0
    goto :goto_0

    .line 343
    :cond_1
    return-void
.end method

.method private resolveLabelForRelationshipsAmongViews(Landroid/content/Context;Lcom/google/common/collect/BiMap;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/common/collect/BiMap<",
            "Ljava/lang/Long;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 352
    .local p2, "originMap":Lcom/google/common/collect/BiMap;, "Lcom/google/common/collect/BiMap<Ljava/lang/Long;Landroid/view/View;>;"
    invoke-interface {p2}, Lcom/google/common/collect/BiMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 353
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/view/View;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLabelFor()I

    move-result v2

    .line 354
    .local v2, "labeledViewId":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 355
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->getViewById(J)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    move-result-object v3

    .line 356
    .local v3, "labelElement":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    invoke-direct {p0, v2, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->findElementByViewId(ILcom/google/common/collect/BiMap;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    move-result-object v4

    .line 357
    .local v4, "labeledElement":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    if-nez v4, :cond_0

    .line 358
    nop

    .line 359
    invoke-static {p1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->resourceName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 358
    const-string v6, "A11yHierarchyAndroid"

    const-string v7, "View not found for labelFor = %1$s"

    invoke-static {v6, v7, v5}, Lcom/google/android/libraries/accessibility/utils/log/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 361
    :cond_0
    invoke-virtual {v4, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->setLabeledBy(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;)V

    .line 364
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/view/View;>;"
    .end local v2    # "labeledViewId":I
    .end local v3    # "labelElement":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    .end local v4    # "labeledElement":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    :cond_1
    :goto_1
    goto :goto_0

    .line 365
    :cond_2
    return-void
.end method

.method private resolveTouchDelegateRelationshipsAmongInfos(Lcom/google/common/collect/BiMap;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BiMap<",
            "Ljava/lang/Long;",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .line 434
    .local p1, "originMap":Lcom/google/common/collect/BiMap;, "Lcom/google/common/collect/BiMap<Ljava/lang/Long;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface/range {p1 .. p1}, Lcom/google/common/collect/BiMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 435
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 436
    .local v2, "nodeInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getTouchDelegateInfo()Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    move-result-object v3

    .line 437
    .local v3, "delegateInfo":Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;
    if-eqz v3, :cond_4

    .line 438
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 439
    .local v4, "boundsInScreen":Landroid/graphics/Rect;
    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 440
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->getRegionCount()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 441
    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->getRegionAt(I)Landroid/graphics/Region;

    move-result-object v6

    .line 442
    .local v6, "hitRegion":Landroid/graphics/Region;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/graphics/Region;->isRect()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 443
    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->getTargetForRegion(Landroid/graphics/Region;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v7

    .line 445
    .local v7, "delegateeNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v7, :cond_0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-direct {v8, v7, v9}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->findElementByNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Lcom/google/common/collect/BiMap;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    move-result-object v10

    goto :goto_2

    :cond_0
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    const/4 v10, 0x0

    .line 446
    .local v10, "delegatee":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    :goto_2
    if-eqz v10, :cond_1

    .line 448
    invoke-virtual {v6}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 449
    .local v11, "hitRect":Landroid/graphics/Rect;
    new-instance v12, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    iget v13, v11, Landroid/graphics/Rect;->left:I

    iget v14, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v13, v14

    iget v14, v11, Landroid/graphics/Rect;->top:I

    iget v15, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v14, v15

    iget v15, v11, Landroid/graphics/Rect;->right:I

    move-object/from16 v16, v0

    iget v0, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v15, v0

    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v17, v1

    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .local v17, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    iget v1, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    invoke-direct {v12, v13, v14, v15, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;-><init>(IIII)V

    invoke-virtual {v10, v12}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->addTouchDelegateBounds(Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;)V

    goto :goto_3

    .line 446
    .end local v11    # "hitRect":Landroid/graphics/Rect;
    .end local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :cond_1
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    goto :goto_3

    .line 442
    .end local v7    # "delegateeNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v10    # "delegatee":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .end local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :cond_2
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    .line 440
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v6    # "hitRegion":Landroid/graphics/Region;
    .restart local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :goto_3
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    goto :goto_1

    .end local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :cond_3
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    goto :goto_4

    .line 437
    .end local v4    # "boundsInScreen":Landroid/graphics/Rect;
    .end local v5    # "i":I
    .end local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :cond_4
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    .line 459
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v2    # "nodeInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v3    # "delegateInfo":Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;
    :goto_4
    move-object/from16 v0, v16

    goto/16 :goto_0

    .line 460
    :cond_5
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    return-void
.end method

.method private static resourceName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "viewId"    # I

    .line 498
    const-string v0, "\""

    invoke-static {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewAccessibilityUtils;->isViewIdGenerated(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 500
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    .line 501
    .local v1, "resourceName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 502
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 506
    .end local v1    # "resourceName":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 504
    :catch_0
    move-exception v0

    .line 508
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setAccessibilityHierarchy()V
    .locals 2

    .line 513
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->windowHierarchyElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    .line 514
    .local v1, "window":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    invoke-virtual {v1, p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->setAccessibilityHierarchy(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;)V

    .line 515
    .end local v1    # "window":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    goto :goto_0

    .line 516
    :cond_0
    return-void
.end method

.method private static writeMapToParcel(Ljava/util/Map;Landroid/os/Parcel;)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .line 206
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 208
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_0

    .line 211
    :cond_0
    return-void
.end method

.method private static writeWindowHierarchyToParcel(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;Landroid/os/Parcel;)V
    .locals 3
    .param p0, "element"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    .param p1, "out"    # Landroid/os/Parcel;

    .line 197
    invoke-virtual {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->writeToParcel(Landroid/os/Parcel;)V

    .line 198
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->getChildWindowCount()I

    move-result v0

    .line 199
    .local v0, "childCount":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 201
    invoke-virtual {p0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->getChildWindow(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->writeWindowHierarchyToParcel(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;Landroid/os/Parcel;)V

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getActiveWindow()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->getActiveWindow()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    move-result-object v0

    return-object v0
.end method

.method public getActiveWindow()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->activeWindow:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    return-object v0
.end method

.method public getAllWindows()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->windowHierarchyElements:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDeviceState()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceState;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->getDeviceState()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceState()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->deviceState:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;

    return-object v0
.end method

.method public bridge synthetic getViewById(J)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->getViewById(J)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    move-result-object p1

    return-object p1
.end method

.method public getViewById(J)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    .locals 3
    .param p1, "condensedUniqueId"    # J

    .line 144
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    .line 145
    .local v0, "windowId":I
    long-to-int v1, p1

    .line 146
    .local v1, "viewId":I
    invoke-virtual {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->getWindowById(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->getViewById(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic getWindowById(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->getWindowById(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    move-result-object p1

    return-object p1
.end method

.method public getWindowById(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    .locals 1
    .param p1, "id"    # I

    .line 129
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->windowHierarchyElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->windowHierarchyElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    return-object v0

    .line 130
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public toProto()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto;
    .locals 4

    .line 159
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto;->newBuilder()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto$Builder;

    move-result-object v0

    .line 160
    .local v0, "builder":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto$Builder;
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->deviceState:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;

    .line 161
    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;->toProto()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto$Builder;->setDeviceState(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->activeWindow:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    .line 162
    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto$Builder;->setActiveWindowId(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->viewElementClassNames:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy$ViewElementClassNames;

    .line 163
    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy$ViewElementClassNames;->toProto()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewElementClassNamesProto;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto$Builder;->setViewElementClassNames(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewElementClassNamesProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto$Builder;

    .line 164
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->windowHierarchyElements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    .line 165
    .local v2, "window":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->toProto()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto$Builder;->addWindows(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto$Builder;

    .line 166
    .end local v2    # "window":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto;

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 173
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->deviceState:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v0, "rootWindows":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;>;"
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->windowHierarchyElements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    .line 176
    .local v2, "window":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->getParentWindow()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    move-result-object v3

    if-nez v3, :cond_0

    .line 177
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    .end local v2    # "window":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    :cond_0
    goto :goto_0

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->windowHierarchyElements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    .line 189
    .restart local v2    # "window":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    invoke-static {v2, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->writeWindowHierarchyToParcel(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;Landroid/os/Parcel;)V

    .line 190
    .end local v2    # "window":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    goto :goto_1

    .line 192
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->viewElementClassNames:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy$ViewElementClassNames;

    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy$ViewElementClassNames;->getMap()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->writeMapToParcel(Ljava/util/Map;Landroid/os/Parcel;)V

    .line 193
    return-void
.end method
