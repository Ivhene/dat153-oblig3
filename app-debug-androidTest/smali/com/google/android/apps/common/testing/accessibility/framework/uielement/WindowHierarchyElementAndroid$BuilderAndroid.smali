.class public Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;
.super Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement$Builder;
.source "WindowHierarchyElementAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuilderAndroid"
.end annotation


# instance fields
.field private accessibilityFocused:Ljava/lang/Boolean;

.field private active:Ljava/lang/Boolean;

.field private boundsInScreen:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

.field private final childIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private extraDataExtractor:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;

.field private focused:Ljava/lang/Boolean;

.field private fromNodeInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

.field private fromRootView:Landroid/view/View;

.field private fromWindowInfo:Landroid/view/accessibility/AccessibilityWindowInfo;

.field private final id:I

.field private in:Landroid/os/Parcel;

.field private layer:Ljava/lang/Integer;

.field private nodeInfoOriginMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private parent:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

.field private parentId:Ljava/lang/Integer;

.field private type:Ljava/lang/Integer;

.field private viewHierarchyElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;",
            ">;"
        }
    .end annotation
.end field

.field private viewOriginMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private windowId:Ljava/lang/Integer;


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "id"    # I

    .line 444
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement$Builder;-><init>()V

    .line 433
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->childIds:Ljava/util/List;

    .line 445
    iput p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->id:I

    .line 446
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;
    .param p1, "x1"    # Landroid/view/View;

    .line 421
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->fromRootView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$102(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;
    .param p1, "x1"    # Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 421
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->fromWindowInfo:Landroid/view/accessibility/AccessibilityWindowInfo;

    return-object p1
.end method

.method static synthetic access$202(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;
    .param p1, "x1"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;

    .line 421
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->extraDataExtractor:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;

    return-object p1
.end method

.method static synthetic access$302(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;
    .param p1, "x1"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 421
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->fromNodeInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;Landroid/os/Parcel;)Landroid/os/Parcel;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;
    .param p1, "x1"    # Landroid/os/Parcel;

    .line 421
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->in:Landroid/os/Parcel;

    return-object p1
.end method

.method private construct(ILcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;Landroid/os/Parcel;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    .locals 19
    .param p1, "id"    # I
    .param p2, "parent"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    .param p3, "in"    # Landroid/os/Parcel;

    .line 636
    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iput-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->parentId:Ljava/lang/Integer;

    .line 639
    invoke-static/range {p3 .. p3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->readNullableInteger(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->windowId:Ljava/lang/Integer;

    .line 640
    invoke-static/range {p3 .. p3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->readNullableInteger(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->layer:Ljava/lang/Integer;

    .line 641
    invoke-static/range {p3 .. p3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->readNullableInteger(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->type:Ljava/lang/Integer;

    .line 642
    invoke-static/range {p3 .. p3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->readNullableBoolean(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->focused:Ljava/lang/Boolean;

    .line 643
    invoke-static/range {p3 .. p3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->readNullableBoolean(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->accessibilityFocused:Ljava/lang/Boolean;

    .line 644
    invoke-static/range {p3 .. p3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->readNullableBoolean(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->active:Ljava/lang/Boolean;

    .line 646
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 647
    new-instance v2, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    .line 650
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 652
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 654
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 656
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;-><init>(IIII)V

    iput-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->boundsInScreen:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    goto :goto_1

    .line 658
    :cond_1
    iput-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->boundsInScreen:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    .line 661
    :goto_1
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 662
    .local v2, "totalExpectedNodes":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->viewHierarchyElements:Ljava/util/List;

    .line 663
    if-lez v2, :cond_3

    .line 664
    move-object/from16 v5, p3

    invoke-static {v5, v4, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->access$800(Landroid/os/Parcel;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    .line 665
    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->viewHierarchyElements:Ljava/util/List;

    .line 666
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v2, v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 665
    :goto_2
    const-string v1, "View hierarchy failed consistency check."

    invoke-static {v3, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    goto :goto_3

    .line 663
    :cond_3
    move-object/from16 v5, p3

    .line 669
    :goto_3
    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    iget-object v8, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->parentId:Ljava/lang/Integer;

    iget-object v9, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->childIds:Ljava/util/List;

    iget-object v10, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->windowId:Ljava/lang/Integer;

    iget-object v11, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->layer:Ljava/lang/Integer;

    iget-object v12, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->type:Ljava/lang/Integer;

    iget-object v13, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->focused:Ljava/lang/Boolean;

    iget-object v14, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->accessibilityFocused:Ljava/lang/Boolean;

    iget-object v15, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->active:Ljava/lang/Boolean;

    iget-object v3, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->boundsInScreen:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    iget-object v4, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->viewHierarchyElements:Ljava/util/List;

    const/16 v18, 0x0

    move-object v6, v1

    move/from16 v7, p1

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    invoke-direct/range {v6 .. v18}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;-><init>(ILjava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$1;)V

    return-object v1
.end method

.method private construct(ILcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;Landroid/view/View;Ljava/util/Map;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    .locals 19
    .param p1, "id"    # I
    .param p2, "parent"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    .param p3, "fromRootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;",
            "Landroid/view/View;",
            ">;)",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;"
        }
    .end annotation

    .line 598
    .local p4, "elementToViewMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Landroid/view/View;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    iput-object v3, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->parentId:Ljava/lang/Integer;

    .line 601
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 602
    .local v3, "tempRect":Landroid/graphics/Rect;
    invoke-virtual {v1, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 603
    new-instance v4, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Rect;->top:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;-><init>(IIII)V

    iput-object v4, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->boundsInScreen:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    .line 607
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->active:Ljava/lang/Boolean;

    .line 608
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->type:Ljava/lang/Integer;

    .line 611
    iput-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->windowId:Ljava/lang/Integer;

    .line 612
    iput-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->layer:Ljava/lang/Integer;

    .line 613
    iput-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->focused:Ljava/lang/Boolean;

    .line 614
    iput-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->accessibilityFocused:Ljava/lang/Boolean;

    .line 615
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->viewHierarchyElements:Ljava/util/List;

    .line 617
    move-object/from16 v5, p4

    invoke-static {v1, v4, v2, v5}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->access$700(Landroid/view/View;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Ljava/util/Map;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    .line 619
    new-instance v2, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    iget-object v8, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->parentId:Ljava/lang/Integer;

    iget-object v9, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->childIds:Ljava/util/List;

    iget-object v10, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->windowId:Ljava/lang/Integer;

    iget-object v11, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->layer:Ljava/lang/Integer;

    iget-object v12, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->type:Ljava/lang/Integer;

    iget-object v13, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->focused:Ljava/lang/Boolean;

    iget-object v14, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->accessibilityFocused:Ljava/lang/Boolean;

    iget-object v15, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->active:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->boundsInScreen:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    iget-object v7, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->viewHierarchyElements:Ljava/util/List;

    const/16 v18, 0x0

    move-object v6, v2

    move-object/from16 v17, v7

    move/from16 v7, p1

    move-object/from16 v16, v4

    invoke-direct/range {v6 .. v18}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;-><init>(ILjava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$1;)V

    return-object v2
.end method

.method private construct(ILcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/Map;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    .locals 20
    .param p1, "id"    # I
    .param p2, "parent"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    .param p3, "fromRootNode"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p5, "extraDataExtractor"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Ljava/util/Map<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;",
            ")",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;"
        }
    .end annotation

    .line 552
    .local p4, "elementToNodeInfoMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    iput-object v3, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->parentId:Ljava/lang/Integer;

    .line 555
    invoke-virtual/range {p3 .. p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->windowId:Ljava/lang/Integer;

    .line 556
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 557
    .local v3, "tempRect":Landroid/graphics/Rect;
    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 558
    new-instance v4, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Rect;->top:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;-><init>(IIII)V

    iput-object v4, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->boundsInScreen:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    .line 562
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->active:Ljava/lang/Boolean;

    .line 563
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->type:Ljava/lang/Integer;

    .line 566
    iput-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->layer:Ljava/lang/Integer;

    .line 567
    iput-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->focused:Ljava/lang/Boolean;

    .line 568
    iput-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->accessibilityFocused:Ljava/lang/Boolean;

    .line 571
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->viewHierarchyElements:Ljava/util/List;

    .line 572
    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static {v1, v4, v2, v5, v6}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->access$500(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Ljava/util/Map;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    .line 578
    new-instance v2, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    iget-object v9, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->parentId:Ljava/lang/Integer;

    iget-object v10, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->childIds:Ljava/util/List;

    iget-object v11, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->windowId:Ljava/lang/Integer;

    iget-object v12, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->layer:Ljava/lang/Integer;

    iget-object v13, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->type:Ljava/lang/Integer;

    iget-object v14, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->focused:Ljava/lang/Boolean;

    iget-object v15, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->accessibilityFocused:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->active:Ljava/lang/Boolean;

    iget-object v8, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->boundsInScreen:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    iget-object v7, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->viewHierarchyElements:Ljava/util/List;

    const/16 v19, 0x0

    move-object/from16 v18, v7

    move-object v7, v2

    move-object/from16 v17, v8

    move/from16 v8, p1

    move-object/from16 v16, v4

    invoke-direct/range {v7 .. v19}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;-><init>(ILjava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$1;)V

    return-object v2
.end method

.method private construct(ILcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;Landroid/view/accessibility/AccessibilityWindowInfo;Ljava/util/Map;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    .locals 23
    .param p1, "id"    # I
    .param p2, "parent"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    .param p3, "fromWindow"    # Landroid/view/accessibility/AccessibilityWindowInfo;
    .param p5, "extraDataExtractor"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            "Ljava/util/Map<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;",
            ")",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;"
        }
    .end annotation

    .line 500
    .local p4, "elementToNodeInfoMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iput-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->parentId:Ljava/lang/Integer;

    .line 503
    invoke-virtual/range {p3 .. p3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->windowId:Ljava/lang/Integer;

    .line 504
    invoke-virtual/range {p3 .. p3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getLayer()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->layer:Ljava/lang/Integer;

    .line 505
    invoke-virtual/range {p3 .. p3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->type:Ljava/lang/Integer;

    .line 506
    invoke-virtual/range {p3 .. p3}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->focused:Ljava/lang/Boolean;

    .line 507
    invoke-virtual/range {p3 .. p3}, Landroid/view/accessibility/AccessibilityWindowInfo;->isAccessibilityFocused()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->accessibilityFocused:Ljava/lang/Boolean;

    .line 508
    invoke-virtual/range {p3 .. p3}, Landroid/view/accessibility/AccessibilityWindowInfo;->isActive()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->active:Ljava/lang/Boolean;

    .line 510
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 511
    .local v2, "tempRect":Landroid/graphics/Rect;
    move-object/from16 v3, p3

    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 512
    new-instance v4, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;-><init>(IIII)V

    iput-object v4, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->boundsInScreen:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    .line 515
    invoke-virtual/range {p3 .. p3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    .line 516
    .local v4, "rootInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->viewHierarchyElements:Ljava/util/List;

    .line 517
    if-eqz v4, :cond_1

    .line 518
    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-static {v4, v5, v1, v6, v7}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->access$500(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Ljava/util/Map;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    .line 524
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    goto :goto_1

    .line 529
    :cond_1
    move-object/from16 v6, p4

    move-object/from16 v7, p5

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "WindowHierarchyElementA"

    const-string v8, "Constructed WindowHierarchyElement with no valid root."

    invoke-static {v5, v8, v1}, Lcom/google/android/libraries/accessibility/utils/log/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 531
    :goto_1
    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    iget-object v11, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->parentId:Ljava/lang/Integer;

    iget-object v12, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->childIds:Ljava/util/List;

    iget-object v13, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->windowId:Ljava/lang/Integer;

    iget-object v14, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->layer:Ljava/lang/Integer;

    iget-object v15, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->type:Ljava/lang/Integer;

    iget-object v5, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->focused:Ljava/lang/Boolean;

    iget-object v8, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->accessibilityFocused:Ljava/lang/Boolean;

    iget-object v10, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->active:Ljava/lang/Boolean;

    iget-object v9, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->boundsInScreen:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    move-object/from16 v22, v2

    .end local v2    # "tempRect":Landroid/graphics/Rect;
    .local v22, "tempRect":Landroid/graphics/Rect;
    iget-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->viewHierarchyElements:Ljava/util/List;

    const/16 v21, 0x0

    move-object/from16 v19, v9

    move-object v9, v1

    move-object/from16 v18, v10

    move/from16 v10, p1

    move-object/from16 v16, v5

    move-object/from16 v17, v8

    move-object/from16 v20, v2

    invoke-direct/range {v9 .. v21}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;-><init>(ILjava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$1;)V

    return-object v1
.end method

.method private construct(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    .locals 19
    .param p1, "proto"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;

    .line 685
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;->getParentId()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;->getParentId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    iput-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->parentId:Ljava/lang/Integer;

    .line 686
    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->childIds:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;->getChildIdsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 689
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;->hasWindowId()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;->getWindowId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    iput-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->windowId:Ljava/lang/Integer;

    .line 690
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;->hasLayer()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;->getLayer()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v3

    :goto_2
    iput-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->layer:Ljava/lang/Integer;

    .line 691
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;->hasType()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_3

    :cond_3
    move-object v1, v3

    :goto_3
    iput-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->type:Ljava/lang/Integer;

    .line 692
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;->hasFocused()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;->getFocused()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_4

    :cond_4
    move-object v1, v3

    :goto_4
    iput-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->focused:Ljava/lang/Boolean;

    .line 693
    nop

    .line 694
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;->hasAccessibilityFocused()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;->getAccessibilityFocused()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_5

    :cond_5
    move-object v1, v3

    :goto_5
    iput-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->accessibilityFocused:Ljava/lang/Boolean;

    .line 695
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;->hasActive()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;->getActive()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_6

    :cond_6
    move-object v1, v3

    :goto_6
    iput-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->active:Ljava/lang/Boolean;

    .line 696
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;->hasBoundsInScreen()Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v3, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;->getBoundsInScreen()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;)V

    :cond_7
    iput-object v3, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->boundsInScreen:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    .line 699
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;->getViewsCount()I

    move-result v1

    .line 700
    .local v1, "totalNodes":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->viewHierarchyElements:Ljava/util/List;

    .line 701
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;->getViewsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 702
    .local v3, "view":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    iget-object v4, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->viewHierarchyElements:Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->newBuilder(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->build()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 703
    .end local v3    # "view":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    goto :goto_7

    .line 704
    :cond_8
    new-instance v2, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    .line 705
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;->getId()I

    move-result v7

    iget-object v8, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->parentId:Ljava/lang/Integer;

    iget-object v9, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->childIds:Ljava/util/List;

    iget-object v10, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->windowId:Ljava/lang/Integer;

    iget-object v11, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->layer:Ljava/lang/Integer;

    iget-object v12, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->type:Ljava/lang/Integer;

    iget-object v13, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->focused:Ljava/lang/Boolean;

    iget-object v14, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->accessibilityFocused:Ljava/lang/Boolean;

    iget-object v15, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->active:Ljava/lang/Boolean;

    iget-object v3, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->boundsInScreen:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    iget-object v4, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->viewHierarchyElements:Ljava/util/List;

    const/16 v18, 0x0

    move-object v6, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    invoke-direct/range {v6 .. v18}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;-><init>(ILjava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$1;)V

    .line 704
    return-object v2
.end method

.method private populateOriginMaps(Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .line 721
    .local p1, "elementToViewMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Landroid/view/View;>;"
    .local p2, "elementToNodeInfoMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->viewOriginMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 723
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 724
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Landroid/view/View;>;"
    iget-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->viewOriginMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    invoke-virtual {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->getCondensedUniqueId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Landroid/view/View;>;"
    goto :goto_0

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->nodeInfoOriginMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 729
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 730
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    iget-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->nodeInfoOriginMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    invoke-virtual {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->getCondensedUniqueId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    goto :goto_1

    .line 733
    :cond_1
    return-void
.end method

.method private setWindow(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;)V
    .locals 2
    .param p1, "window"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    .line 737
    invoke-static {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->access$900(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 738
    invoke-static {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->access$900(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    .line 739
    .local v1, "view":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    invoke-virtual {v1, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->setWindow(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;)V

    .line 740
    .end local v1    # "view":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    goto :goto_0

    .line 742
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;
    .locals 1

    .line 421
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->build()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    .locals 9

    .line 466
    const/4 v0, 0x0

    .line 467
    .local v0, "elementToViewMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 469
    .local v1, "elementToNodeInfoMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    iget-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->fromRootView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 470
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v0, v2

    .line 471
    iget v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->id:I

    iget-object v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->parent:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    iget-object v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->fromRootView:Landroid/view/View;

    invoke-direct {p0, v2, v3, v4, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->construct(ILcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;Landroid/view/View;Ljava/util/Map;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    move-result-object v2

    .local v2, "result":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    goto :goto_0

    .line 472
    .end local v2    # "result":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    :cond_0
    iget-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->fromWindowInfo:Landroid/view/accessibility/AccessibilityWindowInfo;

    if-eqz v2, :cond_1

    .line 473
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 474
    .end local v1    # "elementToNodeInfoMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .local v7, "elementToNodeInfoMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    iget v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->id:I

    iget-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->parent:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    iget-object v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->fromWindowInfo:Landroid/view/accessibility/AccessibilityWindowInfo;

    iget-object v8, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->extraDataExtractor:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->construct(ILcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;Landroid/view/accessibility/AccessibilityWindowInfo;Ljava/util/Map;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    move-result-object v2

    move-object v1, v7

    .restart local v2    # "result":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    goto :goto_0

    .line 475
    .end local v2    # "result":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    .end local v7    # "elementToNodeInfoMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v1    # "elementToNodeInfoMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :cond_1
    iget-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->fromNodeInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v2, :cond_2

    .line 476
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 477
    .end local v1    # "elementToNodeInfoMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v7    # "elementToNodeInfoMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    iget v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->id:I

    iget-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->parent:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    iget-object v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->fromNodeInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v8, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->extraDataExtractor:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->construct(ILcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/Map;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    move-result-object v2

    move-object v1, v7

    .restart local v2    # "result":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    goto :goto_0

    .line 478
    .end local v2    # "result":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    .end local v7    # "elementToNodeInfoMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v1    # "elementToNodeInfoMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :cond_2
    iget-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->in:Landroid/os/Parcel;

    if-eqz v2, :cond_3

    .line 479
    iget v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->id:I

    iget-object v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->parent:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    invoke-direct {p0, v3, v4, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->construct(ILcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;Landroid/os/Parcel;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    move-result-object v2

    .restart local v2    # "result":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    goto :goto_0

    .line 480
    .end local v2    # "result":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    :cond_3
    iget-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->proto:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;

    if-eqz v2, :cond_4

    .line 481
    iget-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->proto:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;

    invoke-direct {p0, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->construct(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    move-result-object v2

    .line 488
    .restart local v2    # "result":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    :goto_0
    invoke-direct {p0, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->setWindow(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;)V

    .line 489
    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->populateOriginMaps(Ljava/util/Map;Ljava/util/Map;)V

    .line 490
    return-object v2

    .line 483
    .end local v2    # "result":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Nothing from which to build"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setNodeInfoOriginMap(Ljava/util/Map;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;"
        }
    .end annotation

    .line 454
    .local p1, "originMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->nodeInfoOriginMap:Ljava/util/Map;

    .line 455
    return-object p0
.end method

.method public setParent(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;
    .locals 0
    .param p1, "parent"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    .line 449
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->parent:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    .line 450
    return-object p0
.end method

.method public setViewOriginMap(Ljava/util/Map;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Landroid/view/View;",
            ">;)",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;"
        }
    .end annotation

    .line 459
    .local p1, "originMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/view/View;>;"
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->viewOriginMap:Ljava/util/Map;

    .line 460
    return-object p0
.end method
