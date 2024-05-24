.class public final Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils;
.super Ljava/lang/Object;
.source "AccessibilityCheckResultBaseUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils$TypeSafeMemberMatcher;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;Lcom/google/common/collect/ImmutableBiMap;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Lcom/google/common/collect/ImmutableBiMap;

    .line 37
    invoke-static {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils;->getAlias(Ljava/lang/Object;Lcom/google/common/collect/ImmutableBiMap;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getAlias(Ljava/lang/Object;Lcom/google/common/collect/ImmutableBiMap;)Ljava/lang/Object;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/common/collect/ImmutableBiMap<",
            "**>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 227
    .local p1, "aliases":Lcom/google/common/collect/ImmutableBiMap;, "Lcom/google/common/collect/ImmutableBiMap<**>;"
    if-nez p1, :cond_0

    .line 228
    const/4 v0, 0x0

    return-object v0

    .line 230
    :cond_0
    invoke-virtual {p1, p0}, Lcom/google/common/collect/ImmutableBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 231
    .local v0, "alias":Ljava/lang/Object;
    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableBiMap;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/common/collect/ImmutableBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
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

    .line 55
    .local p0, "results":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "checkClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils;->getResultsForCheck(Ljava/lang/Iterable;Ljava/lang/Class;Lcom/google/common/collect/ImmutableBiMap;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static getResultsForCheck(Ljava/lang/Iterable;Ljava/lang/Class;Lcom/google/common/collect/ImmutableBiMap;)Ljava/util/List;
    .locals 6
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
            ">;",
            "Lcom/google/common/collect/ImmutableBiMap<",
            "**>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 68
    .local p0, "results":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "checkClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck;>;"
    .local p2, "aliases":Lcom/google/common/collect/ImmutableBiMap;, "Lcom/google/common/collect/ImmutableBiMap<**>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v0, "resultsForCheck":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;

    .line 70
    .local v2, "result":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;, "TT;"
    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;->getSourceCheckClass()Ljava/lang/Class;

    move-result-object v3

    .line 71
    .local v3, "resultCheckClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck;>;"
    invoke-static {v3, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils;->getAlias(Ljava/lang/Object;Lcom/google/common/collect/ImmutableBiMap;)Ljava/lang/Object;

    move-result-object v4

    .line 72
    .local v4, "alias":Ljava/lang/Object;
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 73
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    .end local v2    # "result":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;, "TT;"
    .end local v3    # "resultCheckClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck;>;"
    .end local v4    # "alias":Ljava/lang/Object;
    :cond_1
    goto :goto_0

    .line 76
    :cond_2
    return-object v0
.end method

.method public static getResultsForType(Ljava/lang/Iterable;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;)Ljava/util/List;
    .locals 4
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

    .line 90
    .local p0, "results":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v0, "resultsForType":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;

    .line 92
    .local v2, "result":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;, "TT;"
    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;->getType()Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 93
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    .end local v2    # "result":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;, "TT;"
    :cond_0
    goto :goto_0

    .line 96
    :cond_1
    return-object v0
.end method

.method public static getResultsForTypes(Ljava/lang/Iterable;Ljava/util/Set;)Ljava/util/List;
    .locals 4
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

    .line 111
    .local p0, "results":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "types":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v0, "resultsForTypes":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;

    .line 113
    .local v2, "result":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;, "TT;"
    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;->getType()Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    .end local v2    # "result":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;, "TT;"
    :cond_0
    goto :goto_0

    .line 117
    :cond_1
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

    .line 190
    .local p0, "classNameMatcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils;->matchesCheckNames(Lorg/hamcrest/Matcher;Lcom/google/common/collect/ImmutableBiMap;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method static matchesCheckNames(Lorg/hamcrest/Matcher;Lcom/google/common/collect/ImmutableBiMap;)Lorg/hamcrest/Matcher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "-",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/common/collect/ImmutableBiMap<",
            "**>;)",
            "Lorg/hamcrest/Matcher<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;",
            ">;"
        }
    .end annotation

    .line 204
    .local p0, "classNameMatcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-Ljava/lang/String;>;"
    .local p1, "aliases":Lcom/google/common/collect/ImmutableBiMap;, "Lcom/google/common/collect/ImmutableBiMap<**>;"
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils$3;

    const-string v1, "source check name"

    invoke-direct {v0, v1, p0, p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils$3;-><init>(Ljava/lang/String;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lcom/google/common/collect/ImmutableBiMap;)V

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

    .line 150
    .local p0, "classMatcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<*>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils;->matchesChecks(Lorg/hamcrest/Matcher;Lcom/google/common/collect/ImmutableBiMap;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method static matchesChecks(Lorg/hamcrest/Matcher;Lcom/google/common/collect/ImmutableBiMap;)Lorg/hamcrest/Matcher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "*>;",
            "Lcom/google/common/collect/ImmutableBiMap<",
            "**>;)",
            "Lorg/hamcrest/Matcher<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;",
            ">;"
        }
    .end annotation

    .line 168
    .local p0, "classMatcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<*>;"
    .local p1, "aliases":Lcom/google/common/collect/ImmutableBiMap;, "Lcom/google/common/collect/ImmutableBiMap<**>;"
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils$2;

    const-string v1, "source check"

    invoke-direct {v0, v1, p0, p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils$2;-><init>(Ljava/lang/String;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lcom/google/common/collect/ImmutableBiMap;)V

    return-object v0
.end method

.method public static matchesTypes(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 2
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

    .line 129
    .local p0, "typeMatcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;>;"
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils$1;

    const-string v1, "result type"

    invoke-direct {v0, v1, p0, p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultBaseUtils$1;-><init>(Ljava/lang/String;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)V

    return-object v0
.end method
