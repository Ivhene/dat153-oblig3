.class public Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;
.super Ljava/lang/Object;
.source "AccessibilityHierarchy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy$Builder;,
        Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy$ViewElementClassNames;
    }
.end annotation


# instance fields
.field private final activeWindow:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;

.field private final deviceState:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceState;

.field protected final viewElementClassNames:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy$ViewElementClassNames;

.field private final windowHierarchyElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceState;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy$ViewElementClassNames;)V
    .locals 0
    .param p1, "deviceState"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceState;
    .param p3, "activeWindow"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;
    .param p4, "viewElementClassNames"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy$ViewElementClassNames;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceState;",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;",
            ">;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy$ViewElementClassNames;",
            ")V"
        }
    .end annotation

    .line 56
    .local p2, "windowHierarchyElements":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;->deviceState:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceState;

    .line 58
    iput-object p2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;->windowHierarchyElements:Ljava/util/List;

    .line 59
    iput-object p3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;->activeWindow:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;

    .line 60
    iput-object p4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;->viewElementClassNames:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy$ViewElementClassNames;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;

    .line 39
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;->setAccessibilityHierarchy()V

    return-void
.end method

.method public static newBuilder(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy$Builder;
    .locals 2
    .param p0, "proto"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto;

    .line 146
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy$Builder;

    invoke-direct {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy$Builder;-><init>()V

    .line 147
    .local v0, "builder":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy$Builder;
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto;

    iput-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy$Builder;->proto:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto;

    .line 148
    return-object v0
.end method

.method private setAccessibilityHierarchy()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;->windowHierarchyElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;

    .line 136
    .local v1, "window":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;
    invoke-virtual {v1, p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->setAccessibilityHierarchy(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;)V

    .line 137
    .end local v1    # "window":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;
    goto :goto_0

    .line 138
    :cond_0
    return-void
.end method


# virtual methods
.method public getActiveWindow()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;->activeWindow:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;

    return-object v0
.end method

.method public getAllWindows()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;->windowHierarchyElements:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceState()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceState;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;->deviceState:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceState;

    return-object v0
.end method

.method public getViewById(J)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .locals 3
    .param p1, "condensedUniqueId"    # J

    .line 112
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    .line 113
    .local v0, "windowId":I
    long-to-int v1, p1

    .line 114
    .local v1, "viewId":I
    invoke-virtual {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;->getWindowById(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->getViewById(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v2

    return-object v2
.end method

.method getViewElementClassNames()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy$ViewElementClassNames;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;->viewElementClassNames:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy$ViewElementClassNames;

    return-object v0
.end method

.method public getWindowById(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;
    .locals 1
    .param p1, "id"    # I

    .line 98
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;->windowHierarchyElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;->windowHierarchyElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;

    return-object v0

    .line 99
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public toProto()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto;
    .locals 4

    .line 121
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto;->newBuilder()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto$Builder;

    move-result-object v0

    .line 122
    .local v0, "builder":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto$Builder;
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;->deviceState:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceState;

    .line 123
    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceState;->toProto()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto$Builder;->setDeviceState(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;->activeWindow:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;

    .line 124
    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto$Builder;->setActiveWindowId(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;->viewElementClassNames:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy$ViewElementClassNames;

    .line 125
    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy$ViewElementClassNames;->toProto()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewElementClassNamesProto;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto$Builder;->setViewElementClassNames(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewElementClassNamesProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto$Builder;

    .line 126
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;->windowHierarchyElements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;

    .line 127
    .local v2, "window":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;
    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->toProto()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto$Builder;->addWindows(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto$Builder;

    .line 128
    .end local v2    # "window":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;
    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto;

    return-object v1
.end method
