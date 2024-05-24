.class public Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResultWithImage;
.super Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;
.source "AccessibilityHierarchyCheckResultWithImage.java"


# instance fields
.field private final viewImage:Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;)V
    .locals 0
    .param p2, "type"    # Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;
    .param p3, "element"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .param p4, "resultId"    # I
    .param p5, "metadata"    # Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .param p6, "viewImage"    # Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;",
            ">;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;",
            "I",
            "Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;",
            ")V"
        }
    .end annotation

    .line 36
    .local p1, "checkClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;>;"
    invoke-direct/range {p0 .. p5}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    .line 37
    iput-object p6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResultWithImage;->viewImage:Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;

    .line 38
    return-void
.end method


# virtual methods
.method public bridge synthetic getSuppressedResultCopy()Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResultWithImage;->getSuppressedResultCopy()Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResultWithImage;

    move-result-object v0

    return-object v0
.end method

.method public getSuppressedResultCopy()Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResultWithImage;
    .locals 8

    .line 42
    new-instance v7, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResultWithImage;

    .line 43
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResultWithImage;->getSourceCheckClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->SUPPRESSED:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    .line 45
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResultWithImage;->getElement()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 46
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResultWithImage;->getResultId()I

    move-result v4

    .line 47
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResultWithImage;->getMetadata()Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    iget-object v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResultWithImage;->viewImage:Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResultWithImage;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;)V

    .line 42
    return-object v7
.end method

.method public getViewImage()Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResultWithImage;->viewImage:Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;

    return-object v0
.end method
