.class public Lcom/google/android/apps/common/testing/accessibility/framework/checks/DuplicateClickableBoundsCheck;
.super Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;
.source "DuplicateClickableBoundsCheck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/common/testing/accessibility/framework/checks/DuplicateClickableBoundsCheck$ViewLocationActionHolder;
    }
.end annotation


# static fields
.field public static final ELEMENT_MASK_CLICKABLE:B = 0x1t

.field public static final ELEMENT_MASK_LONG_CLICKABLE:B = 0x2t

.field public static final KEY_CONFLICTING_LOCATION_BOTTOM:Ljava/lang/String; = "KEY_CONFLICTING_LOCATION_BOTTOM"

.field public static final KEY_CONFLICTING_LOCATION_LEFT:Ljava/lang/String; = "KEY_CONFLICTING_LOCATION_LEFT"

.field public static final KEY_CONFLICTING_LOCATION_RIGHT:Ljava/lang/String; = "KEY_CONFLICTING_LOCATION_RIGHT"

.field public static final KEY_CONFLICTING_LOCATION_TOP:Ljava/lang/String; = "KEY_CONFLICTING_LOCATION_TOP"

.field public static final KEY_CONFLICTING_VIEW_COUNT:Ljava/lang/String; = "KEY_CONFLICTING_VIEW_COUNT"

.field public static final KEY_CONFLICTS_BECAUSE_CLICKABLE:Ljava/lang/String; = "KEY_CONFLICTS_BECAUSE_CLICKABLE"

.field public static final KEY_CONFLICTS_BECAUSE_LONG_CLICKABLE:Ljava/lang/String; = "KEY_CONFLICTS_BECAUSE_LONG_CLICKABLE"

.field public static final RESULT_ID_SAME_BOUNDS:I = 0x1

.field public static final RESULT_ID_VIEW_BOUNDS:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;-><init>()V

    return-void
.end method

