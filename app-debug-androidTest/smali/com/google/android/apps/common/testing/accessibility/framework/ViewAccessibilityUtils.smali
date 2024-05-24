.class public final Lcom/google/android/apps/common/testing/accessibility/framework/ViewAccessibilityUtils;
.super Ljava/lang/Object;
.source "ViewAccessibilityUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewA11yUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addAllChildrenToSet(Landroid/view/View;Ljava/util/Set;)V
    .locals 3
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Set<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 304
    .local p1, "theSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/view/View;>;"
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 305
    return-void

    .line 308
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 309
    .local v0, "rootViewGroup":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 310
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 311
    .local v2, "nextView":Landroid/view/View;
    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 312
    invoke-static {v2, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewAccessibilityUtils;->addAllChildrenToSet(Landroid/view/View;Ljava/util/Set;)V

    .line 309
    .end local v2    # "nextView":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 314
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public static getAllViewsInHierarchy(Landroid/view/View;)Ljava/util/Set;
    .locals 1
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/Set<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 54
    .local v0, "allViews":Ljava/util/Set;, "Ljava/util/Set<Landroid/view/View;>;"
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-static {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewAccessibilityUtils;->addAllChildrenToSet(Landroid/view/View;Ljava/util/Set;)V

    .line 56
    return-object v0
.end method

.method public static getLabelForView(Landroid/view/View;)Landroid/view/View;
    .locals 6
    .param p0, "view"    # Landroid/view/View;

    .line 190
    nop

    .line 194
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    .line 195
    .local v0, "idToFind":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 197
    return-object v2

    .line 206
    :cond_0
    const/4 v1, 0x0

    .line 208
    .local v1, "childToSkip":Landroid/view/View;
    :goto_0
    invoke-static {p0, v1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewAccessibilityUtils;->lookForLabelForViewInViewAndChildren(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 209
    .local v3, "labelingView":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 210
    return-object v3

    .line 212
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 213
    .local v4, "parent":Landroid/view/ViewParent;
    move-object v1, p0

    .line 214
    instance-of v5, v4, Landroid/view/View;

    if-nez v5, :cond_2

    .line 215
    return-object v2

    .line 217
    :cond_2
    move-object p0, v4

    check-cast p0, Landroid/view/View;

    .line 218
    .end local v3    # "labelingView":Landroid/view/View;
    .end local v4    # "parent":Landroid/view/ViewParent;
    goto :goto_0
.end method

.method public static getResourceNameForView(Landroid/view/View;)Ljava/lang/String;
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .line 246
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 247
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    if-eqz v1, :cond_2

    .line 248
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 249
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewAccessibilityUtils;->isViewIdGenerated(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 255
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 256
    :catch_0
    move-exception v1

    .line 258
    .local v1, "nfe":Landroid/content/res/Resources$NotFoundException;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ViewA11yUtils"

    const-string v4, "Unable to resolve resource name from view ID."

    invoke-static {v3, v4, v2}, Lcom/google/android/libraries/accessibility/utils/log/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    .end local v1    # "nfe":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    return-object v0

    .line 250
    :cond_2
    :goto_0
    return-object v0
.end method

.method private static hasAnyImportantDescendant(Landroid/view/ViewGroup;)Z
    .locals 5
    .param p0, "group"    # Landroid/view/ViewGroup;

    .line 520
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 521
    return v0

    .line 524
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 525
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 526
    .local v2, "child":Landroid/view/View;
    invoke-static {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewAccessibilityUtils;->isImportantForAccessibility(Landroid/view/View;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 527
    return v4

    .line 530
    :cond_1
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 531
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-static {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewAccessibilityUtils;->hasAnyImportantDescendant(Landroid/view/ViewGroup;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 532
    return v4

    .line 524
    .end local v2    # "child":Landroid/view/View;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 537
    .end local v1    # "i":I
    :cond_3
    return v0
.end method

.method private static hasFocusableAncestor(Landroid/view/View;)Z
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 360
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 361
    return v0

    .line 364
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v1

    .line 365
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/View;

    if-nez v2, :cond_1

    .line 366
    return v0

    .line 369
    :cond_1
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewAccessibilityUtils;->isAccessibilityFocusable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 370
    const/4 v0, 0x1

    return v0

    .line 373
    :cond_2
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewAccessibilityUtils;->hasFocusableAncestor(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private static hasListenersForAccessibility(Landroid/view/View;)Z
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 328
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 329
    return v0

    .line 332
    :cond_0
    const/4 v1, 0x0

    .line 335
    .local v1, "result":Z
    invoke-virtual {p0}, Landroid/view/View;->getTouchDelegate()Landroid/view/TouchDelegate;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    or-int/2addr v0, v1

    .line 339
    .end local v1    # "result":Z
    .local v0, "result":Z
    return v0
.end method

.method private static hasNonActionableSpeakingChildren(Landroid/view/View;)Z
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .line 471
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    instance-of v1, p0, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    goto :goto_2

    .line 475
    :cond_0
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    .line 476
    .local v1, "group":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 477
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 478
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 479
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 480
    invoke-static {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewAccessibilityUtils;->isAccessibilityFocusable(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 481
    goto :goto_1

    .line 484
    :cond_1
    invoke-static {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewAccessibilityUtils;->isImportantForAccessibility(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewAccessibilityUtils;->isSpeakingView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 485
    const/4 v0, 0x1

    return v0

    .line 476
    .end local v3    # "child":Landroid/view/View;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 489
    .end local v2    # "i":I
    :cond_3
    return v0

    .line 472
    .end local v1    # "group":Landroid/view/ViewGroup;
    :cond_4
    :goto_2
    return v0
.end method

.method private static hasText(Landroid/view/View;)Z
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .line 499
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 500
    return v1

    .line 501
    :cond_0
    instance-of v0, p0, Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 502
    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    .line 503
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1

    .line 506
    .end local v0    # "textView":Landroid/widget/TextView;
    :cond_3
    return v2
.end method

.method private static isAccessibilityFocusable(Landroid/view/View;)Z
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 385
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 386
    return v0

    .line 389
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 390
    return v0

    .line 393
    :cond_1
    invoke-static {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewAccessibilityUtils;->isImportantForAccessibility(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 394
    return v0

    .line 397
    :cond_2
    invoke-static {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewAccessibilityUtils;->isActionableForAccessibility(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 398
    return v2

    .line 401
    :cond_3
    invoke-static {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewAccessibilityUtils;->isChildOfScrollableContainer(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewAccessibilityUtils;->isSpeakingView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v2

    :cond_4
    return v0
.end method

.method private static isAccessibilityLiveRegion(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 343
    nop

    .line 344
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityLiveRegion()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 343
    :goto_0
    return v0
.end method

.method public static isActionableForAccessibility(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 108
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 109
    return v0

    .line 112
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private static isChildOfScrollableContainer(Landroid/view/View;)Z
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .line 413
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 414
    return v0

    .line 417
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v1

    .line 418
    .local v1, "viewParent":Landroid/view/ViewParent;
    if-eqz v1, :cond_5

    instance-of v2, v1, Landroid/view/View;

    if-nez v2, :cond_1

    goto :goto_0

    .line 422
    :cond_1
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    .line 423
    .local v2, "parent":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isScrollContainer()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 424
    return v4

    .line 429
    :cond_2
    instance-of v3, v2, Landroid/widget/AdapterView;

    if-nez v3, :cond_3

    instance-of v3, v2, Landroid/widget/ScrollView;

    if-nez v3, :cond_3

    instance-of v3, v2, Landroid/widget/HorizontalScrollView;

    if-eqz v3, :cond_4

    :cond_3
    instance-of v3, v2, Landroid/widget/Spinner;

    if-nez v3, :cond_4

    move v0, v4

    :cond_4
    return v0

    .line 419
    .end local v2    # "parent":Landroid/view/View;
    :cond_5
    :goto_0
    return v0
.end method

.method public static isImportantForAccessibility(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 61
    if-nez p0, :cond_0

    .line 62
    const/4 v0, 0x0

    return v0

    .line 65
    :cond_0
    nop

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->isImportantForAccessibility()Z

    move-result v0

    return v0
.end method

.method private static isSpeakingView(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 448
    invoke-static {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewAccessibilityUtils;->hasText(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 449
    return v1

    .line 450
    :cond_0
    instance-of v0, p0, Landroid/widget/Checkable;

    if-eqz v0, :cond_1

    .line 452
    return v1

    .line 453
    :cond_1
    invoke-static {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewAccessibilityUtils;->hasNonActionableSpeakingChildren(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 454
    return v1

    .line 457
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static isViewEditable(Landroid/view/View;)Ljava/lang/Boolean;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 227
    if-nez p0, :cond_0

    .line 228
    const/4 v0, 0x0

    return-object v0

    .line 230
    :cond_0
    instance-of v0, p0, Landroid/widget/EditText;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 231
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 233
    :cond_1
    instance-of v0, p0, Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 234
    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 236
    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isViewIdGenerated(I)Z
    .locals 1
    .param p0, "resourceId"    # I

    .line 272
    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const v0, 0xffffff

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVisibleToUser(Landroid/view/View;)Z
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .line 126
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 127
    return v0

    .line 130
    :cond_0
    move-object v1, p0

    .line 131
    .local v1, "current":Ljava/lang/Object;
    :goto_0
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_3

    .line 132
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    .line 133
    .local v2, "currentView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-lez v3, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 136
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 137
    .end local v2    # "currentView":Landroid/view/View;
    goto :goto_0

    .line 134
    .restart local v2    # "currentView":Landroid/view/View;
    :cond_2
    :goto_1
    return v0

    .line 138
    .end local v2    # "currentView":Landroid/view/View;
    :cond_3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method private static lookForLabelForViewInViewAndChildren(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "childToSkip"    # Landroid/view/View;
    .param p2, "idToFind"    # I

    .line 278
    invoke-virtual {p0}, Landroid/view/View;->getLabelFor()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 279
    return-object p0

    .line 281
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 282
    return-object v1

    .line 284
    :cond_1
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 285
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 286
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 287
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 288
    invoke-static {v3, v1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewAccessibilityUtils;->lookForLabelForViewInViewAndChildren(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 289
    .local v4, "labelingView":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 290
    return-object v4

    .line 285
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "labelingView":Landroid/view/View;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 294
    .end local v2    # "i":I
    :cond_3
    return-object v1
.end method

.method public static shouldFocusView(Landroid/view/View;)Z
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 151
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 152
    return v0

    .line 155
    :cond_0
    invoke-static {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewAccessibilityUtils;->isVisibleToUser(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewAccessibilityUtils;->isImportantForAccessibility(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 160
    :cond_1
    invoke-static {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewAccessibilityUtils;->isAccessibilityFocusable(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 161
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    .line 162
    invoke-static {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewAccessibilityUtils;->hasAnyImportantDescendant(Landroid/view/ViewGroup;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 167
    :cond_2
    invoke-static {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewAccessibilityUtils;->isSpeakingView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 169
    return v2

    .line 172
    :cond_3
    return v0

    .line 166
    :cond_4
    :goto_0
    return v2

    .line 175
    :cond_5
    invoke-static {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewAccessibilityUtils;->hasText(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewAccessibilityUtils;->hasFocusableAncestor(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 176
    return v2

    .line 179
    :cond_6
    return v0

    .line 157
    :cond_7
    :goto_1
    return v0
.end method
