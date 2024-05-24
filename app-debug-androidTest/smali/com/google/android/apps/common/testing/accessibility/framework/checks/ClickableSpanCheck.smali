.class public Lcom/google/android/apps/common/testing/accessibility/framework/checks/ClickableSpanCheck;
.super Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;
.source "ClickableSpanCheck.java"


# static fields
.field private static final APPLICABLE_UNTIL_ANDROID_SDK_VERSION:I = 0x1a

.field public static final RESULT_ID_CLICKABLE_SPAN:I = 0x5

.field public static final RESULT_ID_NOT_TEXT_VIEW:I = 0x2

.field public static final RESULT_ID_NO_DETERMINED_TYPE:I = 0x1

.field public static final RESULT_ID_NULL_URL:I = 0x3

.field public static final RESULT_ID_RELATIVE_LINK:I = 0x4

.field public static final RESULT_ID_VERSION_NOT_APPLICABLE:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;-><init>()V

    return-void
.end method

.method private static generateMessageForResult(Ljava/util/Locale;I)Ljava/lang/String;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "resultId"    # I

    .line 147
    packed-switch p1, :pswitch_data_0

    .line 168
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported result id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :pswitch_0
    nop

    .line 151
    const-string v0, "result_message_sdk_version_not_applicable"

    invoke-static {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "8.0"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 149
    invoke-static {p0, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 165
    :pswitch_1
    const-string v0, "result_message_urlspan_not_clickablespan"

    invoke-static {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 162
    :pswitch_2
    const-string v0, "result_message_urlspan_invalid_url"

    invoke-static {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 158
    :pswitch_3
    const-string v0, "result_message_not_text_view"

    invoke-static {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 155
    :pswitch_4
    const-string v0, "result_message_clickablespan_no_determined_type"

    invoke-static {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getCategory()Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;
    .locals 1

    .line 75
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;->IMPLEMENTATION:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;

    return-object v0
.end method

.method protected getHelpTopic()Ljava/lang/String;
    .locals 1

    .line 70
    const-string v0, "6378148"

    return-object v0
.end method

.method public getMessageForResultData(Ljava/util/Locale;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "resultId"    # I
    .param p3, "metadata"    # Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    .line 132
    invoke-static {p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/ClickableSpanCheck;->generateMessageForResult(Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShortMessageForResultData(Ljava/util/Locale;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "resultId"    # I
    .param p3, "metadata"    # Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    .line 138
    invoke-static {p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/ClickableSpanCheck;->generateMessageForResult(Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitleMessage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 143
    const-string v0, "check_title_clickablespan"

    invoke-static {p1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public runCheckOnHierarchy(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;)Ljava/util/List;
    .locals 18
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

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;->getDeviceState()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceState;->getSdkVersion()I

    move-result v1

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 85
    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    .line 87
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->NOT_RUN:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    .line 85
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    return-object v0

    .line 95
    :cond_0
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/ClickableSpanCheck;->getElementsToEvaluate(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;)Ljava/util/List;

    move-result-object v3

    .line 96
    .local v3, "viewsToEval":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 97
    .local v5, "element":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    const-string v6, "android.widget.TextView"

    invoke-virtual {v5, v6}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->checkInstanceOf(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 98
    new-instance v12, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->NOT_RUN:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v6, v12

    move-object v9, v5

    invoke-direct/range {v6 .. v11}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {v5}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getText()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    move-result-object v12

    .line 103
    .local v12, "text":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;
    if-eqz v12, :cond_6

    .line 104
    invoke-virtual {v12}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;->getSpans()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;

    .line 105
    .local v14, "span":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;
    instance-of v6, v14, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$URLSpan;

    if-eqz v6, :cond_4

    .line 106
    move-object v6, v14

    check-cast v6, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$URLSpan;

    invoke-virtual {v6}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$URLSpan;->getUrl()Ljava/lang/String;

    move-result-object v15

    .line 107
    .local v15, "url":Ljava/lang/String;
    if-nez v15, :cond_2

    .line 108
    new-instance v11, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->ERROR:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    const/4 v10, 0x3

    const/16 v16, 0x0

    move-object v6, v11

    move-object v9, v5

    move-object v1, v11

    move-object/from16 v11, v16

    invoke-direct/range {v6 .. v11}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 111
    :cond_2
    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Uri;

    invoke-direct {v1, v15}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Uri;-><init>(Ljava/lang/String;)V

    .line 112
    .local v1, "uri":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Uri;
    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Uri;->isRelative()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 114
    new-instance v11, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->ERROR:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    const/4 v10, 0x4

    const/16 v16, 0x0

    move-object v6, v11

    move-object v9, v5

    move-object/from16 v17, v1

    move-object v1, v11

    .end local v1    # "uri":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Uri;
    .local v17, "uri":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Uri;
    move-object/from16 v11, v16

    invoke-direct/range {v6 .. v11}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 112
    .end local v17    # "uri":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Uri;
    .restart local v1    # "uri":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Uri;
    :cond_3
    move-object/from16 v17, v1

    .end local v1    # "uri":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Uri;
    .restart local v17    # "uri":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Uri;
    goto :goto_2

    .line 118
    .end local v15    # "url":Ljava/lang/String;
    .end local v17    # "uri":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Uri;
    :cond_4
    instance-of v1, v14, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$ClickableSpan;

    if-eqz v1, :cond_5

    .line 119
    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->ERROR:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    const/4 v10, 0x5

    const/4 v11, 0x0

    move-object v6, v1

    move-object v9, v5

    invoke-direct/range {v6 .. v11}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 118
    :cond_5
    :goto_2
    nop

    .line 122
    .end local v14    # "span":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;
    :goto_3
    move-object/from16 v1, p1

    goto :goto_1

    .line 125
    .end local v5    # "element":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .end local v12    # "text":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;
    :cond_6
    move-object/from16 v1, p1

    goto/16 :goto_0

    .line 126
    :cond_7
    return-object v0
.end method
