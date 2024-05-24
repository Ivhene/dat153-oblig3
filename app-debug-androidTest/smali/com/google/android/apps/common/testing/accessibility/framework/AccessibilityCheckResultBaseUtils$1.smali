.class Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils$1;
.super Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils$TypeSafeMemberMatcher;
.source "AccessibilityCheckResultBaseUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils;->matchesTypes(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils$TypeSafeMemberMatcher<",
        "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$typeMatcher:Lorg/hamcrest/Matcher;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)V
    .locals 0
    .param p1, "member"    # Ljava/lang/String;

    .line 129
    .local p2, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<*>;"
    iput-object p3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils$1;->val$typeMatcher:Lorg/hamcrest/Matcher;

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils$TypeSafeMemberMatcher;-><init>(Ljava/lang/String;Lorg/hamcrest/Matcher;)V

    return-void
.end method


# virtual methods
.method public matchesSafely(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;)Z
    .locals 2
    .param p1, "result"    # Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;

    .line 132
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils$1;->val$typeMatcher:Lorg/hamcrest/Matcher;

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;->getType()Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic matchesSafely(Ljava/lang/Object;)Z
    .locals 0

    .line 129
    check-cast p1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils$1;->matchesSafely(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;)Z

    move-result p1

    return p1
.end method
