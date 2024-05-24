.class public Lcom/google/android/apps/common/testing/accessibility/framework/AnnouncementEventCheck;
.super Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityEventCheck;
.source "AnnouncementEventCheck.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityEventCheck;-><init>()V

    return-void
.end method


# virtual methods
.method public runCheckOnEvent(Landroid/view/accessibility/AccessibilityEvent;)Ljava/util/List;
    .locals 4
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

    .line 41
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "result_message_disruptive_announcement"

    invoke-static {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityEventCheckResult;

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->WARNING:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    invoke-direct {v1, v2, v3, v0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityEventCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Ljava/lang/CharSequence;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 42
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1
.end method

.method public shouldHandleEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 34
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
