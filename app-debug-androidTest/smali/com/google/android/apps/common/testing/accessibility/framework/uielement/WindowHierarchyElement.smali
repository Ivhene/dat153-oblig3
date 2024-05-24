.class public Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;
.super Ljava/lang/Object;
.source "WindowHierarchyElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement$Builder;
    }
.end annotation


# static fields
.field public static final WINDOW_TYPE_ACCESSIBILITY:I = 0x4

.field public static final WINDOW_TYPE_APPLICATION:I = 0x1

.field public static final WINDOW_TYPE_INPUT_METHOD:I = 0x2

.field public static final WINDOW_TYPE_SYSTEM:I = 0x3


# instance fields
.field protected final accessibilityFocused:Ljava/lang/Boolean;

.field private accessibilityHierarchy:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;

.field protected final active:Ljava/lang/Boolean;

.field protected final boundsInScreen:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

.field protected final childIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final focused:Ljava/lang/Boolean;

.field protected final id:I

.field protected final layer:Ljava/lang/Integer;

.field protected final parentId:Ljava/lang/Integer;

.field protected final type:Ljava/lang/Integer;

.field private final viewHierarchyElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;",
            ">;"
        }
    .end annotation
.end field

.field protected final windowId:Ljava/lang/Integer;


# direct methods
.method protected constructor <init>(ILjava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;)V
    .locals 2
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
            ")V"
        }
    .end annotation

    .line 73
    .local p3, "childIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->childIds:Ljava/util/List;

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->viewHierarchyElements:Ljava/util/List;

    .line 75
    iput p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->id:I

    .line 76
    iput-object p2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->parentId:Ljava/lang/Integer;

    .line 77
    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 78
    iput-object p4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->windowId:Ljava/lang/Integer;

    .line 79
    iput-object p5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->layer:Ljava/lang/Integer;

    .line 80
    iput-object p6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->type:Ljava/lang/Integer;

    .line 81
    iput-object p7, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->focused:Ljava/lang/Boolean;

    .line 82
    iput-object p8, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->accessibilityFocused:Ljava/lang/Boolean;

    .line 83
    iput-object p9, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->active:Ljava/lang/Boolean;

    .line 84
    iput-object p10, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->boundsInScreen:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    .line 85
    return-void
.end method

