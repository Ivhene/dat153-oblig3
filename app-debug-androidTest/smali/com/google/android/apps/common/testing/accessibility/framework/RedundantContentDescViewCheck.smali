.class public Lcom/google/android/apps/common/testing/accessibility/framework/RedundantContentDescViewCheck;
.super Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewHierarchyCheck;
.source "RedundantContentDescViewCheck.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DELEGATION_CHECK:Lcom/google/android/apps/common/testing/accessibility/framework/checks/RedundantDescriptionCheck;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/checks/RedundantDescriptionCheck;

    invoke-direct {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/RedundantDescriptionCheck;-><init>()V

    sput-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/RedundantContentDescViewCheck;->DELEGATION_CHECK:Lcom/google/android/apps/common/testing/accessibility/framework/checks/RedundantDescriptionCheck;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewHierarchyCheck;-><init>()V

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

    .line 38
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/RedundantContentDescViewCheck;->DELEGATION_CHECK:Lcom/google/android/apps/common/testing/accessibility/framework/checks/RedundantDescriptionCheck;

    invoke-super {p0, p1, p0, v0, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewHierarchyCheck;->runDelegationCheckOnView(Landroid/view/View;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
