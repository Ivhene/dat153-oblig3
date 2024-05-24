.class public final Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;
.super Ljava/lang/Object;
.source "AccessibilityValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator$AccessibilityCheckListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AccessibilityValidator"


# instance fields
.field private final checkListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator$AccessibilityCheckListener;",
            ">;"
        }
    .end annotation
.end field

.field private deprecatedResultDescriptor:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultDescriptor;

.field private preset:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

.field private resultDescriptor:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultDescriptor;

.field private runChecksFromRootView:Z

.field private suppressingMatcher:Lorg/hamcrest/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "-",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;",
            ">;"
        }
    .end annotation
.end field

.field private throwExceptionFor:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->LATEST:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;->preset:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;->runChecksFromRootView:Z

    .line 52
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->ERROR:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;->throwExceptionFor:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;->deprecatedResultDescriptor:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultDescriptor;

    .line 58
    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultDescriptor;

    invoke-direct {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultDescriptor;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;->resultDescriptor:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultDescriptor;

    .line 61
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;->suppressingMatcher:Lorg/hamcrest/Matcher;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;->checkListeners:Ljava/util/List;

    .line 65
    return-void
.end method

.method private describeResult(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;)Ljava/lang/String;
    .locals 1
    .param p1, "result"    # Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;

    .line 288
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;->deprecatedResultDescriptor:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultDescriptor;

    if-eqz v0, :cond_0

    .line 289
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultDescriptor;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultDescriptor;->describeResult(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;->resultDescriptor:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultDescriptor;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultDescriptor;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultDescriptor;->describeResult(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSevereResults(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;",
            ">;"
        }
    .end annotation

    .line 323
    .local p1, "errors":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;>;"
    .local p2, "warnings":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;>;"
    .local p3, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;>;"
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;->throwExceptionFor:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    if-eqz v0, :cond_2

    .line 324
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator$1;->$SwitchMap$com$google$android$apps$common$testing$accessibility$framework$AccessibilityCheckResult$AccessibilityCheckResultType:[I

    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;->throwExceptionFor:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 339
    :pswitch_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 340
    :cond_0
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 341
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 342
    invoke-virtual {v0, p2}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 343
    invoke-virtual {v0, p3}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 344
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 340
    return-object v0

    .line 331
    :pswitch_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 332
    :cond_1
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 333
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 334
    invoke-virtual {v0, p2}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 335
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 332
    return-object v0

    .line 326
    :pswitch_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 327
    return-object p1

    .line 350
    :cond_2
    :goto_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$suppressMatchingResults$0(Lorg/hamcrest/Matcher;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;)Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;
    .locals 1
    .param p0, "matcher"    # Lorg/hamcrest/Matcher;
    .param p1, "result"    # Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;

    .line 311
    invoke-interface {p0, p1}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;->getSuppressedResultCopy()Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method private runAccessibilityChecks(Landroid/view/View;)Lcom/google/common/collect/ImmutableList;
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;",
            ">;"
        }
    .end annotation

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;->preset:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    .line 221
    invoke-static {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPresetAndroid;->getViewChecksForPreset(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 222
    .local v0, "viewHierarchyChecks":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewHierarchyCheck;>;"
    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;

    invoke-direct {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;-><init>()V

    .line 223
    .local v1, "parameters":Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewHierarchyCheck;

    .line 225
    .local v4, "check":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewHierarchyCheck;
    invoke-virtual {v4, p1, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewHierarchyCheck;->runCheckOnViewHierarchy(Landroid/view/View;Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 226
    .end local v4    # "check":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewHierarchyCheck;
    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;->processResults(Landroid/content/Context;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    return-object v3
.end method

.method static suppressMatchingResults(Ljava/util/List;Lorg/hamcrest/Matcher;)Lcom/google/common/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;",
            ">;",
            "Lorg/hamcrest/Matcher<",
            "-",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;",
            ">;"
        }
    .end annotation

    .line 306
    .local p0, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;>;"
    .local p1, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;>;"
    if-nez p1, :cond_0

    .line 307
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0

    .line 310
    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator$$ExternalSyntheticLambda0;-><init>(Lorg/hamcrest/Matcher;)V

    .line 311
    invoke-virtual {v0, v1}, Lcom/google/common/collect/FluentIterable;->transform(Lcom/google/common/base/Function;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    .line 312
    invoke-virtual {v0}, Lcom/google/common/collect/FluentIterable;->toList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 310
    return-object v0
.end method


# virtual methods
.method public addCheckListener(Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator$AccessibilityCheckListener;)Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;
    .locals 1
    .param p1, "listener"    # Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator$AccessibilityCheckListener;

    .line 208
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;->checkListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    return-object p0
.end method

.method public final check(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 73
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-virtual {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;->checkAndReturnResults(Landroid/view/View;)Ljava/util/List;

    .line 75
    return-void
.end method

.method public final checkAndReturnResults(Landroid/view/View;)Ljava/util/List;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;",
            ">;"
        }
    .end annotation

    .line 85
    if-eqz p1, :cond_1

    .line 86
    iget-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;->runChecksFromRootView:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 87
    .local v0, "viewToCheck":Landroid/view/View;
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;->runAccessibilityChecks(Landroid/view/View;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1

    .line 89
    .end local v0    # "viewToCheck":Landroid/view/View;
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method processResults(Landroid/content/Context;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;",
            ">;"
        }
    .end annotation

    .line 249
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;>;"
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;->suppressingMatcher:Lorg/hamcrest/Matcher;

    .line 250
    invoke-static {p2, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;->suppressMatchingResults(Ljava/util/List;Lorg/hamcrest/Matcher;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 251
    .local v0, "processedResults":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;>;"
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;->checkListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator$AccessibilityCheckListener;

    .line 252
    .local v2, "checkListener":Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator$AccessibilityCheckListener;
    invoke-interface {v2, p1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator$AccessibilityCheckListener;->onResults(Landroid/content/Context;Ljava/util/List;)V

    .line 253
    .end local v2    # "checkListener":Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator$AccessibilityCheckListener;
    goto :goto_0

    .line 255
    :cond_0
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->INFO:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    .line 256
    invoke-static {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultUtils;->getResultsForType(Ljava/lang/Iterable;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;)Ljava/util/List;

    move-result-object v1

    .line 258
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;>;"
    sget-object v2, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->WARNING:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    .line 259
    invoke-static {v0, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultUtils;->getResultsForType(Ljava/lang/Iterable;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;)Ljava/util/List;

    move-result-object v2

    .line 261
    .local v2, "warnings":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;>;"
    sget-object v3, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->ERROR:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    .line 262
    invoke-static {v0, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultUtils;->getResultsForType(Ljava/lang/Iterable;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;)Ljava/util/List;

    move-result-object v3

    .line 265
    .local v3, "errors":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;>;"
    invoke-direct {p0, v3, v2, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;->getSevereResults(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 267
    .local v4, "severeResults":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 268
    iget-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;->deprecatedResultDescriptor:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultDescriptor;

    if-eqz v5, :cond_1

    .line 269
    new-instance v5, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityViewCheckException;

    iget-object v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;->deprecatedResultDescriptor:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultDescriptor;

    .line 270
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultDescriptor;

    invoke-direct {v5, v4, v6}, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityViewCheckException;-><init>(Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultDescriptor;)V

    throw v5

    .line 272
    :cond_1
    new-instance v5, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityViewCheckException;

    iget-object v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;->resultDescriptor:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultDescriptor;

    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultDescriptor;

    invoke-direct {v5, v4, v6}, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityViewCheckException;-><init>(Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultDescriptor;)V

    throw v5

    .line 275
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "AccessibilityValidator"

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;

    .line 276
    .local v6, "result":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;
    invoke-direct {p0, v6}, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;->describeResult(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .end local v6    # "result":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;
    goto :goto_1

    .line 278
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;

    .line 279
    .restart local v6    # "result":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;
    invoke-direct {p0, v6}, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;->describeResult(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .end local v6    # "result":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;
    goto :goto_2

    .line 281
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;

    .line 282
    .restart local v6    # "result":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;
    invoke-direct {p0, v6}, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;->describeResult(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .end local v6    # "result":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;
    goto :goto_3

    .line 284
    :cond_5
    return-object v0
.end method

.method public setCheckPreset(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;)Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;
    .locals 0
    .param p1, "preset"    # Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    .line 99
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;->preset:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    .line 100
    return-object p0
.end method

.method public setResultDescriptor(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultDescriptor;)Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;
    .locals 1
    .param p1, "deprecatedResultDescriptor"    # Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultDescriptor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 182
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultDescriptor;

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;->deprecatedResultDescriptor:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultDescriptor;

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;->resultDescriptor:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultDescriptor;

    .line 184
    return-object p0
.end method

.method public setResultDescriptor(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultDescriptor;)Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;
    .locals 1
    .param p1, "resultDescriptor"    # Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultDescriptor;

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;->deprecatedResultDescriptor:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultDescriptor;

    .line 196
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultDescriptor;

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;->resultDescriptor:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultDescriptor;

    .line 197
    return-object p0
.end method

.method public setRunChecksFromRootView(Z)Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;
    .locals 0
    .param p1, "runChecksFromRootView"    # Z

    .line 110
    iput-boolean p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;->runChecksFromRootView:Z

    .line 111
    return-object p0
.end method

.method public setSuppressingResultMatcher(Lorg/hamcrest/Matcher;)Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "-",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;",
            ">;)",
            "Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;"
        }
    .end annotation

    .line 125
    .local p1, "resultMatcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;>;"
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;->suppressingMatcher:Lorg/hamcrest/Matcher;

    .line 126
    return-object p0
.end method

.method public setThrowExceptionFor(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;)Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;
    .locals 2
    .param p1, "throwFor"    # Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    .line 161
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->ERROR:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->WARNING:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->INFO:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "Argument was %s but expected ERROR, WARNING, INFO or null."

    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 168
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;->throwExceptionFor:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    .line 169
    return-object p0
.end method

.method public setThrowExceptionForErrors(Z)Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;
    .locals 1
    .param p1, "throwExceptionForErrors"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 138
    nop

    .line 139
    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->ERROR:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 138
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;->setThrowExceptionFor(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;)Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;

    move-result-object v0

    return-object v0
.end method
