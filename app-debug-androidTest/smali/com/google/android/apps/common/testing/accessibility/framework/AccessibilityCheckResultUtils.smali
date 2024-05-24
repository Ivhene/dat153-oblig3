.class public final Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultUtils;
.super Ljava/lang/Object;
.source "AccessibilityCheckResultUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultUtils$TypeSafeMemberMatcher;
    }
.end annotation


# static fields
.field private static final VIEW_CHECK_ALIASES:Lcom/google/common/collect/ImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableBiMap<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    invoke-static {}, Lcom/google/common/collect/ImmutableBiMap;->builder()Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    const-class v1, Lcom/google/android/apps/common/testing/accessibility/framework/ClickableSpanViewCheck;

    const-class v2, Lcom/google/android/apps/common/testing/accessibility/framework/checks/ClickableSpanCheck;

    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    const-class v1, Lcom/google/android/apps/common/testing/accessibility/framework/DuplicateClickableBoundsViewCheck;

    const-class v2, Lcom/google/android/apps/common/testing/accessibility/framework/checks/DuplicateClickableBoundsCheck;

    .line 51
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    const-class v1, Lcom/google/android/apps/common/testing/accessibility/framework/DuplicateSpeakableTextViewHierarchyCheck;

    const-class v2, Lcom/google/android/apps/common/testing/accessibility/framework/checks/DuplicateSpeakableTextCheck;

    .line 52
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    const-class v1, Lcom/google/android/apps/common/testing/accessibility/framework/EditableContentDescViewCheck;

    const-class v2, Lcom/google/android/apps/common/testing/accessibility/framework/checks/EditableContentDescCheck;

    .line 53
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    const-class v1, Lcom/google/android/apps/common/testing/accessibility/framework/RedundantContentDescViewCheck;

    const-class v2, Lcom/google/android/apps/common/testing/accessibility/framework/checks/RedundantDescriptionCheck;

    .line 54
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    const-class v1, Lcom/google/android/apps/common/testing/accessibility/framework/SpeakableTextPresentViewCheck;

    const-class v2, Lcom/google/android/apps/common/testing/accessibility/framework/checks/SpeakableTextPresentCheck;

    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    const-class v1, Lcom/google/android/apps/common/testing/accessibility/framework/TextContrastViewCheck;

    const-class v2, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck;

    .line 56
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    const-class v1, Lcom/google/android/apps/common/testing/accessibility/framework/TouchTargetSizeViewCheck;

    const-class v2, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TouchTargetSizeCheck;

    .line 57
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableBiMap$Builder;->build()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultUtils;->VIEW_CHECK_ALIASES:Lcom/google/common/collect/ImmutableBiMap;

    .line 48
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method public static getResultsForCheck(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck;",
            ">;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 77
    .local p0, "results":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "checkClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck;>;"
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultUtils;->VIEW_CHECK_ALIASES:Lcom/google/common/collect/ImmutableBiMap;

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils;->getResultsForCheck(Ljava/lang/Iterable;Ljava/lang/Class;Lcom/google/common/collect/ImmutableBiMap;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getResultsForType(Ljava/lang/Iterable;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;)Ljava/util/List;
    .locals 1
    .param p1, "type"    # Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 92
    .local p0, "results":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-static {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils;->getResultsForType(Ljava/lang/Iterable;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getResultsForTypes(Ljava/lang/Iterable;Ljava/util/Set;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/Set<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;",
            ">;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 107
    .local p0, "results":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "types":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;>;"
    invoke-static {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils;->getResultsForTypes(Ljava/lang/Iterable;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getResultsForView(Ljava/lang/Iterable;Landroid/view/View;)Ljava/util/List;
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;",
            ">;"
        }
    .end annotation

    .line 120
    .local p0, "results":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v0, "resultsForView":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;

    .line 122
    .local v2, "result":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;
    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;->getView()Landroid/view/View;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 123
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    .end local v2    # "result":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;
    :cond_0
    goto :goto_0

    .line 126
    :cond_1
    return-object v0
.end method

.method public static matchesCheck(Ljava/lang/Class;)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck;",
            ">;)",
            "Lorg/hamcrest/Matcher<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;",
            ">;"
        }
    .end annotation

    .line 149
    .local p0, "checkClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck;>;"
    invoke-static {p0}, Lorg/hamcrest/Matchers;->equalTo(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultUtils;->matchesChecks(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static matchesCheckNames(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/hamcrest/Matcher<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;",
            ">;"
        }
    .end annotation

    .line 177
    .local p0, "classNameMatcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-Ljava/lang/String;>;"
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultUtils;->VIEW_CHECK_ALIASES:Lcom/google/common/collect/ImmutableBiMap;

    invoke-static {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils;->matchesCheckNames(Lorg/hamcrest/Matcher;Lcom/google/common/collect/ImmutableBiMap;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static matchesChecks(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "*>;)",
            "Lorg/hamcrest/Matcher<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;",
            ">;"
        }
    .end annotation

    .line 165
    .local p0, "classMatcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<*>;"
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultUtils;->VIEW_CHECK_ALIASES:Lcom/google/common/collect/ImmutableBiMap;

    invoke-static {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils;->matchesChecks(Lorg/hamcrest/Matcher;Lcom/google/common/collect/ImmutableBiMap;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static matchesTypes(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "-",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;",
            ">;)",
            "Lorg/hamcrest/Matcher<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;",
            ">;"
        }
    .end annotation

    .line 138
    .local p0, "typeMatcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;>;"
    invoke-static {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils;->matchesTypes(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static matchesViews(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "-",
            "Landroid/view/View;",
            ">;)",
            "Lorg/hamcrest/Matcher<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;",
            ">;"
        }
    .end annotation

    .line 190
    .local p0, "viewMatcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-Landroid/view/View;>;"
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultUtils$1;

    const-string v1, "View"

    invoke-direct {v0, v1, p0, p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultUtils$1;-><init>(Ljava/lang/String;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)V

    return-object v0
.end method
