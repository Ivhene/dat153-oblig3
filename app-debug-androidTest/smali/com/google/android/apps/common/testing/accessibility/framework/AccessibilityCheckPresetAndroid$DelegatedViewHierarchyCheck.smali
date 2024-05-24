.class Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPresetAndroid$DelegatedViewHierarchyCheck;
.super Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewHierarchyCheck;
.source "AccessibilityCheckPresetAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPresetAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DelegatedViewHierarchyCheck"
.end annotation


# instance fields
.field final toCheck:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;


# direct methods
.method constructor <init>(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;)V
    .locals 0
    .param p1, "toCheck"    # Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;

    .line 161
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewHierarchyCheck;-><init>()V

    .line 162
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPresetAndroid$DelegatedViewHierarchyCheck;->toCheck:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;

    .line 163
    return-void
.end method


# virtual methods
.method public runCheckOnViewHierarchy(Landroid/view/View;Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;)Ljava/util/List;
    .locals 1
    .param p1, "root"    # Landroid/view/View;
    .param p2, "parameters"    # Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPresetAndroid$DelegatedViewHierarchyCheck;->toCheck:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;

    invoke-super {p0, p1, v0, v0, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewHierarchyCheck;->runDelegationCheckOnView(Landroid/view/View;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
