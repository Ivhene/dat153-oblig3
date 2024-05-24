.class public Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy$Builder;
.super Ljava/lang/Object;
.source "AccessibilityHierarchy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected proto:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildHierarchyFromProto(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;
    .locals 6
    .param p1, "proto"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto;

    .line 217
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceState;

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto;->getDeviceState()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceState;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;)V

    .line 218
    .local v0, "deviceState":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceState;
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto;->getActiveWindowId()I

    move-result v1

    .line 220
    .local v1, "activeWindowId":I
    new-instance v2, Ljava/util/ArrayList;

    .line 221
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto;->getWindowsCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 222
    .local v2, "windowHierarchyElements":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;>;"
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto;->getWindowsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;

    .line 223
    .local v4, "windowProto":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;
    invoke-static {v4}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->newBuilder(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement$Builder;->build()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    .end local v4    # "windowProto":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;
    goto :goto_0

    .line 225
    :cond_0
    nop

    .line 226
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 225
    const-string v4, "Hierarchies must contain at least one window."

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 227
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;

    .line 228
    .local v3, "activeWindow":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;
    new-instance v4, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy$ViewElementClassNames;

    .line 229
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto;->getViewElementClassNames()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewElementClassNamesProto;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy$ViewElementClassNames;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewElementClassNamesProto;)V

    .line 231
    .local v4, "viewElementClassNames":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy$ViewElementClassNames;
    new-instance v5, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;

    invoke-direct {v5, v0, v2, v3, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceState;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy$ViewElementClassNames;)V

    .line 234
    .local v5, "hierarchy":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;
    invoke-static {v5}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;->access$000(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;)V

    .line 235
    return-object v5
.end method


# virtual methods
.method public build()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy$Builder;->proto:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto;

    if-eqz v0, :cond_0

    .line 209
    invoke-direct {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy$Builder;->buildHierarchyFromProto(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;

    move-result-object v0

    .line 213
    .local v0, "result":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;
    return-object v0

    .line 211
    .end local v0    # "result":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nothing from which to build"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
