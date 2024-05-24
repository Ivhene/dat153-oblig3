.class public Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid;
.super Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo;
.source "DisplayInfoAndroid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid$MetricsAndroid;
    }
.end annotation


# instance fields
.field private final metricsWithoutDecoration:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid$MetricsAndroid;

.field private final realMetrics:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid$MetricsAndroid;


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "fromParcel"    # Landroid/os/Parcel;

    .line 55
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo;-><init>()V

    .line 56
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid$MetricsAndroid;

    invoke-direct {v0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid$MetricsAndroid;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid;->metricsWithoutDecoration:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid$MetricsAndroid;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid$MetricsAndroid;

    invoke-direct {v0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid$MetricsAndroid;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid;->realMetrics:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid$MetricsAndroid;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/view/Display;)V
    .locals 2
    .param p1, "display"    # Landroid/view/Display;

    .line 41
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo;-><init>()V

    .line 42
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 43
    .local v0, "tempMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 44
    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid$MetricsAndroid;

    invoke-direct {v1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid$MetricsAndroid;-><init>(Landroid/util/DisplayMetrics;)V

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid;->metricsWithoutDecoration:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid$MetricsAndroid;

    .line 45
    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 46
    nop

    .line 47
    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 48
    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid$MetricsAndroid;

    invoke-direct {v1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid$MetricsAndroid;-><init>(Landroid/util/DisplayMetrics;)V

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid;->realMetrics:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid$MetricsAndroid;

    .line 52
    return-void
.end method

.method constructor <init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;)V
    .locals 2
    .param p1, "fromProto"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    .line 61
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo;-><init>()V

    .line 62
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid$MetricsAndroid;

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->getMetricsWithoutDecoration()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid$MetricsAndroid;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;)V

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid;->metricsWithoutDecoration:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid$MetricsAndroid;

    .line 63
    nop

    .line 64
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->hasRealMetrics()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid$MetricsAndroid;

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->getRealMetrics()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid$MetricsAndroid;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid;->realMetrics:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid$MetricsAndroid;

    .line 65
    return-void
.end method


# virtual methods
.method public bridge synthetic getMetricsWithoutDecoration()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid;->getMetricsWithoutDecoration()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid$MetricsAndroid;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsWithoutDecoration()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid$MetricsAndroid;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid;->metricsWithoutDecoration:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid$MetricsAndroid;

    return-object v0
.end method

.method public bridge synthetic getRealMetrics()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid;->getRealMetrics()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid$MetricsAndroid;

    move-result-object v0

    return-object v0
.end method

.method public getRealMetrics()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid$MetricsAndroid;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid;->realMetrics:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid$MetricsAndroid;

    return-object v0
.end method

.method toProto()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;
    .locals 2

    .line 102
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->newBuilder()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto$Builder;

    move-result-object v0

    .line 103
    .local v0, "builder":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto$Builder;
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid;->metricsWithoutDecoration:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid$MetricsAndroid;

    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid$MetricsAndroid;->toProto()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto$Builder;->setMetricsWithoutDecoration(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto$Builder;

    .line 104
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid;->realMetrics:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid$MetricsAndroid;

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid$MetricsAndroid;->toProto()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto$Builder;->setRealMetrics(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto$Builder;

    .line 107
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    return-object v1
.end method

.method writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 91
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid;->metricsWithoutDecoration:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid$MetricsAndroid;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid$MetricsAndroid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 92
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid;->realMetrics:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid$MetricsAndroid;

    if-eqz v0, :cond_0

    .line 93
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid;->realMetrics:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid$MetricsAndroid;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid$MetricsAndroid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 96
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    :goto_0
    return-void
.end method
