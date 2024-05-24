.class public Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
.super Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;
.source "WindowHierarchyElementAndroid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowHierarchyElementA"


# instance fields
.field private accessibilityHierarchy:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;

.field private final viewHierarchyElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILjava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;Ljava/util/List;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "parentId"    # Ljava/lang/Integer;
    .param p4, "windowId"    # Ljava/lang/Integer;
    .param p5, "layer"    # Ljava/lang/Integer;
    .param p6, "type"    # Ljava/lang/Integer;
    .param p7, "focused"    # Ljava/lang/Boolean;
    .param p8, "accessibilityFocused"    # Ljava/lang/Boolean;
    .param p9, "active"    # Ljava/lang/Boolean;
    .param p10, "boundsInScreen"    # Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;",
            ">;)V"
        }
    .end annotation

    .line 70
    .local p3, "childIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p11, "viewHierarchyElements":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;>;"
    invoke-direct/range {p0 .. p10}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;-><init>(ILjava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;)V

    .line 81
    iput-object p11, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->viewHierarchyElements:Ljava/util/List;

    .line 82
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Integer;
    .param p3, "x2"    # Ljava/util/List;
    .param p4, "x3"    # Ljava/lang/Integer;
    .param p5, "x4"    # Ljava/lang/Integer;
    .param p6, "x5"    # Ljava/lang/Integer;
    .param p7, "x6"    # Ljava/lang/Boolean;
    .param p8, "x7"    # Ljava/lang/Boolean;
    .param p9, "x8"    # Ljava/lang/Boolean;
    .param p10, "x9"    # Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .param p11, "x10"    # Ljava/util/List;
    .param p12, "x11"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$1;

    .line 48
    invoke-direct/range {p0 .. p11}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;-><init>(ILjava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Ljava/util/Map;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    .locals 1
    .param p0, "x0"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    .param p3, "x3"    # Ljava/util/Map;
    .param p4, "x4"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;

    .line 48
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->buildViewHierarchy(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Ljava/util/Map;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Landroid/view/View;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Ljava/util/Map;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    .locals 1
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    .param p3, "x3"    # Ljava/util/Map;

    .line 48
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->buildViewHierarchy(Landroid/view/View;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Ljava/util/Map;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Landroid/os/Parcel;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    .locals 1
    .param p0, "x0"    # Landroid/os/Parcel;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    .line 48
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->buildViewHierarchy(Landroid/os/Parcel;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    .line 48
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->viewHierarchyElements:Ljava/util/List;

    return-object v0
.end method

.method private static buildViewHierarchy(Landroid/os/Parcel;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    .locals 4
    .param p0, "fromParcel"    # Landroid/os/Parcel;
    .param p2, "parent"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;",
            ">;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;",
            ")",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;"
        }
    .end annotation

    .line 355
    .local p1, "elementList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;>;"
    nop

    .line 356
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0, p2, p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->newBuilder(ILcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Landroid/os/Parcel;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->build()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    move-result-object v0

    .line 357
    .local v0, "element":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 360
    .local v1, "childElementCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 361
    invoke-static {p0, p1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->buildViewHierarchy(Landroid/os/Parcel;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->addChild(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;)V

    .line 360
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 364
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method private static buildViewHierarchy(Landroid/view/View;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Ljava/util/Map;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    .locals 4
    .param p0, "forView"    # Landroid/view/View;
    .param p2, "parent"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;",
            ">;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;",
            "Ljava/util/Map<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;",
            "Landroid/view/View;",
            ">;)",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;"
        }
    .end annotation

    .line 334
    .local p1, "elementList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;>;"
    .local p3, "elementToViewMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Landroid/view/View;>;"
    nop

    .line 335
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0, p2, p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->newBuilder(ILcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Landroid/view/View;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->build()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    move-result-object v0

    .line 336
    .local v0, "element":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    invoke-interface {p3, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 341
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    .line 342
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 343
    nop

    .line 344
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, p1, v0, p3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->buildViewHierarchy(Landroid/view/View;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Ljava/util/Map;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    move-result-object v3

    .line 343
    invoke-virtual {v0, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->addChild(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;)V

    .line 342
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 348
    .end local v1    # "viewGroup":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method private static buildViewHierarchy(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Ljava/util/Map;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    .locals 4
    .param p0, "forInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "parent"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    .param p4, "extraDataExtractor"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;",
            ">;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;",
            "Ljava/util/Map<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;",
            ")",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;"
        }
    .end annotation

    .line 293
    .local p1, "elementList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;>;"
    .local p3, "elementToNodeInfoMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    const-string v0, "Attempted to build hierarchy from null root node"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    nop

    .line 297
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 296
    invoke-static {v0, p2, p0, p4}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->newBuilder(ILcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Landroid/view/accessibility/AccessibilityNodeInfo;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;

    move-result-object v0

    .line 298
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->build()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    move-result-object v0

    .line 299
    .local v0, "element":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 303
    invoke-virtual {p0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 304
    .local v2, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v2, :cond_0

    .line 305
    nop

    .line 306
    invoke-static {v2, p1, v0, p3, p4}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->buildViewHierarchy(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Ljava/util/Map;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    move-result-object v3

    .line 305
    invoke-virtual {v0, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->addChild(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;)V

    .line 308
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 302
    .end local v2    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 312
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method static newBuilder(ILandroid/os/Parcel;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;
    .locals 2
    .param p0, "id"    # I
    .param p1, "in"    # Landroid/os/Parcel;

    .line 412
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;

    invoke-direct {v0, p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;-><init>(I)V

    .line 413
    .local v0, "builder":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcel;

    invoke-static {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->access$402(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;Landroid/os/Parcel;)Landroid/os/Parcel;

    .line 414
    return-object v0
.end method

.method static newBuilder(ILandroid/view/View;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;
    .locals 2
    .param p0, "id"    # I
    .param p1, "view"    # Landroid/view/View;

    .line 369
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;

    invoke-direct {v0, p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;-><init>(I)V

    .line 370
    .local v0, "builder":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->access$002(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;Landroid/view/View;)Landroid/view/View;

    .line 371
    return-object v0
.end method

.method static newBuilder(ILandroid/view/accessibility/AccessibilityNodeInfo;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;
    .locals 2
    .param p0, "id"    # I
    .param p1, "nodeInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "extraDataExtractor"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;

    .line 396
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;

    invoke-direct {v0, p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;-><init>(I)V

    .line 397
    .local v0, "builder":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->access$302(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 398
    invoke-static {v0, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->access$202(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;

    .line 399
    return-object v0
.end method

.method static newBuilder(ILandroid/view/accessibility/AccessibilityWindowInfo;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;
    .locals 2
    .param p0, "id"    # I
    .param p1, "window"    # Landroid/view/accessibility/AccessibilityWindowInfo;
    .param p2, "extraDataExtractor"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;

    .line 382
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;

    invoke-direct {v0, p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;-><init>(I)V

    .line 383
    .local v0, "builder":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-static {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->access$102(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 384
    invoke-static {v0, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->access$202(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;

    .line 385
    return-object v0
.end method

.method static newBuilder(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;
    .locals 3
    .param p0, "proto"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;

    .line 404
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;->getId()I

    move-result v0

    .line 405
    .local v0, "id":I
    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;

    invoke-direct {v1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;-><init>(I)V

    .line 406
    .local v1, "builder":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;

    iput-object v2, v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->proto:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;

    .line 407
    return-object v1
.end method

.method private writeViewHierarchyToParcel(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Landroid/os/Parcel;)V
    .locals 3
    .param p1, "element"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    .param p2, "out"    # Landroid/os/Parcel;

    .line 208
    invoke-virtual {p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->writeToParcel(Landroid/os/Parcel;)V

    .line 209
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->getChildViewCount()I

    move-result v0

    .line 210
    .local v0, "children":I
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 212
    invoke-virtual {p1, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->getChildView(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->writeViewHierarchyToParcel(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Landroid/os/Parcel;)V

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 214
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method addChild(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;)V
    .locals 2
    .param p1, "child"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    .line 267
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->childIds:Ljava/util/List;

    iget v1, p1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    return-void
.end method

.method public bridge synthetic getAccessibilityHierarchy()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->getAccessibilityHierarchy()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;

    move-result-object v0

    return-object v0
.end method

.method public getAccessibilityHierarchy()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->accessibilityHierarchy:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;

    return-object v0
.end method

.method public getAllViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->viewHierarchyElements:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBoundsInScreen(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 168
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->boundsInScreen:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    if-eqz v0, :cond_0

    .line 169
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->boundsInScreen:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    .line 171
    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->boundsInScreen:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    .line 172
    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->boundsInScreen:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    .line 173
    invoke-virtual {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->boundsInScreen:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    .line 174
    invoke-virtual {v4}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 169
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 178
    :goto_0
    return-void
.end method

.method public bridge synthetic getChildWindow(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->getChildWindow(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    move-result-object p1

    return-object p1
.end method

.method public getChildWindow(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    .locals 2
    .param p1, "atIndex"    # I

    .line 128
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->childIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->getAccessibilityHierarchy()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->childIds:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->getWindowById(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    move-result-object v0

    return-object v0

    .line 129
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic getParentWindow()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->getParentWindow()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    move-result-object v0

    return-object v0
.end method

.method public getParentWindow()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->parentId:Ljava/lang/Integer;

    .line 116
    .local v0, "parentIdTmp":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->getAccessibilityHierarchy()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->getWindowById(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public bridge synthetic getRootView()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->getRootView()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    move-result-object v0

    return-object v0
.end method

.method public getRootView()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->viewHierarchyElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x0

    return-object v0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->viewHierarchyElements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    return-object v0
.end method

.method public bridge synthetic getViewById(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->getViewById(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    move-result-object p1

    return-object p1
.end method

.method public getViewById(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    .locals 1
    .param p1, "id"    # I

    .line 142
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->viewHierarchyElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->viewHierarchyElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    return-object v0

    .line 143
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method setAccessibilityHierarchy(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;)V
    .locals 0
    .param p1, "accessibilityHierarchy"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;

    .line 218
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->accessibilityHierarchy:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;

    .line 219
    return-void
.end method

.method toProto()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;
    .locals 4

    .line 223
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;->newBuilder()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;

    move-result-object v0

    .line 225
    .local v0, "builder":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->id:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;->setId(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;

    .line 226
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->parentId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->parentId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;->setParentId(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->childIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 230
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->childIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;->addAllChildIds(Ljava/lang/Iterable;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;

    .line 234
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->windowId:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 235
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->windowId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;->setWindowId(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;

    .line 237
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->layer:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 238
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->layer:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;->setLayer(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;

    .line 240
    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->type:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 241
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;->setType(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;

    .line 243
    :cond_4
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->focused:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 244
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->focused:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;->setFocused(Z)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;

    .line 246
    :cond_5
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->accessibilityFocused:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 247
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->accessibilityFocused:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;->setFocused(Z)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;

    .line 249
    :cond_6
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->active:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    .line 250
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->active:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;->setActive(Z)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;

    .line 252
    :cond_7
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->boundsInScreen:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    if-eqz v1, :cond_8

    .line 253
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->boundsInScreen:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->toProto()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;->setBoundsInScreen(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;

    .line 257
    :cond_8
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->viewHierarchyElements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    .line 258
    .local v2, "view":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->toProto()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;->addViews(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;

    .line 259
    .end local v2    # "view":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    goto :goto_0

    .line 260
    :cond_9
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;

    return-object v1
.end method

.method writeToParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;

    .line 181
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->windowId:Ljava/lang/Integer;

    invoke-static {p1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->writeNullableInteger(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 182
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->layer:Ljava/lang/Integer;

    invoke-static {p1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->writeNullableInteger(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 183
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->type:Ljava/lang/Integer;

    invoke-static {p1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->writeNullableInteger(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 184
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->focused:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->writeNullableBoolean(Landroid/os/Parcel;Ljava/lang/Boolean;)V

    .line 185
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->accessibilityFocused:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->writeNullableBoolean(Landroid/os/Parcel;Ljava/lang/Boolean;)V

    .line 186
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->active:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->writeNullableBoolean(Landroid/os/Parcel;Ljava/lang/Boolean;)V

    .line 187
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->boundsInScreen:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    .line 188
    .local v0, "boundsInScreenTmp":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    if-eqz v0, :cond_0

    .line 189
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getLeft()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getTop()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getRight()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getBottom()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 195
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->viewHierarchyElements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->viewHierarchyElements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 203
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->getRootView()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    invoke-direct {p0, v1, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->writeViewHierarchyToParcel(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Landroid/os/Parcel;)V

    .line 205
    :cond_1
    return-void
.end method
