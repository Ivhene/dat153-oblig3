.class public Lcom/google/android/apps/common/testing/accessibility/framework/checks/RedundantDescriptionCheck;
.super Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;
.source "RedundantDescriptionCheck.java"


# static fields
.field private static final ACTION_WORD_KEYS:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ITEM_TYPE_WORD_KEYS:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_CONTENT_DESCRIPTION:Ljava/lang/String; = "KEY_CONTENT_DESCRIPTION"

.field public static final KEY_REDUNDANT_WORD:Ljava/lang/String; = "KEY_REDUNDANT_WORD"

.field public static final RESULT_ID_CONTENT_DESC_CONTAINS_ACTION:I = 0x8

.field public static final RESULT_ID_CONTENT_DESC_CONTAINS_ITEM_TYPE:I = 0x5

.field public static final RESULT_ID_CONTENT_DESC_CONTAINS_STATE:I = 0x7

.field public static final RESULT_ID_CONTENT_DESC_ENDS_WITH_VIEW_TYPE:I = 0x4

.field public static final RESULT_ID_ENGLISH_LOCALE_ONLY:I = 0x1

.field public static final RESULT_ID_NOT_IMPORTANT_FOR_ACCESSIBILITY:I = 0x2

.field public static final RESULT_ID_NOT_VISIBLE:I = 0x6

.field public static final RESULT_ID_NO_CONTENT_DESC:I = 0x3

.field private static final STATE_WORD_KEYS:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 92
    nop

    .line 93
    const-string v0, "button_item_type"

    const-string v1, "checkbox_item_type"

    const-string v2, "checkbox_item_type_separate_words"

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/checks/RedundantDescriptionCheck;->ITEM_TYPE_WORD_KEYS:Lcom/google/common/collect/ImmutableList;

    .line 97
    nop

    .line 99
    const-string v0, "checked_state"

    const-string v1, "unchecked_state"

    const-string v2, "selected_state"

    const-string v3, "unselected_state"

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/checks/RedundantDescriptionCheck;->STATE_WORD_KEYS:Lcom/google/common/collect/ImmutableList;

    .line 102
    nop

    .line 103
    const-string v0, "click_action"

    const-string v1, "swipe_action"

    const-string v2, "tap_action"

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/checks/RedundantDescriptionCheck;->ACTION_WORD_KEYS:Lcom/google/common/collect/ImmutableList;

    .line 102
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;-><init>()V

    return-void
.end method

