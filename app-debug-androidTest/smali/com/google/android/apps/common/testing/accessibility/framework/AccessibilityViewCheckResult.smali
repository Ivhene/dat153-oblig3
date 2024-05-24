.class public Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;
.super Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;
.source "AccessibilityViewCheckResult.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final hierarchyCheckResult:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

.field private final view:Landroid/view/View;

.field private final viewImage:Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Ljava/lang/CharSequence;Landroid/view/View;)V
    .locals 6
    .param p2, "type"    # Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;
    .param p3, "message"    # Ljava/lang/CharSequence;
    .param p4, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck;",
            ">;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;",
            "Ljava/lang/CharSequence;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 69
    .local p1, "checkClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Ljava/lang/CharSequence;Landroid/view/View;Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Ljava/lang/CharSequence;Landroid/view/View;Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;)V
    .locals 1
    .param p2, "type"    # Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;
    .param p3, "message"    # Ljava/lang/CharSequence;
    .param p4, "view"    # Landroid/view/View;
    .param p5, "viewImage"    # Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck;",
            ">;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;",
            "Ljava/lang/CharSequence;",
            "Landroid/view/View;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;",
            ")V"
        }
    .end annotation

    .line 57
    .local p1, "checkClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Ljava/lang/CharSequence;)V

    .line 58
    iput-object p4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;->view:Landroid/view/View;

    .line 59
    iput-object p5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;->viewImage:Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;->hierarchyCheckResult:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    .line 61
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;Landroid/view/View;)V
    .locals 2
    .param p2, "hierarchyCheckResult"    # Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;
    .param p3, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck;",
            ">;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 81
    .local p1, "checkClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck;>;"
    invoke-virtual {p2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getType()Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Ljava/lang/CharSequence;)V

    .line 82
    iput-object p3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;->view:Landroid/view/View;

    .line 83
    nop

    .line 84
    instance-of v0, p2, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResultWithImage;

    if-eqz v0, :cond_0

    .line 85
    move-object v0, p2

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResultWithImage;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResultWithImage;->getViewImage()Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;

    move-result-object v1

    goto :goto_0

    .line 86
    :cond_0
    nop

    :goto_0
    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;->viewImage:Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;

    .line 87
    iput-object p2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;->hierarchyCheckResult:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    .line 88
    return-void
.end method


# virtual methods
.method public getAccessibilityHierarchyCheck()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;->hierarchyCheckResult:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    .line 127
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getSourceCheckClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 126
    return-object v0
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;->hierarchyCheckResult:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;->getMessage()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getMessage()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getMessage(Ljava/util/Locale;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 161
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;->hierarchyCheckResult:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    if-nez v0, :cond_0

    .line 162
    invoke-super {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;->getMessage(Ljava/util/Locale;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getMessage(Ljava/util/Locale;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 161
    :goto_0
    return-object v0
.end method

.method public getMetadata()Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;->hierarchyCheckResult:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getMetadata()Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getResultId()I
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;->hierarchyCheckResult:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getResultId()I

    move-result v0

    return v0
.end method

.method public getSuppressedResultCopy()Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;
    .locals 5

    .line 94
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;->hierarchyCheckResult:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;

    .line 96
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;->getSourceCheckClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->SUPPRESSED:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 98
    invoke-virtual {p0, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;->getMessage(Ljava/util/Locale;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 99
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;->getView()Landroid/view/View;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Ljava/lang/CharSequence;Landroid/view/View;)V

    .line 95
    return-object v0

    .line 101
    :cond_0
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;

    .line 102
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;->getSourceCheckClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;->hierarchyCheckResult:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getSuppressedResultCopy()Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;->getView()Landroid/view/View;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;Landroid/view/View;)V

    .line 101
    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;->view:Landroid/view/View;

    return-object v0
.end method

.method public getViewImage()Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;->viewImage:Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;

    return-object v0
.end method
