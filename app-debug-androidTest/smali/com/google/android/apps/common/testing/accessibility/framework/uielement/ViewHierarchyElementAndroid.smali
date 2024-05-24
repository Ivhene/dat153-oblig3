.class public Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
.super Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
.source "ViewHierarchyElementAndroid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;
    }
.end annotation


# static fields
.field private static final AT_11:Z

.field private static final AT_14:Z

.field private static final AT_16:Z

.field private static final AT_18:Z

.field private static final AT_21:Z

.field private static final AT_24:Z

.field private static final AT_26:Z

.field private static final AT_29:Z


# instance fields
.field private windowElement:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->AT_29:Z

    .line 58
    sput-boolean v2, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->AT_26:Z

    .line 59
    sput-boolean v2, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->AT_24:Z

    .line 60
    sput-boolean v2, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->AT_21:Z

    .line 61
    sput-boolean v2, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->AT_18:Z

    .line 63
    sput-boolean v2, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->AT_16:Z

    .line 64
    sput-boolean v2, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->AT_14:Z

    .line 66
    sput-boolean v2, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->AT_11:Z

    return-void
.end method

.method private constructor <init>(ILjava/lang/Integer;Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;ZLjava/lang/Boolean;ZZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "parentId"    # Ljava/lang/Integer;
    .param p4, "packageName"    # Ljava/lang/CharSequence;
    .param p5, "className"    # Ljava/lang/CharSequence;
    .param p6, "accessibilityClassName"    # Ljava/lang/CharSequence;
    .param p7, "resourceName"    # Ljava/lang/String;
    .param p8, "contentDescription"    # Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;
    .param p9, "text"    # Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;
    .param p10, "importantForAccessibility"    # Z
    .param p11, "visibleToUser"    # Ljava/lang/Boolean;
    .param p12, "clickable"    # Z
    .param p13, "longClickable"    # Z
    .param p14, "focusable"    # Z
    .param p15, "editable"    # Ljava/lang/Boolean;
    .param p16, "scrollable"    # Ljava/lang/Boolean;
    .param p17, "canScrollForward"    # Ljava/lang/Boolean;
    .param p18, "canScrollBackward"    # Ljava/lang/Boolean;
    .param p19, "checkable"    # Ljava/lang/Boolean;
    .param p20, "checked"    # Ljava/lang/Boolean;
    .param p21, "hasTouchDelegate"    # Ljava/lang/Boolean;
    .param p23, "boundsInScreen"    # Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .param p24, "nonclippedHeight"    # Ljava/lang/Integer;
    .param p25, "nonclippedWidth"    # Ljava/lang/Integer;
    .param p26, "textSize"    # Ljava/lang/Float;
    .param p27, "textColor"    # Ljava/lang/Integer;
    .param p28, "backgroundDrawableColor"    # Ljava/lang/Integer;
    .param p29, "typefaceStyle"    # Ljava/lang/Integer;
    .param p30, "enabled"    # Z
    .param p31, "labeledById"    # Ljava/lang/Long;
    .param p32, "accessibilityTraversalBeforeId"    # Ljava/lang/Long;
    .param p33, "accessibilityTraversalAfterId"    # Ljava/lang/Long;
    .param p34, "drawingOrder"    # Ljava/lang/Integer;
    .param p37, "layoutParams"    # Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;
    .param p38, "hintText"    # Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;
    .param p39, "hintTextColor"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;",
            "Z",
            "Ljava/lang/Boolean;",
            "ZZZ",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;",
            ">;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Z",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid;",
            ">;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;",
            ">;)V"
        }
    .end annotation

    .line 112
    .local p3, "childIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p22, "touchDelegateBounds":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;>;"
    .local p35, "superclassViews":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p36, "actionList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid;>;"
    .local p40, "textCharacterLocations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;>;"
    invoke-direct/range {p0 .. p40}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;-><init>(ILjava/lang/Integer;Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;ZLjava/lang/Boolean;ZZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;Ljava/lang/Integer;Ljava/util/List;)V

    .line 153
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/Integer;Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;ZLjava/lang/Boolean;ZZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;Ljava/lang/Integer;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Integer;
    .param p3, "x2"    # Ljava/util/List;
    .param p4, "x3"    # Ljava/lang/CharSequence;
    .param p5, "x4"    # Ljava/lang/CharSequence;
    .param p6, "x5"    # Ljava/lang/CharSequence;
    .param p7, "x6"    # Ljava/lang/String;
    .param p8, "x7"    # Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;
    .param p9, "x8"    # Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;
    .param p10, "x9"    # Z
    .param p11, "x10"    # Ljava/lang/Boolean;
    .param p12, "x11"    # Z
    .param p13, "x12"    # Z
    .param p14, "x13"    # Z
    .param p15, "x14"    # Ljava/lang/Boolean;
    .param p16, "x15"    # Ljava/lang/Boolean;
    .param p17, "x16"    # Ljava/lang/Boolean;
    .param p18, "x17"    # Ljava/lang/Boolean;
    .param p19, "x18"    # Ljava/lang/Boolean;
    .param p20, "x19"    # Ljava/lang/Boolean;
    .param p21, "x20"    # Ljava/lang/Boolean;
    .param p22, "x21"    # Ljava/util/List;
    .param p23, "x22"    # Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .param p24, "x23"    # Ljava/lang/Integer;
    .param p25, "x24"    # Ljava/lang/Integer;
    .param p26, "x25"    # Ljava/lang/Float;
    .param p27, "x26"    # Ljava/lang/Integer;
    .param p28, "x27"    # Ljava/lang/Integer;
    .param p29, "x28"    # Ljava/lang/Integer;
    .param p30, "x29"    # Z
    .param p31, "x30"    # Ljava/lang/Long;
    .param p32, "x31"    # Ljava/lang/Long;
    .param p33, "x32"    # Ljava/lang/Long;
    .param p34, "x33"    # Ljava/lang/Integer;
    .param p35, "x34"    # Ljava/util/List;
    .param p36, "x35"    # Ljava/util/List;
    .param p37, "x36"    # Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;
    .param p38, "x37"    # Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;
    .param p39, "x38"    # Ljava/lang/Integer;
    .param p40, "x39"    # Ljava/util/List;
    .param p41, "x40"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$1;

    .line 56
    invoke-direct/range {p0 .. p40}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;-><init>(ILjava/lang/Integer;Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;ZLjava/lang/Boolean;ZZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;Ljava/lang/Integer;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 56
    sget-boolean v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->AT_18:Z

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 56
    sget-boolean v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->AT_16:Z

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 56
    sget-boolean v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->AT_21:Z

    return v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 56
    sget-boolean v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->AT_24:Z

    return v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 56
    sget-boolean v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->AT_29:Z

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 56
    sget-boolean v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->AT_26:Z

    return v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .line 56
    sget-boolean v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->AT_11:Z

    return v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .line 56
    sget-boolean v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->AT_14:Z

    return v0
.end method

.method private getViewHierarchyElementById(Ljava/lang/Long;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    .locals 3
    .param p1, "id"    # Ljava/lang/Long;

    .line 383
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->getWindow()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->getAccessibilityHierarchy()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->getViewById(J)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method static newBuilder(ILcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Landroid/os/Parcel;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;
    .locals 1
    .param p0, "id"    # I
    .param p1, "parent"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    .param p2, "in"    # Landroid/os/Parcel;

    .line 410
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;-><init>(ILcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Landroid/os/Parcel;)V

    return-object v0
.end method

.method static newBuilder(ILcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Landroid/view/View;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;
    .locals 1
    .param p0, "id"    # I
    .param p1, "parent"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    .param p2, "fromView"    # Landroid/view/View;

    .line 388
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;-><init>(ILcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Landroid/view/View;)V

    return-object v0
.end method

.method static newBuilder(ILcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Landroid/view/accessibility/AccessibilityNodeInfo;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;
    .locals 1
    .param p0, "id"    # I
    .param p1, "parent"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    .param p2, "fromInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p3, "extraDataExtractor"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;

    .line 400
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;-><init>(ILcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Landroid/view/accessibility/AccessibilityNodeInfo;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;)V

    return-object v0
.end method

.method static newBuilder(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;
    .locals 2
    .param p0, "proto"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 405
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    invoke-direct {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)V

    return-object v0
.end method


# virtual methods
.method addChild(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;)V
    .locals 2
    .param p1, "child"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    .line 350
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->childIds:Ljava/util/List;

    if-nez v0, :cond_0

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->childIds:Ljava/util/List;

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->childIds:Ljava/util/List;

    iget v1, p1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    return-void
.end method

.method public bridge synthetic getAccessibilityTraversalAfter()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->getAccessibilityTraversalAfter()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    move-result-object v0

    return-object v0
.end method

.method public getAccessibilityTraversalAfter()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->accessibilityTraversalAfterId:Ljava/lang/Long;

    invoke-direct {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->getViewHierarchyElementById(Ljava/lang/Long;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAccessibilityTraversalBefore()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->getAccessibilityTraversalBefore()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    move-result-object v0

    return-object v0
.end method

.method public getAccessibilityTraversalBefore()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->accessibilityTraversalBeforeId:Ljava/lang/Long;

    invoke-direct {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->getViewHierarchyElementById(Ljava/lang/Long;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    move-result-object v0

    return-object v0
.end method

.method public getBoundsInScreen(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 255
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->boundsInScreen:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    if-eqz v0, :cond_0

    .line 256
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->boundsInScreen:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    .line 258
    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->boundsInScreen:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    .line 259
    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->boundsInScreen:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    .line 260
    invoke-virtual {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->boundsInScreen:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    .line 261
    invoke-virtual {v4}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 256
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 263
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 265
    :goto_0
    return-void
.end method

.method public bridge synthetic getChildView(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->getChildView(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    move-result-object p1

    return-object p1
.end method

.method public getChildView(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    .locals 2
    .param p1, "atIndex"    # I

    .line 178
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->childIds:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->childIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->getWindow()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->childIds:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->getViewById(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    move-result-object v0

    return-object v0

    .line 179
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic getLabeledBy()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 56
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->getLabeledBy()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    move-result-object v0

    return-object v0
.end method

.method public getLabeledBy()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->labeledById:Ljava/lang/Long;

    invoke-direct {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->getViewHierarchyElementById(Ljava/lang/Long;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParentView()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 56
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->getParentView()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    move-result-object v0

    return-object v0
.end method

.method public getParentView()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->parentId:Ljava/lang/Integer;

    .line 165
    .local v0, "parentIdTmp":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->getWindow()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->getViewById(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getSelfAndAllDescendants()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;",
            ">;"
        }
    .end annotation

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v0, "listToPopulate":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->getChildViewCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 193
    invoke-virtual {p0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->getChildView(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->getSelfAndAllDescendants()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    .end local v1    # "i":I
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic getWindow()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->getWindow()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    move-result-object v0

    return-object v0
.end method

.method public getWindow()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->windowElement:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    return-object v0
.end method

.method setAccessibilityTraversalAfter(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;)V
    .locals 2
    .param p1, "element"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    .line 379
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->getCondensedUniqueId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->accessibilityTraversalAfterId:Ljava/lang/Long;

    .line 380
    return-void
.end method

.method setAccessibilityTraversalBefore(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;)V
    .locals 2
    .param p1, "element"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    .line 371
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->getCondensedUniqueId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->accessibilityTraversalBeforeId:Ljava/lang/Long;

    .line 372
    return-void
.end method

.method setLabeledBy(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;)V
    .locals 2
    .param p1, "labelingElement"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    .line 363
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->getCondensedUniqueId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->labeledById:Ljava/lang/Long;

    .line 364
    return-void
.end method

.method setWindow(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;)V
    .locals 0
    .param p1, "window"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    .line 345
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->windowElement:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    .line 346
    return-void
.end method

.method writeToParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "out"    # Landroid/os/Parcel;

    .line 268
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->packageName:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->packageName:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->writeNullableString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->className:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->className:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {p1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->writeNullableString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->resourceName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->writeNullableString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->contentDescription:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 272
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->contentDescription:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    invoke-static {v0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->writeSpannableStringToParcel(Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;Landroid/os/Parcel;)V

    goto :goto_2

    .line 275
    :cond_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    :goto_2
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->text:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    if-eqz v0, :cond_3

    .line 278
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->text:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    invoke-static {v0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->writeSpannableStringToParcel(Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;Landroid/os/Parcel;)V

    goto :goto_3

    .line 281
    :cond_3
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    :goto_3
    iget-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->importantForAccessibility:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->visibleToUser:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->writeNullableBoolean(Landroid/os/Parcel;Ljava/lang/Boolean;)V

    .line 285
    iget-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->clickable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    iget-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->longClickable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    iget-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->focusable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->editable:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->writeNullableBoolean(Landroid/os/Parcel;Ljava/lang/Boolean;)V

    .line 289
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->scrollable:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->writeNullableBoolean(Landroid/os/Parcel;Ljava/lang/Boolean;)V

    .line 290
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->checkable:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->writeNullableBoolean(Landroid/os/Parcel;Ljava/lang/Boolean;)V

    .line 291
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->checked:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->writeNullableBoolean(Landroid/os/Parcel;Ljava/lang/Boolean;)V

    .line 292
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->canScrollForward:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->writeNullableBoolean(Landroid/os/Parcel;Ljava/lang/Boolean;)V

    .line 293
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->canScrollBackward:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->writeNullableBoolean(Landroid/os/Parcel;Ljava/lang/Boolean;)V

    .line 294
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->hasTouchDelegate:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->writeNullableBoolean(Landroid/os/Parcel;Ljava/lang/Boolean;)V

    .line 295
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->touchDelegateBounds:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->writeRectList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 296
    iget-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->enabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->boundsInScreen:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    .line 298
    .local v0, "boundsInScreenTmp":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    if-eqz v0, :cond_4

    .line 299
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    invoke-static {v0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->writeRectToParcel(Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;Landroid/os/Parcel;)V

    goto :goto_4

    .line 302
    :cond_4
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    :goto_4
    iget-object v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->nonclippedHeight:Ljava/lang/Integer;

    invoke-static {p1, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->writeNullableInteger(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 305
    iget-object v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->nonclippedWidth:Ljava/lang/Integer;

    invoke-static {p1, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->writeNullableInteger(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 306
    iget-object v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->textSize:Ljava/lang/Float;

    invoke-static {p1, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->writeNullableFloat(Landroid/os/Parcel;Ljava/lang/Float;)V

    .line 307
    iget-object v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->textColor:Ljava/lang/Integer;

    invoke-static {p1, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->writeNullableInteger(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 308
    iget-object v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->backgroundDrawableColor:Ljava/lang/Integer;

    invoke-static {p1, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->writeNullableInteger(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 309
    iget-object v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->typefaceStyle:Ljava/lang/Integer;

    invoke-static {p1, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->writeNullableInteger(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 310
    iget-object v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->labeledById:Ljava/lang/Long;

    invoke-static {p1, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->writeNullableLong(Landroid/os/Parcel;Ljava/lang/Long;)V

    .line 311
    nop

    .line 312
    iget-object v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->accessibilityClassName:Ljava/lang/CharSequence;

    if-nez v4, :cond_5

    goto :goto_5

    :cond_5
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->accessibilityClassName:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 311
    :goto_5
    invoke-static {p1, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->writeNullableString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 313
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->accessibilityTraversalBeforeId:Ljava/lang/Long;

    invoke-static {p1, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->writeNullableLong(Landroid/os/Parcel;Ljava/lang/Long;)V

    .line 314
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->accessibilityTraversalAfterId:Ljava/lang/Long;

    invoke-static {p1, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->writeNullableLong(Landroid/os/Parcel;Ljava/lang/Long;)V

    .line 316
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->superclassViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->superclassViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 318
    .local v4, "id":I
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    .end local v4    # "id":I
    goto :goto_6

    .line 320
    :cond_6
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->drawingOrder:Ljava/lang/Integer;

    invoke-static {p1, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->writeNullableInteger(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 322
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->actionList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->actionList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyAction;

    .line 324
    .local v4, "action":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyAction;
    move-object v5, v4

    check-cast v5, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid;

    invoke-virtual {v5, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid;->writeToParcel(Landroid/os/Parcel;)V

    .line 325
    .end local v4    # "action":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyAction;
    goto :goto_7

    .line 326
    :cond_7
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->layoutParams:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;

    if-eqz v1, :cond_8

    .line 327
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->layoutParams:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;

    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;->getWidth()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->layoutParams:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;

    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;->getHeight()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 331
    :cond_8
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    :goto_8
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->hintText:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    if-eqz v1, :cond_9

    .line 334
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->hintText:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    invoke-static {v1, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->writeSpannableStringToParcel(Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;Landroid/os/Parcel;)V

    goto :goto_9

    .line 337
    :cond_9
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    :goto_9
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->hintTextColor:Ljava/lang/Integer;

    invoke-static {p1, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->writeNullableInteger(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 340
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->textCharacterLocations:Ljava/util/List;

    invoke-static {p1, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->writeRectList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 341
    return-void
.end method
