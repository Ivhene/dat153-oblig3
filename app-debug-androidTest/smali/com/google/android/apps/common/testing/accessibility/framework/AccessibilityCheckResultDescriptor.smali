.class public Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultDescriptor;
.super Ljava/lang/Object;
.source "AccessibilityCheckResultDescriptor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeElement(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Ljava/lang/String;
    .locals 3
    .param p1, "element"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 92
    if-nez p1, :cond_0

    .line 93
    const-string v0, "<null>"

    return-object v0

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .local v0, "message":Ljava/lang/StringBuilder;
    const-string v1, "View "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getResourceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 98
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getResourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getBoundsInScreen()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    move-result-object v1

    .line 101
    .local v1, "bounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 102
    const-string v2, "with bounds: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 105
    :cond_2
    const-string v2, "with no valid resource name or bounds"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .end local v1    # "bounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public describeResult(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;)Ljava/lang/String;
    .locals 3
    .param p1, "result"    # Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .local v0, "message":Ljava/lang/StringBuilder;
    instance-of v1, p1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;

    const-string v2, ": "

    if-eqz v1, :cond_0

    .line 42
    move-object v1, p1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;

    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultDescriptor;->describeView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 44
    :cond_0
    instance-of v1, p1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    if-eqz v1, :cond_1

    .line 45
    move-object v1, p1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getElement()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultDescriptor;->describeElement(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    :cond_1
    :goto_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;->getMessage(Ljava/util/Locale;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;->getSourceCheckClass()Ljava/lang/Class;

    move-result-object v1

    .line 50
    .local v1, "checkClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck;>;"
    if-eqz v1, :cond_2

    .line 51
    const-string v2, " Reported by "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;->getSourceCheckClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public describeView(Landroid/view/View;)Ljava/lang/String;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .local v0, "message":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewAccessibilityUtils;->isViewIdGenerated(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    const-string v1, "View "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "with no valid resource name"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 78
    :cond_0
    const-string v1, "View with no valid resource name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