.method private static getActionString(Ljava/util/Locale;ZZ)Ljava/lang/String;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "clickable"    # Z
    .param p2, "longClickable"    # Z

    .line 244
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 245
    const-string v0, "clickable_and_long_clickable"

    invoke-static {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 246
    :cond_0
    if-eqz p1, :cond_1

    .line 247
    const-string v0, "clickable"

    invoke-static {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 248
    :cond_1
    if-eqz p2, :cond_2

    .line 249
    const-string v0, "long_clickable"

    invoke-static {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 252
    :cond_2
    const-string v0, ""

    return-object v0
.end method

.method private static getBoundsFromMetadata(Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .locals 5
    .param p0, "metadata"    # Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    .line 272
    if-eqz p0, :cond_0

    .line 273
    const-string v0, "KEY_CONFLICTING_LOCATION_LEFT"

    invoke-interface {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    const-string v1, "KEY_CONFLICTING_LOCATION_TOP"

    invoke-interface {p0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    const-string v2, "KEY_CONFLICTING_LOCATION_RIGHT"

    invoke-interface {p0, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 276
    const-string v3, "KEY_CONFLICTING_LOCATION_BOTTOM"

    invoke-interface {p0, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 277
    new-instance v4, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    .line 278
    invoke-interface {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 279
    invoke-interface {p0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 280
    invoke-interface {p0, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 281
    invoke-interface {p0, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;-><init>(IIII)V

    .line 277
    return-object v4

    .line 283
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getLocationActionToViewMap(Ljava/util/Collection;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/checks/DuplicateClickableBoundsCheck$ViewLocationActionHolder;",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;",
            ">;>;"
        }
    .end annotation

    .line 219
    .local p1, "allViews":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 222
    .local v0, "locationActionToViewMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/apps/common/testing/accessibility/framework/checks/DuplicateClickableBoundsCheck$ViewLocationActionHolder;Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;>;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 223
    .local v2, "view":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isVisibleToUser()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 224
    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isClickable()Z

    move-result v3

    .line 228
    .local v3, "clickable":Z
    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isLongClickable()Z

    move-result v4

    .line 229
    .local v4, "longClickable":Z
    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getBoundsInScreen()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    move-result-object v5

    .line 230
    .local v5, "bounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isImportantForAccessibility()Z

    move-result v6

    if-eqz v6, :cond_3

    if-nez v3, :cond_1

    if-eqz v4, :cond_3

    .line 231
    :cond_1
    new-instance v6, Lcom/google/android/apps/common/testing/accessibility/framework/checks/DuplicateClickableBoundsCheck$ViewLocationActionHolder;

    invoke-direct {v6, v5, v3, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/DuplicateClickableBoundsCheck$ViewLocationActionHolder;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;ZZ)V

    .line 233
    .local v6, "viewLocationActionHolder":Lcom/google/android/apps/common/testing/accessibility/framework/checks/DuplicateClickableBoundsCheck$ViewLocationActionHolder;
    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 234
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_2
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    .end local v2    # "view":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .end local v3    # "clickable":Z
    .end local v4    # "longClickable":Z
    .end local v5    # "bounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .end local v6    # "viewLocationActionHolder":Lcom/google/android/apps/common/testing/accessibility/framework/checks/DuplicateClickableBoundsCheck$ViewLocationActionHolder;
    :cond_3
    goto :goto_0

    .line 240
    :cond_4
    return-object v0
.end method

.method private static getShortActionString(Ljava/util/Locale;ZZ)Ljava/lang/String;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "clickable"    # Z
    .param p2, "longClickable"    # Z

    .line 258
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 259
    const-string v0, "actionable"

    invoke-static {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 261
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/DuplicateClickableBoundsCheck;->getActionString(Ljava/util/Locale;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static setBoundsInMetadata(Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V
    .locals 2
    .param p0, "rect"    # Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .param p1, "metadata"    # Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    .line 265
    const-string v0, "KEY_CONFLICTING_LOCATION_LEFT"

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getLeft()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putInt(Ljava/lang/String;I)V

    .line 266
    const-string v0, "KEY_CONFLICTING_LOCATION_TOP"

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getTop()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putInt(Ljava/lang/String;I)V

    .line 267
    const-string v0, "KEY_CONFLICTING_LOCATION_RIGHT"

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getRight()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putInt(Ljava/lang/String;I)V

    .line 268
    const-string v0, "KEY_CONFLICTING_LOCATION_BOTTOM"

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getBottom()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putInt(Ljava/lang/String;I)V

    .line 269
    return-void
.end method


# virtual methods
.method public getCategory()Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;
    .locals 1

    .line 90
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;->IMPLEMENTATION:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;

    return-object v0
.end method

.method protected getHelpTopic()Ljava/lang/String;
    .locals 1

    .line 85
    const-string v0, "6378943"

    return-object v0
.end method

.method public getMessageForResult(Ljava/util/Locale;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;)Ljava/lang/String;
    .locals 12
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "result"    # Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    .line 136
    invoke-virtual {p2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getResultId()I

    move-result v6

    .line 137
    .local v6, "resultId":I
    const/4 v0, 0x1

    if-eq v6, v0, :cond_0

    const/4 v0, 0x2

    if-ne v6, v0, :cond_2

    .line 138
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getMetadata()Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    move-result-object v7

    .line 139
    .local v7, "metadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    invoke-static {v7}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/DuplicateClickableBoundsCheck;->getBoundsFromMetadata(Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    move-result-object v8

    .line 140
    .local v8, "bounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    if-nez v8, :cond_2

    invoke-virtual {p2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getElement()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 142
    invoke-virtual {p2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getElement()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v9

    .line 144
    .local v9, "culprit":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->clone()Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;

    invoke-direct {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;-><init>()V

    :goto_0
    move-object v10, v0

    .line 145
    .local v10, "updatedMetadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    invoke-virtual {v9}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getBoundsInScreen()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/DuplicateClickableBoundsCheck;->setBoundsInMetadata(Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    .line 146
    new-instance v11, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    .line 148
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 149
    invoke-virtual {p2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getType()Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    move-result-object v2

    move-object v0, v11

    move-object v3, v9

    move v4, v6

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    .line 153
    .local v0, "updatedResult":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;
    invoke-super {p0, p1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;->getMessageForResult(Ljava/util/Locale;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 157
    .end local v0    # "updatedResult":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;
    .end local v7    # "metadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .end local v8    # "bounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .end local v9    # "culprit":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .end local v10    # "updatedMetadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;->getMessageForResult(Ljava/util/Locale;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageForResultData(Ljava/util/Locale;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)Ljava/lang/String;
    .locals 5
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "resultId"    # I
    .param p3, "metadata"    # Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    .line 165
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-static {p3}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/DuplicateClickableBoundsCheck;->getBoundsFromMetadata(Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    .line 167
    .local v0, "bounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    nop

    .line 169
    const-string v1, "KEY_CONFLICTS_BECAUSE_CLICKABLE"

    const/4 v2, 0x0

    invoke-interface {p3, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 170
    const-string v3, "KEY_CONFLICTS_BECAUSE_LONG_CLICKABLE"

    invoke-interface {p3, v3, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 167
    invoke-static {p1, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/DuplicateClickableBoundsCheck;->getActionString(Ljava/util/Locale;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "actionString":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 183
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unsupported result id"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 179
    :pswitch_0
    nop

    .line 180
    const-string v2, "result_message_view_bounds"

    invoke-static {p1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 181
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 179
    invoke-static {p1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 173
    :pswitch_1
    nop

    .line 174
    const-string v2, "result_message_same_view_bounds"

    invoke-static {p1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KEY_CONFLICTING_VIEW_COUNT"

    invoke-interface {p3, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 173
    invoke-static {p1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getShortMessageForResultData(Ljava/util/Locale;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)Ljava/lang/String;
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "resultId"    # I
    .param p3, "metadata"    # Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    .line 191
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    nop

    .line 194
    const-string v0, "KEY_CONFLICTS_BECAUSE_CLICKABLE"

    invoke-interface {p3, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 195
    const-string v1, "KEY_CONFLICTS_BECAUSE_LONG_CLICKABLE"

    invoke-interface {p3, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 192
    invoke-static {p1, v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/DuplicateClickableBoundsCheck;->getShortActionString(Ljava/util/Locale;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "actionString":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 204
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unsupported result id"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    :pswitch_0
    nop

    .line 201
    const-string v1, "result_message_brief_same_view_bounds"

    invoke-static {p1, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    .line 199
    invoke-static {p1, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getTitleMessage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 210
    const-string v0, "check_title_duplicate_clickable_bounds"

    invoke-static {p1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public runCheckOnHierarchy(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;)Ljava/util/List;
    .locals 15
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

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;>;"
    nop

    .line 102
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;->getActiveWindow()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->getAllViews()Ljava/util/List;

    move-result-object v1

    move-object v2, p0

    invoke-direct {p0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/DuplicateClickableBoundsCheck;->getLocationActionToViewMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v1

    .line 106
    .local v1, "locationActionToViewMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/apps/common/testing/accessibility/framework/checks/DuplicateClickableBoundsCheck$ViewLocationActionHolder;Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;>;>;"
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getSelfAndAllDescendants()Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 107
    .local v3, "viewsToEval":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 108
    .local v5, "elements":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_1

    .line 109
    goto :goto_1

    .line 112
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 113
    .local v7, "culprit":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    if-eqz v3, :cond_3

    invoke-interface {v3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_3

    .line 128
    .end local v7    # "culprit":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    :cond_2
    goto :goto_2

    .line 114
    .restart local v7    # "culprit":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    :cond_3
    :goto_3
    new-instance v6, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;

    invoke-direct {v6}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;-><init>()V

    .line 115
    .local v6, "resultMetadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    const-string v8, "KEY_CONFLICTS_BECAUSE_CLICKABLE"

    invoke-virtual {v7}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isClickable()Z

    move-result v9

    invoke-interface {v6, v8, v9}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putBoolean(Ljava/lang/String;Z)V

    .line 116
    nop

    .line 117
    invoke-virtual {v7}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isLongClickable()Z

    move-result v8

    const-string v9, "KEY_CONFLICTS_BECAUSE_LONG_CLICKABLE"

    invoke-interface {v6, v9, v8}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putBoolean(Ljava/lang/String;Z)V

    .line 118
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    const-string v9, "KEY_CONFLICTING_VIEW_COUNT"

    invoke-interface {v6, v9, v8}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putInt(Ljava/lang/String;I)V

    .line 119
    invoke-virtual {v7}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getBoundsInScreen()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/DuplicateClickableBoundsCheck;->setBoundsInMetadata(Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    .line 120
    new-instance v14, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    sget-object v10, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->ERROR:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    const/4 v12, 0x1

    move-object v8, v14

    move-object v11, v7

    move-object v13, v6

    invoke-direct/range {v8 .. v13}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    .line 120
    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    nop

    .line 129
    .end local v5    # "elements":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;>;"
    .end local v6    # "resultMetadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .end local v7    # "culprit":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    :cond_4
    goto :goto_1

    .line 131
    :cond_5
    return-object v0
.end method
