.class public Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;
.super Ljava/lang/Object;
.source "Parameters.java"


# instance fields
.field private customImageContrastRatio:Ljava/lang/Double;

.field private customTextContrastRatio:Ljava/lang/Double;

.field private customTouchTargetSize:Ljava/lang/Integer;

.field private enableEnhancedContrastEvaluation:Ljava/lang/Boolean;

.field private saveViewImage:Ljava/lang/Boolean;

.field private screenCapture:Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public getCustomContrastRatio()Ljava/lang/Double;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 74
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCustomImageContrastRatio()Ljava/lang/Double;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;->customImageContrastRatio:Ljava/lang/Double;

    return-object v0
.end method

.method public getCustomTextContrastRatio()Ljava/lang/Double;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;->customTextContrastRatio:Ljava/lang/Double;

    return-object v0
.end method

.method public getCustomTouchTargetSize()Ljava/lang/Integer;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;->customTouchTargetSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getEnableEnhancedContrastEvaluation()Ljava/lang/Boolean;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;->enableEnhancedContrastEvaluation:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSaveViewImages()Ljava/lang/Boolean;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;->saveViewImage:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getScreenCapture()Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;->screenCapture:Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;

    return-object v0
.end method

.method public putCustomContrastRatio(D)V
    .locals 0
    .param p1, "contrastRatio"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;->putCustomTextContrastRatio(D)V

    .line 113
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;->putCustomImageContrastRatio(D)V

    .line 114
    return-void
.end method

.method public putCustomImageContrastRatio(D)V
    .locals 1
    .param p1, "imageContrastRatio"    # D

    .line 135
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;->customImageContrastRatio:Ljava/lang/Double;

    .line 136
    return-void
.end method

.method public putCustomTextContrastRatio(D)V
    .locals 1
    .param p1, "textContrastRatio"    # D

    .line 124
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;->customTextContrastRatio:Ljava/lang/Double;

    .line 125
    return-void
.end method

.method public putCustomTouchTargetSize(I)V
    .locals 1
    .param p1, "touchTargetSize"    # I

    .line 157
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;->customTouchTargetSize:Ljava/lang/Integer;

    .line 158
    return-void
.end method

.method public putEnableEnhancedContrastEvaluation(Z)V
    .locals 1
    .param p1, "enableEnhancedContrastEvaluation"    # Z

    .line 183
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;->enableEnhancedContrastEvaluation:Ljava/lang/Boolean;

    .line 184
    return-void
.end method

.method public putScreenCapture(Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;)V
    .locals 1
    .param p1, "image"    # Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;

    .line 46
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;->screenCapture:Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;

    .line 47
    return-void
.end method

.method public setSaveViewImages(Z)V
    .locals 1
    .param p1, "save"    # Z

    .line 56
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;->saveViewImage:Ljava/lang/Boolean;

    .line 57
    return-void
.end method
