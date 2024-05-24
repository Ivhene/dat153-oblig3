.class public Lcom/google/android/apps/common/testing/accessibility/framework/checks/EditableContentDescCheck;
.super Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;
.source "EditableContentDescCheck.java"


# static fields
.field public static final RESULT_ID_EDITABLE_TEXTVIEW_CONTENT_DESC:I = 0x2

.field public static final RESULT_ID_NOT_EDITABLE_TEXTVIEW:I = 0x3

.field public static final RESULT_ID_NOT_IMPORTANT_FOR_ACCESSIBILITY:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;-><init>()V

    return-void
.end method

.method private static generateMessageForResultId(Ljava/util/Locale;I)Ljava/lang/String;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "resultId"    # I

    .line 114
    packed-switch p1, :pswitch_data_0

    .line 122
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported result id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :pswitch_0
    const-string v0, "result_message_not_editable_textview"

    invoke-static {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 118
    :pswitch_1
    const-string v0, "result_message_editable_textview_content_desc"

    invoke-static {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 116
    :pswitch_2
    const-string v0, "result_message_not_important_for_accessibility"

    invoke-static {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getCategory()Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;
    .locals 1

    .line 54
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;->IMPLEMENTATION:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;

    return-object v0
.end method

.method protected getHelpTopic()Ljava/lang/String;
    .locals 1

    .line 49
    const-string v0, "6378120"

    return-object v0
.end method

.method public getMessageForResultData(Ljava/util/Locale;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "resultId"    # I
    .param p3, "metadata"    # Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    .line 99
    invoke-static {p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/EditableContentDescCheck;->generateMessageForResultId(Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShortMessageForResultData(Ljava/util/Locale;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "resultId"    # I
    .param p3, "metadata"    # Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    .line 105
    invoke-static {p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/EditableContentDescCheck;->generateMessageForResultId(Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitleMessage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 110
    const-string v0, "check_title_editable_content_desc"

    invoke-static {p1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public runCheckOnHierarchy(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;)Ljava/util/List;
    .locals 11
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

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;>;"
    invoke-static {p2, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/EditableContentDescCheck;->getElementsToEvaluate(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;)Ljava/util/List;

    move-result-object v1

    .line 64
    .local v1, "viewsToEval":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 65
    .local v3, "view":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    invoke-virtual {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isImportantForAccessibility()Z

    move-result v4

    if-nez v4, :cond_0

    .line 66
    new-instance v10, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->NOT_RUN:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, v10

    move-object v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    .line 66
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    goto :goto_0

    .line 75
    :cond_0
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isEditable()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 76
    const-string v4, "android.widget.EditText"

    invoke-virtual {v3, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->checkInstanceOf(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 85
    :cond_1
    new-instance v10, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->NOT_RUN:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-object v4, v10

    move-object v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 77
    :cond_2
    :goto_1
    invoke-virtual {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getContentDescription()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 78
    new-instance v10, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->ERROR:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v4, v10

    move-object v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    .end local v3    # "view":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    :cond_3
    :goto_2
    goto :goto_0

    .line 93
    :cond_4
    return-object v0
.end method
