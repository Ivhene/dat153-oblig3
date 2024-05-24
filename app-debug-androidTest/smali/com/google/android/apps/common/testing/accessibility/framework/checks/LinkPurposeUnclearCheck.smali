.class public Lcom/google/android/apps/common/testing/accessibility/framework/checks/LinkPurposeUnclearCheck;
.super Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;
.source "LinkPurposeUnclearCheck.java"


# static fields
.field private static final ENGLISH_STOPWORDS:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_LINK_TEXT:Ljava/lang/String; = "KEY_LINK_TEXT"

.field public static final RESULT_ID_ENGLISH_LOCALE_ONLY:I = 0x1

.field public static final RESULT_ID_LINK_TEXT_NOT_DESCRIPTIVE:I = 0x3

.field public static final RESULT_ID_NOT_TEXT_VIEW:I = 0x2

.field private static final WORD_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 60
    const-string v0, "click"

    const-string v1, "tap"

    const-string v2, "go"

    const-string v3, "here"

    const-string v4, "learn"

    const-string v5, "more"

    const-string v6, "this"

    const-string v7, "page"

    const-string v8, "link"

    const-string v9, "about"

    .line 61
    invoke-static/range {v0 .. v9}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/checks/LinkPurposeUnclearCheck;->ENGLISH_STOPWORDS:Lcom/google/common/collect/ImmutableList;

    .line 64
    const-string v0, "\\w+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/checks/LinkPurposeUnclearCheck;->WORD_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;-><init>()V

    return-void
.end method

.method private static generateMessageForResultId(Ljava/util/Locale;I)Ljava/lang/String;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "resultId"    # I

    .line 198
    packed-switch p1, :pswitch_data_0

    .line 204
    const/4 v0, 0x0

    return-object v0

    .line 202
    :pswitch_0
    const-string v0, "result_message_not_text_view"

    invoke-static {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 200
    :pswitch_1
    const-string v0, "result_message_english_locale_only"

    invoke-static {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static hasOnlyStopwords(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p0, "linkText"    # Ljava/lang/CharSequence;

    .line 133
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/checks/LinkPurposeUnclearCheck;->WORD_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 134
    .local v0, "m":Ljava/util/regex/Matcher;
    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/LinkPurposeUnclearCheck;->isStopword(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    const/4 v1, 0x0

    return v1

    .line 140
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private static isStopword(Ljava/lang/String;)Z
    .locals 3
    .param p0, "term"    # Ljava/lang/String;

    .line 146
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/checks/LinkPurposeUnclearCheck;->ENGLISH_STOPWORDS:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 147
    .local v1, "word":Ljava/lang/String;
    invoke-static {v1, p0}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    const/4 v0, 0x1

    return v0

    .line 150
    .end local v1    # "word":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 151
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getCategory()Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;
    .locals 1

    .line 74
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;->CONTENT_LABELING:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;

    return-object v0
.end method

.method protected getHelpTopic()Ljava/lang/String;
    .locals 1

    .line 69
    const-string v0, "9663312"

    return-object v0
.end method

.method public getMessageForResultData(Ljava/util/Locale;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)Ljava/lang/String;
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "resultId"    # I
    .param p3, "metadata"    # Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    .line 157
    invoke-static {p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/LinkPurposeUnclearCheck;->generateMessageForResultId(Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "generated":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 159
    return-object v0

    .line 163
    :cond_0
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    packed-switch p2, :pswitch_data_0

    .line 171
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unsupported result id"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 166
    :pswitch_0
    nop

    .line 168
    const-string v1, "result_message_link_text_not_descriptive"

    invoke-static {p1, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    const-string v2, "KEY_LINK_TEXT"

    invoke-interface {p3, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 166
    invoke-static {p1, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public getShortMessageForResultData(Ljava/util/Locale;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)Ljava/lang/String;
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "resultId"    # I
    .param p3, "metadata"    # Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    .line 178
    invoke-static {p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/LinkPurposeUnclearCheck;->generateMessageForResultId(Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "generated":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 180
    return-object v0

    .line 183
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 187
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unsupported result id"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :pswitch_0
    const-string v1, "result_message_brief_link_text_not_descriptive"

    invoke-static {p1, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public getTitleMessage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 193
    const-string v0, "check_title_link_test"

    invoke-static {p1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public runCheckOnHierarchy(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;)Ljava/util/List;
    .locals 17
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

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;>;"
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/LinkPurposeUnclearCheck;->isEnglish(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    .line 87
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->NOT_RUN:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    .line 85
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    return-object v0

    .line 95
    :cond_0
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/LinkPurposeUnclearCheck;->getElementsToEvaluate(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;)Ljava/util/List;

    move-result-object v3

    .line 96
    .local v3, "viewsToEval":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

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

    .line 100
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->NOT_RUN:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v6, v12

    move-object v9, v5

    invoke-direct/range {v6 .. v11}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    .line 98
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 106
    :cond_1
    invoke-virtual {v5}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getText()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    move-result-object v12

    .line 107
    .local v12, "text":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;
    if-eqz v12, :cond_3

    .line 108
    invoke-virtual {v12}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;->getSpans()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;

    .line 109
    .local v14, "span":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;
    instance-of v6, v14, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$ClickableSpan;

    if-eqz v6, :cond_2

    .line 110
    invoke-virtual {v14}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;->getStart()I

    move-result v6

    invoke-virtual {v14}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;->getEnd()I

    move-result v7

    invoke-virtual {v12, v6, v7}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v15

    .line 111
    .local v15, "linkText":Ljava/lang/CharSequence;
    invoke-static {v15}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/LinkPurposeUnclearCheck;->hasOnlyStopwords(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 112
    new-instance v6, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;

    invoke-direct {v6}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;-><init>()V

    move-object v11, v6

    .line 113
    .local v11, "resultMetadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    const-string v6, "KEY_LINK_TEXT"

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v11, v6, v7}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance v10, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    .line 116
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->WARNING:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    const/16 v16, 0x3

    move-object v6, v10

    move-object v9, v5

    move-object v1, v10

    move/from16 v10, v16

    move-object/from16 v16, v11

    .end local v11    # "resultMetadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .local v16, "resultMetadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    invoke-direct/range {v6 .. v11}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    .line 114
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    .end local v14    # "span":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;
    .end local v15    # "linkText":Ljava/lang/CharSequence;
    .end local v16    # "resultMetadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    :cond_2
    move-object/from16 v1, p1

    goto :goto_1

    .line 126
    .end local v5    # "element":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .end local v12    # "text":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;
    :cond_3
    :goto_2
    move-object/from16 v1, p1

    goto/16 :goto_0

    .line 127
    :cond_4
    return-object v0
.end method
