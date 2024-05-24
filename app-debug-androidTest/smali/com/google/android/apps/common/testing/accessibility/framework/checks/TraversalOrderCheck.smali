.class public Lcom/google/android/apps/common/testing/accessibility/framework/checks/TraversalOrderCheck;
.super Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;
.source "TraversalOrderCheck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/common/testing/accessibility/framework/checks/TraversalOrderCheck$CycleException;,
        Lcom/google/android/apps/common/testing/accessibility/framework/checks/TraversalOrderCheck$NextElementFunction;
    }
.end annotation


# static fields
.field public static final RESULT_ID_NOT_IMPORTANT_FOR_ACCESSIBILITY:I = 0x2

.field public static final RESULT_ID_NOT_VISIBLE:I = 0x1

.field public static final RESULT_ID_TRAVERSAL_AFTER_CYCLE:I = 0x4

.field public static final RESULT_ID_TRAVERSAL_BEFORE_CYCLE:I = 0x3

.field public static final RESULT_ID_TRAVERSAL_OVER_CONSTRAINED:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;-><init>()V

    return-void
.end method

.method private static buildNodeChain(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;Lcom/google/android/apps/common/testing/accessibility/framework/checks/TraversalOrderCheck$NextElementFunction;)Ljava/util/List;
    .locals 3
    .param p0, "start"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .param p1, "nextElementFunction"    # Lcom/google/android/apps/common/testing/accessibility/framework/checks/TraversalOrderCheck$NextElementFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/checks/TraversalOrderCheck$NextElementFunction;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/common/testing/accessibility/framework/checks/TraversalOrderCheck$CycleException;
        }
    .end annotation

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v0, "chain":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    move-object v1, p0

    .line 192
    .local v1, "ptr":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    :goto_0
    invoke-interface {p1, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TraversalOrderCheck$NextElementFunction;->apply(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v1

    .line 193
    if-nez v1, :cond_0

    .line 194
    return-object v0

    .line 196
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 199
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 197
    :cond_1
    new-instance v2, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TraversalOrderCheck$CycleException;

    invoke-direct {v2, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TraversalOrderCheck$CycleException;-><init>(Ljava/util/List;)V

    throw v2
.end method

.method private static generateMessageForResultId(Ljava/util/Locale;I)Ljava/lang/String;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "resultId"    # I

    .line 158
    const-string v0, "result_message_traversal_cycle"

    packed-switch p1, :pswitch_data_0

    .line 176
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported result id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :pswitch_0
    const-string v0, "result_message_traversal_over_constrained"

    invoke-static {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 169
    :pswitch_1
    nop

    .line 171
    invoke-static {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android:accessibilityTraversalAfter"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 169
    invoke-static {p0, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 164
    :pswitch_2
    nop

    .line 166
    invoke-static {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android:accessibilityTraversalBefore"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 164
    invoke-static {p0, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 162
    :pswitch_3
    const-string v0, "result_message_not_important_for_accessibility"

    invoke-static {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 160
    :pswitch_4
    const-string v0, "result_message_not_visible"

    invoke-static {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static intersectionOf(Ljava/util/List;Ljava/util/List;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 205
    .local p0, "list1":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "list2":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 206
    .local v0, "intersection":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 207
    return-object v0
.end method

.method static synthetic lambda$runCheckOnHierarchy$0(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .locals 1
    .param p0, "el"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 92
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getAccessibilityTraversalBefore()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$runCheckOnHierarchy$1(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .locals 1
    .param p0, "el"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 104
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getAccessibilityTraversalAfter()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCategory()Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;
    .locals 1

    .line 56
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;->IMPLEMENTATION:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;

    return-object v0
.end method

.method protected getHelpTopic()Ljava/lang/String;
    .locals 1

    .line 51
    const-string v0, "7664232"

    return-object v0
.end method

.method public getMessageForResultData(Ljava/util/Locale;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "resultId"    # I
    .param p3, "metadata"    # Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    .line 136
    invoke-static {p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TraversalOrderCheck;->generateMessageForResultId(Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShortMessageForResultData(Ljava/util/Locale;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "resultId"    # I
    .param p3, "metadata"    # Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    .line 142
    packed-switch p2, :pswitch_data_0

    .line 148
    const-string v0, "result_message_brief_unpredictable_traversal"

    invoke-static {p1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 146
    :pswitch_0
    const-string v0, "result_message_not_important_for_accessibility"

    invoke-static {p1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 144
    :pswitch_1
    const-string v0, "result_message_not_visible"

    invoke-static {p1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTitleMessage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 154
    const-string v0, "check_title_accessibility_traversal"

    invoke-static {p1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public runCheckOnHierarchy(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;)Ljava/util/List;
    .locals 16
    .param p1, "hierarchy"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;
    .param p2, "fromRoot"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .param p3, "parameters"    # Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;",
            ">;"
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 65
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;>;"
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TraversalOrderCheck;->getElementsToEvaluate(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;)Ljava/util/List;

    move-result-object v4

    .line 66
    .local v4, "viewsToEval":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 67
    .local v12, "view":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v12}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isVisibleToUser()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    .line 69
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->NOT_RUN:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v6, v0

    move-object v9, v12

    invoke-direct/range {v6 .. v11}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    .line 68
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {v12}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isImportantForAccessibility()Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    .line 79
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->NOT_RUN:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v6, v0

    move-object v9, v12

    invoke-direct/range {v6 .. v11}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    .line 78
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    goto :goto_0

    .line 92
    :cond_1
    :try_start_0
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TraversalOrderCheck$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TraversalOrderCheck$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v12, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TraversalOrderCheck;->buildNodeChain(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;Lcom/google/android/apps/common/testing/accessibility/framework/checks/TraversalOrderCheck$NextElementFunction;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/apps/common/testing/accessibility/framework/checks/TraversalOrderCheck$CycleException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v13, v0

    .line 102
    .local v13, "beforeChain":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;>;"
    nop

    .line 104
    :try_start_1
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TraversalOrderCheck$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TraversalOrderCheck$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v12, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TraversalOrderCheck;->buildNodeChain(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;Lcom/google/android/apps/common/testing/accessibility/framework/checks/TraversalOrderCheck$NextElementFunction;)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catch Lcom/google/android/apps/common/testing/accessibility/framework/checks/TraversalOrderCheck$CycleException; {:try_start_1 .. :try_end_1} :catch_0

    .line 114
    .local v0, "afterChain":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;>;"
    nop

    .line 117
    invoke-static {v13, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TraversalOrderCheck;->intersectionOf(Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v14

    .line 118
    .local v14, "intersection":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;>;"
    invoke-interface {v14, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 119
    invoke-interface {v14}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 120
    new-instance v15, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    .line 122
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->WARNING:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    const/4 v10, 0x5

    const/4 v11, 0x0

    move-object v6, v15

    move-object v9, v12

    invoke-direct/range {v6 .. v11}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    .line 120
    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    .end local v0    # "afterChain":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;>;"
    .end local v12    # "view":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .end local v13    # "beforeChain":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;>;"
    .end local v14    # "intersection":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;>;"
    :cond_2
    goto :goto_0

    .line 105
    .restart local v12    # "view":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .restart local v13    # "beforeChain":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;>;"
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Lcom/google/android/apps/common/testing/accessibility/framework/checks/TraversalOrderCheck$CycleException;
    new-instance v14, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    .line 108
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->WARNING:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v6, v14

    move-object v9, v12

    invoke-direct/range {v6 .. v11}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    .line 106
    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    goto/16 :goto_0

    .line 93
    .end local v0    # "e":Lcom/google/android/apps/common/testing/accessibility/framework/checks/TraversalOrderCheck$CycleException;
    .end local v13    # "beforeChain":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;>;"
    :catch_1
    move-exception v0

    .line 94
    .restart local v0    # "e":Lcom/google/android/apps/common/testing/accessibility/framework/checks/TraversalOrderCheck$CycleException;
    new-instance v13, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    .line 96
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->WARNING:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    const/4 v10, 0x3

    const/4 v11, 0x0

    move-object v6, v13

    move-object v9, v12

    invoke-direct/range {v6 .. v11}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    .line 94
    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    goto/16 :goto_0

    .line 130
    .end local v0    # "e":Lcom/google/android/apps/common/testing/accessibility/framework/checks/TraversalOrderCheck$CycleException;
    .end local v12    # "view":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    :cond_3
    return-object v1
.end method
