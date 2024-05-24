.class public Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;
.super Ljava/lang/Object;
.source "DisplayInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Metrics"
.end annotation


# instance fields
.field protected final density:F

.field protected final densityDpi:I

.field protected final heightPixels:I

.field protected final scaledDensity:F

.field protected final widthPixels:I

.field protected final xDpi:F

.field protected final yDpi:F


# direct methods
.method constructor <init>(FFFFIII)V
    .locals 0
    .param p1, "density"    # F
    .param p2, "scaledDensity"    # F
    .param p3, "xDpi"    # F
    .param p4, "yDpi"    # F
    .param p5, "densityDpi"    # I
    .param p6, "heightPixels"    # I
    .param p7, "widthPixels"    # I

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;->density:F

    .line 94
    iput p2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;->scaledDensity:F

    .line 95
    iput p3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;->xDpi:F

    .line 96
    iput p4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;->yDpi:F

    .line 97
    iput p5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;->densityDpi:I

    .line 98
    iput p6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;->heightPixels:I

    .line 99
    iput p7, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;->widthPixels:I

    .line 100
    return-void
.end method

.method constructor <init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;)V
    .locals 1
    .param p1, "fromProto"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;->getDensity()F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;->density:F

    .line 104
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;->getScaledDensity()F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;->scaledDensity:F

    .line 105
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;->getXDpi()F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;->xDpi:F

    .line 106
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;->getYDpi()F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;->yDpi:F

    .line 107
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;->getDensityDpi()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;->densityDpi:I

    .line 108
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;->getHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;->heightPixels:I

    .line 109
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;->getWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;->widthPixels:I

    .line 110
    return-void
.end method


# virtual methods
.method public getDensity()F
    .locals 1

    .line 114
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;->density:F

    return v0
.end method

.method public getDensityDpi()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;->densityDpi:I

    return v0
.end method

.method public getHeightPixels()I
    .locals 1

    .line 139
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;->heightPixels:I

    return v0
.end method

.method public getScaledDensity()F
    .locals 1

    .line 119
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;->scaledDensity:F

    return v0
.end method

.method public getWidthPixels()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;->widthPixels:I

    return v0
.end method

.method public getxDpi()F
    .locals 1

    .line 124
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;->xDpi:F

    return v0
.end method

.method public getyDpi()F
    .locals 1

    .line 129
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;->yDpi:F

    return v0
.end method

.method toProto()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;
    .locals 2

    .line 148
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;->newBuilder()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;

    move-result-object v0

    .line 149
    .local v0, "builder":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;->density:F

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;->setDensity(F)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;

    .line 150
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;->scaledDensity:F

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;->setScaledDensity(F)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;

    .line 151
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;->xDpi:F

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;->setXDpi(F)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;

    .line 152
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;->yDpi:F

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;->setYDpi(F)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;

    .line 153
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;->densityDpi:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;->setDensityDpi(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;

    .line 154
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;->heightPixels:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;->setHeightPixels(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;

    .line 155
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;->widthPixels:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;->setWidthPixels(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;

    .line 156
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    return-object v1
.end method
