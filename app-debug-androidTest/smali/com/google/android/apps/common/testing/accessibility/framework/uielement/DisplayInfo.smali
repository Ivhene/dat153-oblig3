.class public Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo;
.super Ljava/lang/Object;
.source "DisplayInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;
    }
.end annotation


# instance fields
.field private final metricsWithoutDecoration:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;

.field private final realMetrics:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo;->metricsWithoutDecoration:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;

    .line 40
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo;->realMetrics:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;

    .line 41
    return-void
.end method

.method constructor <init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;)V
    .locals 2
    .param p1, "fromProto"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->getMetricsWithoutDecoration()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;)V

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo;->metricsWithoutDecoration:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;

    .line 35
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->hasRealMetrics()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->getRealMetrics()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo;->realMetrics:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;

    .line 36
    return-void
.end method


# virtual methods
.method public getMetricsWithoutDecoration()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo;->metricsWithoutDecoration:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo;->metricsWithoutDecoration:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;

    return-object v0
.end method

.method public getRealMetrics()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo;->realMetrics:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;

    return-object v0
.end method

.method toProto()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo;->metricsWithoutDecoration:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->newBuilder()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto$Builder;

    move-result-object v0

    .line 67
    .local v0, "builder":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto$Builder;
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo;->metricsWithoutDecoration:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;

    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;->toProto()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto$Builder;->setMetricsWithoutDecoration(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto$Builder;

    .line 68
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo;->realMetrics:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;

    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;->toProto()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto$Builder;->setRealMetrics(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto$Builder;

    .line 71
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    return-object v1
.end method
