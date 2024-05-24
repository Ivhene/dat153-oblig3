.class public Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;
.super Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy$Builder;
.source "AccessibilityHierarchyAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuilderAndroid"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private disposeInstances:Z

.field private fromRootNode:Landroid/view/accessibility/AccessibilityNodeInfo;

.field private fromRootView:Landroid/view/View;

.field private fromWindowList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private nodeInfoOriginMap:Lcom/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BiMap<",
            "Ljava/lang/Long;",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private obtainCharacterLocations:Z

.field private viewOriginMap:Lcom/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BiMap<",
            "Ljava/lang/Long;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 690
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy$Builder;-><init>()V

    .line 697
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->disposeInstances:Z

    .line 698
    iput-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->obtainCharacterLocations:Z

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;
    .param p1, "x1"    # Landroid/view/View;

    .line 690
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->fromRootView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$202(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;
    .param p1, "x1"    # Ljava/util/List;

    .line 690
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->fromWindowList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$302(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;
    .param p1, "x1"    # Landroid/content/Context;

    .line 690
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->context:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;
    .param p1, "x1"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 690
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->fromRootNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object p1
.end method

.method private buildHierarchyFromNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/content/Context;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;
    .locals 10
    .param p1, "fromRootNode"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "extraDataExtractor"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;

    .line 801
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->nodeInfoOriginMap:Lcom/google/common/collect/BiMap;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 804
    iput-boolean v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->disposeInstances:Z

    .line 805
    invoke-static {}, Lcom/google/common/collect/HashBiMap;->create()Lcom/google/common/collect/HashBiMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->nodeInfoOriginMap:Lcom/google/common/collect/BiMap;

    .line 808
    :cond_0
    nop

    .line 809
    const/4 v0, 0x0

    invoke-static {v0, p1, p3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->newBuilder(ILandroid/view/accessibility/AccessibilityNodeInfo;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->nodeInfoOriginMap:Lcom/google/common/collect/BiMap;

    .line 810
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->setNodeInfoOriginMap(Ljava/util/Map;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;

    move-result-object v2

    .line 811
    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->build()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    move-result-object v2

    .line 812
    .local v2, "activeWindow":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    new-array v1, v1, [Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    aput-object v2, v1, v0

    .line 813
    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 814
    .local v0, "windowHierarchyElements":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;>;"
    invoke-static {p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;->newBuilder(Landroid/content/Context;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid$Builder;->build()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;

    move-result-object v1

    .line 815
    .local v1, "deviceState":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;
    new-instance v7, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$ViewElementClassNamesAndroid;

    invoke-direct {v7, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$ViewElementClassNamesAndroid;-><init>(Ljava/util/List;)V

    .line 818
    .local v7, "viewElementClassNames":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$ViewElementClassNamesAndroid;
    new-instance v9, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;

    const/4 v8, 0x0

    move-object v3, v9

    move-object v4, v1

    move-object v5, v0

    move-object v6, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$ViewElementClassNamesAndroid;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$1;)V

    .line 821
    .local v3, "hierarchy":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;
    invoke-static {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->access$600(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;)V

    .line 824
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->access$700()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 825
    iget-object v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->nodeInfoOriginMap:Lcom/google/common/collect/BiMap;

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/collect/BiMap;

    invoke-static {v3, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->access$1100(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;Lcom/google/common/collect/BiMap;)V

    .line 827
    :cond_1
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->access$900()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 828
    iget-object v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->nodeInfoOriginMap:Lcom/google/common/collect/BiMap;

    .line 829
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/collect/BiMap;

    .line 828
    invoke-static {v3, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->access$1200(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;Lcom/google/common/collect/BiMap;)V

    .line 831
    :cond_2
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->access$1300()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 832
    iget-object v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->nodeInfoOriginMap:Lcom/google/common/collect/BiMap;

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/collect/BiMap;

    invoke-static {v3, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->access$1400(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;Lcom/google/common/collect/BiMap;)V

    .line 834
    :cond_3
    return-object v3
.end method

.method private static buildHierarchyFromProto(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;
    .locals 11
    .param p0, "proto"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto;

    .line 903
    nop

    .line 904
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto;->getDeviceState()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;->newBuilder(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid$Builder;->build()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;

    move-result-object v0

    .line 905
    .local v0, "deviceState":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto;->getActiveWindowId()I

    move-result v7

    .line 907
    .local v7, "activeWindowId":I
    new-instance v1, Ljava/util/ArrayList;

    .line 908
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto;->getWindowsCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v8, v1

    .line 909
    .local v8, "windowHierarchyElements":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto;->getWindowsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;

    .line 910
    .local v2, "windowProto":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;
    invoke-static {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->newBuilder(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->build()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 911
    .end local v2    # "windowProto":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;
    goto :goto_0

    .line 912
    :cond_0
    nop

    .line 913
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 912
    const-string v2, "Hierarchies must contain at least one window."

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 914
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    .line 915
    .local v9, "activeWindow":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    new-instance v5, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$ViewElementClassNamesAndroid;

    .line 916
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto;->getViewElementClassNames()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewElementClassNamesProto;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$ViewElementClassNamesAndroid;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewElementClassNamesProto;)V

    .line 918
    .local v5, "viewElementClassNames":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$ViewElementClassNamesAndroid;
    new-instance v10, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;

    const/4 v6, 0x0

    move-object v1, v10

    move-object v2, v0

    move-object v3, v8

    move-object v4, v9

    invoke-direct/range {v1 .. v6}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$ViewElementClassNamesAndroid;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$1;)V

    .line 921
    .local v1, "hierarchy":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;
    invoke-static {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->access$600(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;)V

    .line 922
    return-object v1
.end method

.method private buildHierarchyFromView(Landroid/view/View;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;
    .locals 11
    .param p1, "fromRootView"    # Landroid/view/View;

    .line 763
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->viewOriginMap:Lcom/google/common/collect/BiMap;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 766
    iput-boolean v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->disposeInstances:Z

    .line 767
    invoke-static {}, Lcom/google/common/collect/HashBiMap;->create()Lcom/google/common/collect/HashBiMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->viewOriginMap:Lcom/google/common/collect/BiMap;

    .line 770
    :cond_0
    nop

    .line 771
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->newBuilder(ILandroid/view/View;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->viewOriginMap:Lcom/google/common/collect/BiMap;

    .line 772
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->setViewOriginMap(Ljava/util/Map;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;

    move-result-object v2

    .line 773
    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid$BuilderAndroid;->build()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    move-result-object v2

    .line 774
    .local v2, "activeWindow":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    new-array v1, v1, [Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    aput-object v2, v1, v0

    .line 775
    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 776
    .local v0, "windowHierarchyElements":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;>;"
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 777
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;->newBuilder(Landroid/content/Context;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid$Builder;->build()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;

    move-result-object v9

    .line 778
    .local v9, "deviceState":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;
    new-instance v7, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$ViewElementClassNamesAndroid;

    invoke-direct {v7, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$ViewElementClassNamesAndroid;-><init>(Ljava/util/List;)V

    .line 781
    .local v7, "viewElementClassNames":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$ViewElementClassNamesAndroid;
    new-instance v10, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;

    const/4 v8, 0x0

    move-object v3, v10

    move-object v4, v9

    move-object v5, v0

    move-object v6, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$ViewElementClassNamesAndroid;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$1;)V

    .line 784
    .local v3, "hierarchy":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;
    invoke-static {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->access$600(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;)V

    .line 787
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->access$700()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 788
    iget-object v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->viewOriginMap:Lcom/google/common/collect/BiMap;

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/collect/BiMap;

    invoke-static {v3, v1, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->access$800(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;Landroid/content/Context;Lcom/google/common/collect/BiMap;)V

    .line 790
    :cond_1
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->access$900()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 791
    iget-object v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->viewOriginMap:Lcom/google/common/collect/BiMap;

    .line 792
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/collect/BiMap;

    .line 791
    invoke-static {v3, v1, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->access$1000(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;Landroid/content/Context;Lcom/google/common/collect/BiMap;)V

    .line 794
    :cond_2
    return-object v3
.end method

.method private buildHierarchyFromWindowList(Ljava/util/List;Landroid/content/Context;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;
    .locals 10
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "extraDataExtractor"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;",
            ")",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;"
        }
    .end annotation

    .line 842
    .local p1, "fromWindowList":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->nodeInfoOriginMap:Lcom/google/common/collect/BiMap;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 845
    iput-boolean v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->disposeInstances:Z

    .line 846
    invoke-static {}, Lcom/google/common/collect/HashBiMap;->create()Lcom/google/common/collect/HashBiMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->nodeInfoOriginMap:Lcom/google/common/collect/BiMap;

    .line 849
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 850
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 851
    .local v0, "windowHierarchyElements":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 852
    .local v3, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getParent()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v4

    if-nez v4, :cond_1

    .line 860
    iget-object v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->nodeInfoOriginMap:Lcom/google/common/collect/BiMap;

    .line 864
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/collect/BiMap;

    .line 860
    const/4 v5, 0x0

    invoke-static {v3, v0, v5, v4, p3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->access$1500(Landroid/view/accessibility/AccessibilityWindowInfo;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;Lcom/google/common/collect/BiMap;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    .line 867
    .end local v3    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_1
    goto :goto_0

    .line 870
    :cond_2
    const/4 v2, 0x0

    .line 871
    .local v2, "activeWindow":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    .line 872
    .local v4, "window":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->isActive()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 873
    if-nez v2, :cond_3

    move v5, v1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    const-string v6, "More than one active window detected."

    invoke-static {v5, v6}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 874
    move-object v2, v4

    .line 876
    .end local v4    # "window":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    :cond_4
    goto :goto_1

    .line 877
    :cond_5
    const-string v1, "No active windows detected."

    invoke-static {v2, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    invoke-static {p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;->newBuilder(Landroid/content/Context;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid$Builder;->build()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;

    move-result-object v1

    .line 879
    .local v1, "deviceState":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;
    new-instance v7, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$ViewElementClassNamesAndroid;

    invoke-direct {v7, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$ViewElementClassNamesAndroid;-><init>(Ljava/util/List;)V

    .line 882
    .local v7, "viewElementClassNames":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$ViewElementClassNamesAndroid;
    new-instance v9, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;

    const/4 v8, 0x0

    move-object v3, v9

    move-object v4, v1

    move-object v5, v0

    move-object v6, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceStateAndroid;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$ViewElementClassNamesAndroid;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$1;)V

    .line 885
    .local v3, "hierarchy":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;
    invoke-static {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->access$600(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;)V

    .line 888
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->access$700()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 889
    iget-object v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->nodeInfoOriginMap:Lcom/google/common/collect/BiMap;

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/collect/BiMap;

    invoke-static {v3, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->access$1100(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;Lcom/google/common/collect/BiMap;)V

    .line 891
    :cond_6
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->access$900()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 892
    iget-object v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->nodeInfoOriginMap:Lcom/google/common/collect/BiMap;

    .line 893
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/collect/BiMap;

    .line 892
    invoke-static {v3, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->access$1200(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;Lcom/google/common/collect/BiMap;)V

    .line 895
    :cond_7
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->access$1300()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 896
    iget-object v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->nodeInfoOriginMap:Lcom/google/common/collect/BiMap;

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/collect/BiMap;

    invoke-static {v3, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->access$1400(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;Lcom/google/common/collect/BiMap;)V

    .line 898
    :cond_8
    return-object v3
.end method

.method private disposeOfMaps()V
    .locals 2

    .line 926
    iget-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->disposeInstances:Z

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->nodeInfoOriginMap:Lcom/google/common/collect/BiMap;

    if-eqz v0, :cond_0

    .line 928
    invoke-interface {v0}, Lcom/google/common/collect/BiMap;->values()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 929
    .local v1, "nodeInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 930
    .end local v1    # "nodeInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_0

    .line 933
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->viewOriginMap:Lcom/google/common/collect/BiMap;

    .line 934
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->nodeInfoOriginMap:Lcom/google/common/collect/BiMap;

    .line 935
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;
    .locals 1

    .line 690
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->build()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;
    .locals 3

    .line 737
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->fromRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 738
    invoke-direct {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->buildHierarchyFromView(Landroid/view/View;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;

    move-result-object v0

    .local v0, "result":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;
    goto :goto_0

    .line 739
    .end local v0    # "result":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->fromRootNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->context:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 740
    nop

    .line 742
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->getAccessibilityNodeInfoExtraDataExtractor()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;

    move-result-object v2

    .line 741
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->buildHierarchyFromNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/content/Context;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;

    move-result-object v0

    .restart local v0    # "result":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;
    goto :goto_0

    .line 743
    .end local v0    # "result":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->fromWindowList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->context:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 744
    nop

    .line 746
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->getAccessibilityNodeInfoExtraDataExtractor()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;

    move-result-object v2

    .line 745
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->buildHierarchyFromWindowList(Ljava/util/List;Landroid/content/Context;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;

    move-result-object v0

    .restart local v0    # "result":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;
    goto :goto_0

    .line 747
    .end local v0    # "result":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->proto:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto;

    if-eqz v0, :cond_3

    .line 748
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->proto:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto;

    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->buildHierarchyFromProto(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;

    move-result-object v0

    .line 752
    .restart local v0    # "result":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;
    :goto_0
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->disposeOfMaps()V

    .line 753
    return-object v0

    .line 750
    .end local v0    # "result":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nothing from which to build"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getAccessibilityNodeInfoExtraDataExtractor()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;
    .locals 1

    .line 759
    iget-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->obtainCharacterLocations:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;

    invoke-direct {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public setNodeInfoOriginMap(Lcom/google/common/collect/BiMap;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BiMap<",
            "Ljava/lang/Long;",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;"
        }
    .end annotation

    .line 719
    .local p1, "originMap":Lcom/google/common/collect/BiMap;, "Lcom/google/common/collect/BiMap<Ljava/lang/Long;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->nodeInfoOriginMap:Lcom/google/common/collect/BiMap;

    .line 720
    return-object p0
.end method

.method public setObtainCharacterLocations(Z)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;
    .locals 0
    .param p1, "obtainCharacterLocations"    # Z

    .line 707
    iput-boolean p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->obtainCharacterLocations:Z

    .line 708
    return-object p0
.end method

.method public setViewOriginMap(Lcom/google/common/collect/BiMap;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BiMap<",
            "Ljava/lang/Long;",
            "Landroid/view/View;",
            ">;)",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;"
        }
    .end annotation

    .line 730
    .local p1, "originMap":Lcom/google/common/collect/BiMap;, "Lcom/google/common/collect/BiMap<Ljava/lang/Long;Landroid/view/View;>;"
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->viewOriginMap:Lcom/google/common/collect/BiMap;

    .line 731
    return-object p0
.end method
