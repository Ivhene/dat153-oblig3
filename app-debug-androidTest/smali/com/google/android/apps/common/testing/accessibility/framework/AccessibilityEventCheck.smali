.class public abstract Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityEventCheck;
.super Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck;
.source "AccessibilityEventCheck.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatchEvent(Landroid/view/accessibility/AccessibilityEvent;)Ljava/util/List;
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityEventCheckResult;",
            ">;"
        }
    .end annotation

    .line 84
    invoke-virtual {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityEventCheck;->shouldHandleEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityEventCheck;->runCheckOnEvent(Landroid/view/accessibility/AccessibilityEvent;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 87
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onExecutionEnded()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityEventCheckResult;",
            ">;"
        }
    .end annotation

    .line 114
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onExecutionStarted()V
    .locals 0

    .line 73
    return-void
.end method

.method protected abstract runCheckOnEvent(Landroid/view/accessibility/AccessibilityEvent;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityEventCheckResult;",
            ">;"
        }
    .end annotation
.end method

.method protected shouldHandleEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 64
    const/4 v0, 0x1

    return v0
.end method
