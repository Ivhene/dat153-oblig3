.class Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultUtils$1;
.super Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultUtils$TypeSafeMemberMatcher;
.source "AccessibilityCheckResultUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultUtils;->matchesViews(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultUtils$TypeSafeMemberMatcher<",
        "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$viewMatcher:Lorg/hamcrest/Matcher;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)V
    .locals 0
    .param p1, "member"    # Ljava/lang/String;

    .line 190
    .local p2, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<*>;"
    iput-object p3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultUtils$1;->val$viewMatcher:Lorg/hamcrest/Matcher;

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultUtils$TypeSafeMemberMatcher;-><init>(Ljava/lang/String;Lorg/hamcrest/Matcher;)V

    return-void
.end method


# virtual methods
.method public matchesSafely(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;)Z
    .locals 2
    .param p1, "result"    # Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;

    .line 193
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;->getView()Landroid/view/View;

    move-result-object v0

    .line 194
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultUtils$1;->val$viewMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {v1, v0}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic matchesSafely(Ljava/lang/Object;)Z
    .locals 0

    .line 190
    check-cast p1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultUtils$1;->matchesSafely(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;)Z

    move-result p1

    return p1
.end method
