.class Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils$2;
.super Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils$TypeSafeMemberMatcher;
.source "AccessibilityCheckResultBaseUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils;->matchesChecks(Lorg/hamcrest/Matcher;Lcom/google/common/collect/ImmutableBiMap;)Lorg/hamcrest/Matcher;
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
.field final synthetic val$aliases:Lcom/google/common/collect/ImmutableBiMap;

.field final synthetic val$classMatcher:Lorg/hamcrest/Matcher;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lcom/google/common/collect/ImmutableBiMap;)V
    .locals 0
    .param p1, "member"    # Ljava/lang/String;

    .line 168
    .local p2, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<*>;"
    iput-object p3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils$2;->val$classMatcher:Lorg/hamcrest/Matcher;

    iput-object p4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils$2;->val$aliases:Lcom/google/common/collect/ImmutableBiMap;

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils$TypeSafeMemberMatcher;-><init>(Ljava/lang/String;Lorg/hamcrest/Matcher;)V

    return-void
.end method


# virtual methods
.method public matchesSafely(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;)Z
    .locals 4
    .param p1, "result"    # Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;

    .line 171
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;->getSourceCheckClass()Ljava/lang/Class;

    move-result-object v0

    .line 172
    .local v0, "checkClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck;>;"
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils$2;->val$classMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {v1, v0}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 173
    return v2

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils$2;->val$aliases:Lcom/google/common/collect/ImmutableBiMap;

    invoke-static {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils;->access$000(Ljava/lang/Object;Lcom/google/common/collect/ImmutableBiMap;)Ljava/lang/Object;

    move-result-object v1

    .line 176
    .local v1, "alias":Ljava/lang/Object;
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils$2;->val$classMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {v3, v1}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public bridge synthetic matchesSafely(Ljava/lang/Object;)Z
    .locals 0

    .line 168
    check-cast p1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils$2;->matchesSafely(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;)Z

    move-result p1

    return p1
.end method