.method private checkForWords(ILcom/google/common/collect/ImmutableList;Ljava/util/Locale;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;Ljava/util/List;)V
    .locals 13
    .param p1, "resultId"    # I
    .param p3, "locale"    # Ljava/util/Locale;
    .param p4, "view"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Locale;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;",
            ">;)V"
        }
    .end annotation

    .line 183
    .local p2, "wordKeys":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Ljava/lang/String;>;"
    .local p5, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;>;"
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getContentDescription()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 184
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 185
    .local v2, "wordKey":Ljava/lang/String;
    move-object/from16 v3, p3

    invoke-static {v3, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 186
    .local v4, "word":Ljava/lang/CharSequence;
    invoke-static {v0, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/RedundantDescriptionCheck;->containsWordIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 187
    new-instance v5, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;

    invoke-direct {v5}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;-><init>()V

    .line 188
    .local v5, "resultMetadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    const-string v6, "KEY_CONTENT_DESCRIPTION"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v6, "KEY_REDUNDANT_WORD"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    new-instance v12, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    .line 192
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->WARNING:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    move-object v6, v12

    move-object/from16 v9, p4

    move v10, p1

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    .line 190
    move-object/from16 v6, p5

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 186
    .end local v5    # "resultMetadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    :cond_0
    move-object/from16 v6, p5

    .line 198
    .end local v2    # "wordKey":Ljava/lang/String;
    .end local v4    # "word":Ljava/lang/CharSequence;
    :goto_1
    goto :goto_0

    .line 199
    :cond_1
    move-object/from16 v3, p3

    move-object/from16 v6, p5

    return-void
.end method

.method private static containsWordIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 3
    .param p0, "sequence"    # Ljava/lang/CharSequence;
    .param p1, "word"    # Ljava/lang/CharSequence;

    .line 291
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "(?s).*\\b(?i)"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\b.*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static generateMessageForResultId(Ljava/util/Locale;I)Ljava/lang/String;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "resultId"    # I

    .line 300
    packed-switch p1, :pswitch_data_0

    .line 310
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 302
    :pswitch_1
    const-string v0, "result_message_not_visible"

    invoke-static {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 308
    :pswitch_2
    const-string v0, "result_message_no_content_desc"

    invoke-static {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 306
    :pswitch_3
    const-string v0, "result_message_not_important_for_accessibility"

    invoke-static {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 304
    :pswitch_4
    const-string v0, "result_message_english_locale_only"

    invoke-static {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getRecordedLocale(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;)Ljava/util/Locale;
    .locals 1
    .param p0, "hierarchy"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;

    .line 296
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;->getDeviceState()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceState;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCategory()Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;
    .locals 1

    .line 112
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;->CONTENT_LABELING:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;

    return-object v0
.end method

.method protected getHelpTopic()Ljava/lang/String;
    .locals 1

    .line 107
    const-string v0, "6378990"

    return-object v0
.end method

.method public getMessageForResult(Ljava/util/Locale;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;)Ljava/lang/String;
    .locals 10
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "result"    # Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    .line 203
    invoke-virtual {p2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getResultId()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 204
    invoke-virtual {p2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getMetadata()Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    move-result-object v0

    .line 205
    .local v0, "metadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    const-string v1, "KEY_CONTENT_DESCRIPTION"

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 206
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getElement()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 208
    invoke-virtual {p2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getElement()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v2

    .line 210
    .local v2, "culprit":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->clone()Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    move-result-object v3

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;

    invoke-direct {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;-><init>()V

    :goto_0
    move-object v9, v3

    .line 211
    .local v9, "updatedMetadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    nop

    .line 212
    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getContentDescription()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    invoke-virtual {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;->toString()Ljava/lang/String;

    move-result-object v3

    .line 211
    invoke-interface {v9, v1, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    .line 215
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getType()Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    move-result-object v5

    invoke-virtual {p2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getResultId()I

    move-result v7

    move-object v3, v1

    move-object v6, v2

    move-object v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    .line 216
    .local v1, "updatedResult":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;
    invoke-super {p0, p1, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;->getMessageForResult(Ljava/util/Locale;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 220
    .end local v0    # "metadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .end local v1    # "updatedResult":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;
    .end local v2    # "culprit":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .end local v9    # "updatedMetadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;->getMessageForResult(Ljava/util/Locale;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageForResultData(Ljava/util/Locale;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)Ljava/lang/String;
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "resultId"    # I
    .param p3, "metadata"    # Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    .line 226
    invoke-static {p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/RedundantDescriptionCheck;->generateMessageForResultId(Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "generated":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 228
    return-object v0

    .line 232
    :cond_0
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v1, "KEY_REDUNDANT_WORD"

    const-string v2, "KEY_CONTENT_DESCRIPTION"

    packed-switch p2, :pswitch_data_0

    .line 258
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unsupported result id"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 252
    :pswitch_1
    nop

    .line 254
    const-string v3, "result_message_content_desc_contains_action"

    invoke-static {p1, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 255
    invoke-interface {p3, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 256
    invoke-interface {p3, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 252
    invoke-static {p1, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 246
    :pswitch_2
    nop

    .line 248
    const-string v3, "result_message_content_desc_contains_state"

    invoke-static {p1, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 249
    invoke-interface {p3, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 250
    invoke-interface {p3, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 246
    invoke-static {p1, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 235
    :pswitch_3
    nop

    .line 237
    const-string v3, "result_message_content_desc_contains_redundant_word"

    invoke-static {p1, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 238
    invoke-interface {p3, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 239
    invoke-interface {p3, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 235
    invoke-static {p1, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 241
    :pswitch_4
    nop

    .line 243
    const-string v1, "result_message_content_desc_ends_with_view_type"

    invoke-static {p1, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-interface {p3, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 241
    invoke-static {p1, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getShortMessageForResultData(Ljava/util/Locale;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)Ljava/lang/String;
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "resultId"    # I
    .param p3, "metadata"    # Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    .line 265
    invoke-static {p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/RedundantDescriptionCheck;->generateMessageForResultId(Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "generated":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 267
    return-object v0

    .line 270
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 278
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unsupported result id"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 275
    :pswitch_1
    const-string v1, "result_message_brief_content_desc_contains_redundant_word"

    invoke-static {p1, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getTitleMessage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 284
    const-string v0, "check_title_redundant_description"

    invoke-static {p1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public runCheckOnHierarchy(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;)Ljava/util/List;
    .locals 20
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

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;>;"
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/RedundantDescriptionCheck;->getRecordedLocale(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;)Ljava/util/Locale;

    move-result-object v7

    .line 123
    .local v7, "recordedLocale":Ljava/util/Locale;
    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-static {v9, v8}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/RedundantDescriptionCheck;->getElementsToEvaluate(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;)Ljava/util/List;

    move-result-object v10

    .line 124
    .local v10, "viewsToEval":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 125
    .local v18, "view":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isVisibleToUser()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    .line 128
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    sget-object v14, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->NOT_RUN:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    const/16 v16, 0x6

    const/16 v17, 0x0

    move-object v12, v1

    move-object/from16 v15, v18

    invoke-direct/range {v12 .. v17}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    .line 126
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isImportantForAccessibility()Z

    move-result v1

    if-nez v1, :cond_1

    .line 136
    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    .line 138
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    sget-object v14, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->NOT_RUN:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    const/16 v16, 0x2

    const/16 v17, 0x0

    move-object v12, v1

    move-object/from16 v15, v18

    invoke-direct/range {v12 .. v17}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    .line 136
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getContentDescription()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    move-result-object v19

    .line 147
    .local v19, "contentDescription":Ljava/lang/CharSequence;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 148
    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    .line 150
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    sget-object v14, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->NOT_RUN:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    const/16 v16, 0x3

    const/16 v17, 0x0

    move-object v12, v1

    move-object/from16 v15, v18

    invoke-direct/range {v12 .. v17}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    .line 148
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    goto :goto_0

    .line 158
    :cond_2
    const/4 v2, 0x5

    sget-object v3, Lcom/google/android/apps/common/testing/accessibility/framework/checks/RedundantDescriptionCheck;->ITEM_TYPE_WORD_KEYS:Lcom/google/common/collect/ImmutableList;

    move-object/from16 v1, p0

    move-object v4, v7

    move-object/from16 v5, v18

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/RedundantDescriptionCheck;->checkForWords(ILcom/google/common/collect/ImmutableList;Ljava/util/Locale;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;Ljava/util/List;)V

    .line 164
    const/4 v2, 0x7

    sget-object v3, Lcom/google/android/apps/common/testing/accessibility/framework/checks/RedundantDescriptionCheck;->STATE_WORD_KEYS:Lcom/google/common/collect/ImmutableList;

    invoke-direct/range {v1 .. v6}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/RedundantDescriptionCheck;->checkForWords(ILcom/google/common/collect/ImmutableList;Ljava/util/Locale;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;Ljava/util/List;)V

    .line 166
    const/16 v2, 0x8

    sget-object v3, Lcom/google/android/apps/common/testing/accessibility/framework/checks/RedundantDescriptionCheck;->ACTION_WORD_KEYS:Lcom/google/common/collect/ImmutableList;

    invoke-direct/range {v1 .. v6}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/RedundantDescriptionCheck;->checkForWords(ILcom/google/common/collect/ImmutableList;Ljava/util/Locale;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;Ljava/util/List;)V

    .line 168
    .end local v18    # "view":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .end local v19    # "contentDescription":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 169
    :cond_3
    return-object v0
.end method
