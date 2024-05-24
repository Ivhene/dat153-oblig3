.class public Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid$MetricsAndroid;
.super Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;
.source "DisplayInfoAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MetricsAndroid"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "fromParcel"    # Landroid/os/Parcel;

    .line 129
    nop

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 129
    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;-><init>(FFFFIII)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/util/DisplayMetrics;)V
    .locals 8
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .line 118
    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    iget v2, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget v3, p1, Landroid/util/DisplayMetrics;->xdpi:F

    iget v4, p1, Landroid/util/DisplayMetrics;->ydpi:F

    iget v5, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iget v6, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v7, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;-><init>(FFFFIII)V

    .line 126
    return-void
.end method

.method constructor <init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;)V
    .locals 0
    .param p1, "fromProto"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    .line 140
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;)V

    .line 141
    return-void
.end method


# virtual methods
.method writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 144
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid$MetricsAndroid;->density:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 145
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid$MetricsAndroid;->scaledDensity:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 146
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid$MetricsAndroid;->xDpi:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 147
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid$MetricsAndroid;->yDpi:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 148
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid$MetricsAndroid;->densityDpi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid$MetricsAndroid;->heightPixels:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfoAndroid$MetricsAndroid;->widthPixels:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    return-void
.end method