.method protected constructor <init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;)V
    .locals 5
    .param p1, "proto"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->childIds:Ljava/util/List;

    .line 89
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;->getId()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->id:I

    .line 90
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;->getParentId()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;->getParentId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->parentId:Ljava/lang/Integer;

    .line 91
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;->getChildIdsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 94
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;->hasWindowId()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;->getWindowId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v3

    :goto_1
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->windowId:Ljava/lang/Integer;

    .line 95
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;->hasLayer()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;->getLayer()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v3

    :goto_2
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->layer:Ljava/lang/Integer;

    .line 96
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;->hasType()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object v0, v3

    :goto_3
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->type:Ljava/lang/Integer;

    .line 97
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;->hasFocused()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;->getFocused()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_4

    :cond_4
    move-object v0, v3

    :goto_4
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->focused:Ljava/lang/Boolean;

    .line 98
    nop

    .line 99
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;->hasAccessibilityFocused()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;->getAccessibilityFocused()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_5

    :cond_5
    move-object v0, v3

    :goto_5
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->accessibilityFocused:Ljava/lang/Boolean;

    .line 100
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;->hasActive()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;->getActive()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_6

    :cond_6
    move-object v0, v3

    :goto_6
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->active:Ljava/lang/Boolean;

    .line 101
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;->hasBoundsInScreen()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v3, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;->getBoundsInScreen()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;)V

    :cond_7
    iput-object v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->boundsInScreen:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    .line 104
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;->getViewsCount()I

    move-result v0

    .line 105
    .local v0, "totalNodes":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->viewHierarchyElements:Ljava/util/List;

    .line 106
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;->getViewsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 107
    .local v2, "view":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    iget-object v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->viewHierarchyElements:Ljava/util/List;

    new-instance v4, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    invoke-direct {v4, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    .end local v2    # "view":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    goto :goto_7

    .line 109
    :cond_8
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;

    .line 38
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->viewHierarchyElements:Ljava/util/List;

    return-object v0
.end method

.method static newBuilder(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement$Builder;
    .locals 2
    .param p0, "proto"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;

    .line 321
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement$Builder;

    invoke-direct {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement$Builder;-><init>()V

    .line 322
    .local v0, "builder":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement$Builder;
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;

    iput-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement$Builder;->proto:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;

    .line 323
    return-object v0
.end method


# virtual methods
.method addChild(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;)V
    .locals 2
    .param p1, "child"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;

    .line 316
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->childIds:Ljava/util/List;

    iget v1, p1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    return-void
.end method

.method public getAccessibilityHierarchy()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->accessibilityHierarchy:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;

    return-object v0
.end method

.method public getAllViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;",
            ">;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->viewHierarchyElements:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBoundsInScreen()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->boundsInScreen:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->EMPTY:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    :goto_0
    return-object v0
.end method

.method public getChildWindow(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;
    .locals 2
    .param p1, "atIndex"    # I

    .line 169
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->childIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->getAccessibilityHierarchy()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->childIds:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;->getWindowById(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;

    move-result-object v0

    return-object v0

    .line 170
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public getChildWindowCount()I
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->childIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getId()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->id:I

    return v0
.end method

.method public getLayer()Ljava/lang/Integer;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->layer:Ljava/lang/Integer;

    return-object v0
.end method

.method public getParentWindow()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->parentId:Ljava/lang/Integer;

    .line 150
    .local v0, "parentIdTmp":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->getAccessibilityHierarchy()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;->getWindowById(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getRootView()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->viewHierarchyElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const/4 v0, 0x0

    return-object v0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->viewHierarchyElements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    return-object v0
.end method

.method public getType()Ljava/lang/Integer;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->type:Ljava/lang/Integer;

    return-object v0
.end method

.method public getViewById(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .locals 1
    .param p1, "id"    # I

    .line 182
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->viewHierarchyElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->viewHierarchyElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    return-object v0

    .line 183
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public getWindowId()Ljava/lang/Integer;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->windowId:Ljava/lang/Integer;

    return-object v0
.end method

.method public isAccessibilityFocused()Ljava/lang/Boolean;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->accessibilityFocused:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isActive()Ljava/lang/Boolean;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->active:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isFocused()Ljava/lang/Boolean;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->focused:Ljava/lang/Boolean;

    return-object v0
.end method

.method setAccessibilityHierarchy(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;)V
    .locals 0
    .param p1, "accessibilityHierarchy"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;

    .line 268
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->accessibilityHierarchy:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;

    .line 269
    return-void
.end method

.method toProto()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;
    .locals 4

    .line 272
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;->newBuilder()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;

    move-result-object v0

    .line 274
    .local v0, "builder":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->id:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;->setId(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;

    .line 275
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->parentId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 276
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;->setParentId(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->childIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 279
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->childIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;->addAllChildIds(Ljava/lang/Iterable;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;

    .line 283
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->windowId:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 284
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;->setWindowId(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;

    .line 286
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->layer:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 287
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;->setLayer(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;

    .line 289
    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->type:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 290
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;->setType(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;

    .line 292
    :cond_4
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->focused:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 293
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;->setFocused(Z)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;

    .line 295
    :cond_5
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->accessibilityFocused:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 296
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;->setFocused(Z)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;

    .line 298
    :cond_6
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->active:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    .line 299
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;->setActive(Z)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;

    .line 301
    :cond_7
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->boundsInScreen:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    if-eqz v1, :cond_8

    .line 302
    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->toProto()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;->setBoundsInScreen(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;

    .line 306
    :cond_8
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->viewHierarchyElements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 307
    .local v2, "view":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->toProto()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;->addViews(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;

    .line 308
    .end local v2    # "view":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    goto :goto_0

    .line 309
    :cond_9
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;

    return-object v1
.end method
