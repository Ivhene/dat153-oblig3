.class public Lcom/google/android/apps/common/testing/accessibility/framework/checks/TouchTargetSizeCheck;
.super Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;
.source "TouchTargetSizeCheck.java"


# static fields
.field public static final KEY_CUSTOMIZED_REQUIRED_HEIGHT:Ljava/lang/String; = "KEY_CUSTOMIZED_REQUIRED_HEIGHT"

.field public static final KEY_CUSTOMIZED_REQUIRED_WIDTH:Ljava/lang/String; = "KEY_CUSTOMIZED_REQUIRED_WIDTH"

.field public static final KEY_HAS_CLICKABLE_ANCESTOR:Ljava/lang/String; = "KEY_HAS_CLICKABLE_ANCESTOR"

.field public static final KEY_HAS_TOUCH_DELEGATE:Ljava/lang/String; = "KEY_HAS_TOUCH_DELEGATE"

.field public static final KEY_HAS_TOUCH_DELEGATE_WITH_HIT_RECT:Ljava/lang/String; = "KEY_HAS_TOUCH_DELEGATE_WITH_HIT_RECT"

.field public static final KEY_HEIGHT:Ljava/lang/String; = "KEY_HEIGHT"

.field public static final KEY_HIT_RECT_HEIGHT:Ljava/lang/String; = "KEY_HIT_RECT_HEIGHT"

.field public static final KEY_HIT_RECT_WIDTH:Ljava/lang/String; = "KEY_HIT_RECT_WIDTH"

.field public static final KEY_IS_AGAINST_SCROLLABLE_EDGE:Ljava/lang/String; = "KEY_IS_AGAINST_SCROLLABLE_EDGE"

.field public static final KEY_IS_CLIPPED_BY_ANCESTOR:Ljava/lang/String; = "KEY_IS_CLIPPED_BY_ANCESTOR"

.field public static final KEY_NONCLIPPED_HEIGHT:Ljava/lang/String; = "KEY_NONCLIPPED_HEIGHT"

.field public static final KEY_NONCLIPPED_WIDTH:Ljava/lang/String; = "KEY_NONCLIPPED_WIDTH"

.field public static final KEY_REQUIRED_HEIGHT:Ljava/lang/String; = "KEY_REQUIRED_HEIGHT"

.field public static final KEY_REQUIRED_WIDTH:Ljava/lang/String; = "KEY_REQUIRED_WIDTH"

.field public static final KEY_WIDTH:Ljava/lang/String; = "KEY_WIDTH"

.field public static final RESULT_ID_CUSTOMIZED_SMALL_TOUCH_TARGET_HEIGHT:I = 0x7

.field public static final RESULT_ID_CUSTOMIZED_SMALL_TOUCH_TARGET_WIDTH:I = 0x8

.field public static final RESULT_ID_CUSTOMIZED_SMALL_TOUCH_TARGET_WIDTH_AND_HEIGHT:I = 0x6

.field public static final RESULT_ID_NOT_CLICKABLE:I = 0x1

.field public static final RESULT_ID_NOT_VISIBLE:I = 0x2

.field public static final RESULT_ID_SMALL_TOUCH_TARGET_HEIGHT:I = 0x4

.field public static final RESULT_ID_SMALL_TOUCH_TARGET_WIDTH:I = 0x5

.field public static final RESULT_ID_SMALL_TOUCH_TARGET_WIDTH_AND_HEIGHT:I = 0x3

.field private static final TOUCH_TARGET_MIN_HEIGHT:I = 0x30

.field private static final TOUCH_TARGET_MIN_HEIGHT_IME_CONTAINER:I = 0x20

.field private static final TOUCH_TARGET_MIN_HEIGHT_ON_EDGE:I = 0x20

.field private static final TOUCH_TARGET_MIN_WIDTH:I = 0x30

.field private static final TOUCH_TARGET_MIN_WIDTH_IME_CONTAINER:I = 0x20

.field private static final TOUCH_TARGET_MIN_WIDTH_ON_EDGE:I = 0x20

.field static final TYPE_INPUT_METHOD:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;-><init>()V

    return-void
.end method

.method private static appendMetadataStringsToMessageIfNeeded(Ljava/util/Locale;Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;Ljava/lang/StringBuilder;)V
    .locals 10
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "resultMetadata"    # Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .param p2, "builder"    # Ljava/lang/StringBuilder;

    .line 685
    const-string v0, "KEY_HAS_TOUCH_DELEGATE"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 686
    .local v0, "hasDelegate":Z
    nop

    .line 687
    const-string v2, "KEY_HAS_TOUCH_DELEGATE_WITH_HIT_RECT"

    invoke-interface {p1, v2, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 688
    .local v2, "hasDelegateWithHitRect":Z
    const-string v3, "KEY_HAS_CLICKABLE_ANCESTOR"

    invoke-interface {p1, v3, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 689
    .local v3, "hasClickableAncestor":Z
    const-string v4, "KEY_IS_CLIPPED_BY_ANCESTOR"

    invoke-interface {p1, v4, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 690
    .local v4, "isClippedByAncestor":Z
    nop

    .line 691
    const-string v5, "KEY_IS_AGAINST_SCROLLABLE_EDGE"

    invoke-interface {p1, v5, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 693
    .local v1, "isAgainstScrollableEdge":Z
    const/16 v5, 0x20

    if-eqz v2, :cond_0

    .line 694
    nop

    .line 695
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 699
    const-string v7, "result_message_addendum_touch_delegate_with_hit_rect"

    invoke-static {p0, v7}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 701
    const-string v8, "KEY_HIT_RECT_WIDTH"

    invoke-interface {p1, v8}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 702
    const-string v9, "KEY_HIT_RECT_HEIGHT"

    invoke-interface {p1, v9}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    .line 697
    invoke-static {p0, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 696
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 703
    :cond_0
    if-eqz v0, :cond_1

    .line 704
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 705
    const-string v7, "result_message_addendum_touch_delegate"

    invoke-static {p0, v7}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 708
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 709
    const-string v7, "result_message_addendum_clickable_ancestor"

    invoke-static {p0, v7}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    :cond_2
    if-eqz v4, :cond_3

    .line 712
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 713
    const-string v7, "result_message_addendum_clipped_by_ancestor"

    invoke-static {p0, v7}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 714
    const-string v8, "KEY_NONCLIPPED_WIDTH"

    invoke-interface {p1, v8}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 715
    const-string v9, "KEY_NONCLIPPED_HEIGHT"

    invoke-interface {p1, v9}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    .line 712
    invoke-static {p0, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    :cond_3
    if-eqz v1, :cond_4

    .line 718
    nop

    .line 719
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 721
    const-string v6, "result_message_addendum_against_scrollable_edge"

    invoke-static {p0, v6}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 720
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    :cond_4
    return-void
.end method

.method private static generateMessageForResultId(Ljava/util/Locale;I)Ljava/lang/String;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "resultId"    # I

    .line 466
    packed-switch p1, :pswitch_data_0

    .line 472
    const/4 v0, 0x0

    return-object v0

    .line 470
    :pswitch_0
    const-string v0, "result_message_not_visible"

    invoke-static {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 468
    :pswitch_1
    const-string v0, "result_message_not_clickable"

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

.method private static getLargestTouchDelegateHitRect(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .locals 6
    .param p0, "view"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 584
    const/4 v0, -0x1

    .line 585
    .local v0, "largestArea":I
    const/4 v1, 0x0

    .line 586
    .local v1, "largestHitRect":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getTouchDelegateBounds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    .line 587
    .local v3, "hitRect":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    invoke-virtual {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    .line 588
    .local v4, "area":I
    if-le v4, v0, :cond_0

    .line 589
    move v0, v4

    .line 590
    move-object v1, v3

    .line 592
    .end local v3    # "hitRect":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .end local v4    # "area":I
    :cond_0
    goto :goto_0

    .line 593
    :cond_1
    return-object v1
.end method

.method private static getMinimumAllowableSizeForView(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;
    .locals 15
    .param p0, "view"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .param p1, "parameters"    # Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;

    .line 485
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getBoundsInScreen()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    move-result-object v0

    .line 486
    .local v0, "bounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getWindow()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->getAccessibilityHierarchy()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;->getDeviceState()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceState;

    move-result-object v1

    .line 487
    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceState;->getDefaultDisplayInfo()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo;->getRealMetrics()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;

    move-result-object v1

    .line 496
    .local v1, "realMetrics":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;
    if-nez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;->getCustomTouchTargetSize()Ljava/lang/Integer;

    move-result-object v2

    .line 497
    .local v2, "customizedTargetSize":Ljava/lang/Integer;
    :goto_0
    if-eqz v2, :cond_1

    .line 498
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    .line 499
    .local v3, "targetSize":F
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 500
    .local v4, "touchTargetMinWidth":I
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 501
    .local v5, "touchTargetMinHeight":I
    const/high16 v6, 0x42000000    # 32.0f

    mul-float v7, v3, v6

    const/high16 v8, 0x42400000    # 48.0f

    div-float/2addr v7, v8

    .line 502
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 503
    .local v7, "touchTargetMinHeightImeContainer":I
    mul-float v9, v3, v6

    div-float/2addr v9, v8

    .line 504
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 505
    .local v9, "touchTargetMinWidthImeContainer":I
    mul-float v10, v3, v6

    div-float/2addr v10, v8

    .line 506
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 507
    .local v10, "touchTargetMinHeightOnEdge":I
    mul-float/2addr v6, v3

    div-float/2addr v6, v8

    .line 508
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 509
    .local v3, "touchTargetMinWidthOnEdge":I
    goto :goto_1

    .line 510
    .end local v3    # "touchTargetMinWidthOnEdge":I
    .end local v4    # "touchTargetMinWidth":I
    .end local v5    # "touchTargetMinHeight":I
    .end local v7    # "touchTargetMinHeightImeContainer":I
    .end local v9    # "touchTargetMinWidthImeContainer":I
    .end local v10    # "touchTargetMinHeightOnEdge":I
    :cond_1
    const/16 v4, 0x30

    .line 511
    .restart local v4    # "touchTargetMinWidth":I
    const/16 v5, 0x30

    .line 512
    .restart local v5    # "touchTargetMinHeight":I
    const/16 v7, 0x20

    .line 513
    .restart local v7    # "touchTargetMinHeightImeContainer":I
    const/16 v9, 0x20

    .line 514
    .restart local v9    # "touchTargetMinWidthImeContainer":I
    const/16 v10, 0x20

    .line 515
    .restart local v10    # "touchTargetMinHeightOnEdge":I
    const/16 v3, 0x20

    .line 520
    .restart local v3    # "touchTargetMinWidthOnEdge":I
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getWindow()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->getType()Ljava/lang/Integer;

    move-result-object v6

    .line 521
    .local v6, "windowType":Ljava/lang/Integer;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v11, 0x2

    if-ne v8, v11, :cond_2

    .line 523
    move v8, v9

    .line 524
    .local v8, "requiredWidth":I
    move v11, v7

    .local v11, "requiredHeight":I
    goto :goto_6

    .line 525
    .end local v8    # "requiredWidth":I
    .end local v11    # "requiredHeight":I
    :cond_2
    if-eqz v1, :cond_9

    .line 527
    nop

    .line 528
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getLeft()I

    move-result v8

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v8, :cond_4

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getRight()I

    move-result v8

    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;->getWidthPixels()I

    move-result v13

    if-ne v8, v13, :cond_3

    goto :goto_2

    :cond_3
    move v8, v11

    goto :goto_3

    :cond_4
    :goto_2
    move v8, v12

    .line 529
    .local v8, "viewAgainstSide":Z
    :goto_3
    nop

    .line 530
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getTop()I

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getBottom()I

    move-result v13

    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;->getHeightPixels()I

    move-result v14

    if-ne v13, v14, :cond_6

    :cond_5
    move v11, v12

    .line 532
    .local v11, "viewAgainstTopOrBottom":Z
    :cond_6
    if-eqz v8, :cond_7

    move v12, v3

    goto :goto_4

    :cond_7
    move v12, v4

    .line 533
    .local v12, "requiredWidth":I
    :goto_4
    if-eqz v11, :cond_8

    move v13, v10

    goto :goto_5

    :cond_8
    move v13, v5

    :goto_5
    move v11, v13

    .line 534
    .end local v8    # "viewAgainstSide":Z
    .local v11, "requiredHeight":I
    move v8, v12

    goto :goto_6

    .line 538
    .end local v11    # "requiredHeight":I
    .end local v12    # "requiredWidth":I
    :cond_9
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 539
    .local v8, "requiredWidth":I
    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 542
    .restart local v11    # "requiredHeight":I
    :goto_6
    new-instance v12, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;

    invoke-direct {v12, v8, v11}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;-><init>(II)V

    return-object v12
.end method

.method private static hasAncestorWithTouchDelegate(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z
    .locals 3
    .param p0, "view"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 605
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getParentView()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v0

    .local v0, "evalView":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    :goto_0
    if-eqz v0, :cond_1

    .line 607
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->hasTouchDelegate()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 608
    const/4 v1, 0x1

    return v1

    .line 606
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getParentView()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v0

    goto :goto_0

    .line 611
    .end local v0    # "evalView":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static hasQualifyingClickableAncestor(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;)Z
    .locals 7
    .param p0, "view"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .param p1, "parameters"    # Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;

    .line 625
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isClickable()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 626
    .local v0, "isTargetClickable":Z
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isLongClickable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 627
    .local v1, "isTargetLongClickable":Z
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getParentView()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v2

    .line 629
    .local v2, "evalView":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    :goto_0
    if-eqz v2, :cond_3

    .line 630
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isClickable()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    :cond_0
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 631
    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isLongClickable()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    .line 632
    :cond_1
    invoke-static {v2, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TouchTargetSizeCheck;->getMinimumAllowableSizeForView(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;

    move-result-object v3

    .line 633
    .local v3, "requiredSize":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;
    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getBoundsInScreen()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    move-result-object v4

    .line 634
    .local v4, "bounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    const-string v5, "android.widget.AbsListView"

    invoke-virtual {v2, v5}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->checkInstanceOf(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 635
    invoke-virtual {v4}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getHeight()I

    move-result v5

    invoke-virtual {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;->getY()I

    move-result v6

    if-lt v5, v6, :cond_2

    .line 636
    invoke-virtual {v4}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;->getX()I

    move-result v6

    if-lt v5, v6, :cond_2

    .line 637
    const/4 v5, 0x1

    return v5

    .line 640
    .end local v3    # "requiredSize":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;
    .end local v4    # "bounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getParentView()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v2

    goto :goto_0

    .line 642
    :cond_3
    const/4 v3, 0x0

    return v3
.end method

.method private static hasQualifyingClippingAncestor(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;F)Z
    .locals 13
    .param p0, "view"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .param p1, "requiredSize"    # Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;
    .param p2, "density"    # F

    .line 657
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getNonclippedHeight()Ljava/lang/Integer;

    move-result-object v0

    .line 658
    .local v0, "rawNonclippedHeight":Ljava/lang/Integer;
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getNonclippedWidth()Ljava/lang/Integer;

    move-result-object v1

    .line 659
    .local v1, "rawNonclippedWidth":Ljava/lang/Integer;
    const/4 v2, 0x0

    if-eqz v0, :cond_8

    if-nez v1, :cond_0

    goto :goto_4

    .line 663
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getBoundsInScreen()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    move-result-object v3

    .line 664
    .local v3, "clippedBounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    invoke-virtual {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, p2

    float-to-int v4, v4

    .line 665
    .local v4, "clippedHeight":I
    invoke-virtual {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, p2

    float-to-int v5, v5

    .line 666
    .local v5, "clippedWidth":I
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, p2

    float-to-int v6, v6

    .line 667
    .local v6, "nonclippedHeight":I
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, p2

    float-to-int v7, v7

    .line 668
    .local v7, "nonclippedWidth":I
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;->getY()I

    move-result v8

    const/4 v9, 0x1

    if-ge v4, v8, :cond_1

    move v8, v9

    goto :goto_0

    :cond_1
    move v8, v2

    .line 669
    .local v8, "clippedTooSmallY":Z
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;->getX()I

    move-result v10

    if-ge v5, v10, :cond_2

    move v10, v9

    goto :goto_1

    :cond_2
    move v10, v2

    .line 670
    .local v10, "clippedTooSmallX":Z
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;->getY()I

    move-result v11

    if-ge v6, v11, :cond_3

    move v11, v9

    goto :goto_2

    :cond_3
    move v11, v2

    .line 671
    .local v11, "nonclippedTooSmallY":Z
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;->getX()I

    move-result v12

    if-ge v7, v12, :cond_4

    move v12, v9

    goto :goto_3

    :cond_4
    move v12, v2

    .line 673
    .local v12, "nonclippedTooSmallX":Z
    :goto_3
    if-eqz v8, :cond_5

    if-eqz v11, :cond_6

    :cond_5
    if-eqz v10, :cond_7

    if-nez v12, :cond_7

    :cond_6
    move v2, v9

    :cond_7
    return v2

    .line 660
    .end local v3    # "clippedBounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .end local v4    # "clippedHeight":I
    .end local v5    # "clippedWidth":I
    .end local v6    # "nonclippedHeight":I
    .end local v7    # "nonclippedWidth":I
    .end local v8    # "clippedTooSmallY":Z
    .end local v10    # "clippedTooSmallX":Z
    .end local v11    # "nonclippedTooSmallY":Z
    .end local v12    # "nonclippedTooSmallX":Z
    :cond_8
    :goto_4
    return v2
.end method

.method private static hasTouchDelegateOfRequiredSize(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;F)Z
    .locals 3
    .param p0, "view"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .param p1, "requiredSizeInDp"    # Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;
    .param p2, "density"    # F

    .line 570
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getTouchDelegateBounds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    .line 571
    .local v1, "hitRect":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    invoke-static {v1, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TouchTargetSizeCheck;->meetsRequiredSize(Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 572
    const/4 v0, 0x1

    return v0

    .line 574
    .end local v1    # "hitRect":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    :cond_0
    goto :goto_0

    .line 575
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static hasTouchDelegateWithHitRects(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z
    .locals 1
    .param p0, "view"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 561
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getTouchDelegateBounds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static meetsRequiredSize(Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;F)Z
    .locals 2
    .param p0, "boundingRectInPx"    # Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .param p1, "requiredSizeInDp"    # Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;
    .param p2, "density"    # F

    .line 552
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;->getX()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 553
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;->getY()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 552
    :goto_0
    return v0
.end method


# virtual methods
.method public getCategory()Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;
    .locals 1

    .line 169
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;->TOUCH_TARGET_SIZE:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;

    return-object v0
.end method

.method protected getHelpTopic()Ljava/lang/String;
    .locals 1

    .line 164
    const-string v0, "7101858"

    return-object v0
.end method

.method public getMessageForResultData(Ljava/util/Locale;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)Ljava/lang/String;
    .locals 9
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "resultId"    # I
    .param p3, "metadata"    # Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    .line 339
    invoke-static {p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TouchTargetSizeCheck;->generateMessageForResultId(Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "generated":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 341
    return-object v0

    .line 345
    :cond_0
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v2, "KEY_REQUIRED_HEIGHT"

    const/16 v3, 0x30

    invoke-interface {p3, v2, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 348
    .local v2, "requiredHeight":I
    const-string v4, "KEY_REQUIRED_WIDTH"

    invoke-interface {p3, v4, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 349
    .local v3, "requiredWidth":I
    const-string v4, "KEY_CUSTOMIZED_REQUIRED_HEIGHT"

    const-string v5, "KEY_CUSTOMIZED_REQUIRED_WIDTH"

    const-string v6, "KEY_HEIGHT"

    const-string v7, "KEY_WIDTH"

    packed-switch p2, :pswitch_data_0

    .line 402
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unsupported result id"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 392
    :pswitch_0
    nop

    .line 395
    const-string v4, "result_message_customized_small_touch_target_width"

    invoke-static {p1, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 397
    invoke-interface {p3, v7}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 398
    invoke-interface {p3, v5}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v6, v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 393
    invoke-static {p1, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 392
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-static {p1, p3, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TouchTargetSizeCheck;->appendMetadataStringsToMessageIfNeeded(Ljava/util/Locale;Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;Ljava/lang/StringBuilder;)V

    .line 400
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 382
    :pswitch_1
    nop

    .line 385
    const-string v5, "result_message_customized_small_touch_target_height"

    invoke-static {p1, v5}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 387
    invoke-interface {p3, v6}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 388
    invoke-interface {p3, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v6, v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 383
    invoke-static {p1, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 382
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-static {p1, p3, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TouchTargetSizeCheck;->appendMetadataStringsToMessageIfNeeded(Ljava/util/Locale;Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;Ljava/lang/StringBuilder;)V

    .line 390
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 370
    :pswitch_2
    nop

    .line 373
    const-string v8, "result_message_customized_small_touch_target_width_and_height"

    invoke-static {p1, v8}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 375
    invoke-interface {p3, v7}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 376
    invoke-interface {p3, v6}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 377
    invoke-interface {p3, v5}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 378
    invoke-interface {p3, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v7, v6, v5, v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 371
    invoke-static {p1, v8, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 370
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-static {p1, p3, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TouchTargetSizeCheck;->appendMetadataStringsToMessageIfNeeded(Ljava/util/Locale;Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;Ljava/lang/StringBuilder;)V

    .line 380
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 364
    :pswitch_3
    nop

    .line 365
    const-string v4, "result_message_small_touch_target_width"

    invoke-static {p1, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 366
    invoke-interface {p3, v7}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    .line 364
    invoke-static {p1, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-static {p1, p3, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TouchTargetSizeCheck;->appendMetadataStringsToMessageIfNeeded(Ljava/util/Locale;Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;Ljava/lang/StringBuilder;)V

    .line 368
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 358
    :pswitch_4
    nop

    .line 359
    const-string v4, "result_message_small_touch_target_height"

    invoke-static {p1, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 360
    invoke-interface {p3, v6}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    .line 358
    invoke-static {p1, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-static {p1, p3, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TouchTargetSizeCheck;->appendMetadataStringsToMessageIfNeeded(Ljava/util/Locale;Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;Ljava/lang/StringBuilder;)V

    .line 362
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 351
    :pswitch_5
    nop

    .line 352
    const-string v4, "result_message_small_touch_target_width_and_height"

    invoke-static {p1, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 353
    invoke-interface {p3, v7}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p3, v6}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 354
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v5, v6, v7, v8}, [Ljava/lang/Object;

    move-result-object v5

    .line 351
    invoke-static {p1, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-static {p1, p3, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TouchTargetSizeCheck;->appendMetadataStringsToMessageIfNeeded(Ljava/util/Locale;Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;Ljava/lang/StringBuilder;)V

    .line 356
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSecondaryPriority(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;)Ljava/lang/Double;
    .locals 10
    .param p1, "result"    # Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    .line 444
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getMetadata()Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    move-result-object v0

    .line 445
    .local v0, "meta":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 446
    return-object v1

    .line 449
    :cond_0
    const-string v2, "KEY_WIDTH"

    const v3, 0x7fffffff

    invoke-interface {v0, v2, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 450
    .local v2, "width":I
    const-string v4, "KEY_HEIGHT"

    invoke-interface {v0, v4, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 451
    .local v3, "height":I
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-double v4, v4

    .line 452
    .local v4, "primary":D
    const-wide v6, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v6, v4, v6

    if-nez v6, :cond_1

    .line 453
    return-object v1

    .line 456
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-double v6, v1

    const-wide/high16 v8, 0x403e000000000000L    # 30.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    div-double/2addr v8, v6

    .line 457
    .local v8, "secondary":D
    sub-double v6, v4, v8

    neg-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1
.end method

.method public getShortMessageForResultData(Ljava/util/Locale;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)Ljava/lang/String;
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "resultId"    # I
    .param p3, "metadata"    # Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    .line 409
    invoke-static {p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TouchTargetSizeCheck;->generateMessageForResultId(Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "generated":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 411
    return-object v0

    .line 414
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 423
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unsupported result id"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 421
    :pswitch_0
    const-string v1, "result_message_brief_small_touch_target"

    invoke-static {p1, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getTitleMessage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 462
    const-string v0, "check_title_touch_target_size"

    invoke-static {p1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public runCheckOnHierarchy(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;)Ljava/util/List;
    .locals 29
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

    .line 177
    move-object/from16 v0, p3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;->getDeviceState()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceState;->getDefaultDisplayInfo()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo;

    move-result-object v2

    .line 180
    .local v2, "defaultDisplay":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo;
    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo;->getMetricsWithoutDecoration()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;

    move-result-object v3

    .line 181
    .local v3, "metricsWithoutDecorations":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;
    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-static {v5, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TouchTargetSizeCheck;->getElementsToEvaluate(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;)Ljava/util/List;

    move-result-object v6

    .line 182
    .local v6, "viewsToEval":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 183
    .local v8, "view":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isClickable()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 184
    invoke-virtual {v8}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isLongClickable()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 185
    new-instance v15, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    .line 186
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    sget-object v11, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->NOT_RUN:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v9, v15

    move-object v12, v8

    invoke-direct/range {v9 .. v14}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    .line 185
    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    goto :goto_0

    .line 194
    :cond_0
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isVisibleToUser()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 195
    new-instance v15, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    .line 196
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    sget-object v11, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->NOT_RUN:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    const/4 v13, 0x2

    const/4 v14, 0x0

    move-object v9, v15

    move-object v12, v8

    invoke-direct/range {v9 .. v14}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    .line 195
    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    goto :goto_0

    .line 204
    :cond_1
    invoke-virtual {v8}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getBoundsInScreen()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    move-result-object v15

    .line 205
    .local v15, "bounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    invoke-static {v8, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TouchTargetSizeCheck;->getMinimumAllowableSizeForView(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;

    move-result-object v14

    .line 206
    .local v14, "requiredSize":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;
    invoke-virtual {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;->getDensity()F

    move-result v13

    .line 207
    .local v13, "density":F
    invoke-virtual {v15}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v13

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 208
    .local v12, "actualHeight":I
    invoke-virtual {v15}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v13

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 210
    .local v10, "actualWidth":I
    invoke-static {v15, v14, v13}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TouchTargetSizeCheck;->meetsRequiredSize(Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;F)Z

    move-result v9

    if-nez v9, :cond_14

    .line 213
    const/4 v9, 0x0

    .line 214
    .local v9, "hasDelegate":Z
    const/4 v11, 0x0

    .line 217
    .local v11, "largestDelegateHitRect":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    invoke-static {v8}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TouchTargetSizeCheck;->hasTouchDelegateWithHitRects(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 218
    const/4 v9, 0x1

    .line 219
    invoke-static {v8, v14, v13}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TouchTargetSizeCheck;->hasTouchDelegateOfRequiredSize(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;F)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 221
    goto/16 :goto_0

    .line 225
    :cond_2
    invoke-static {v8}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TouchTargetSizeCheck;->getLargestTouchDelegateHitRect(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    move-result-object v11

    move/from16 v18, v9

    move-object/from16 v19, v11

    goto :goto_1

    .line 230
    :cond_3
    invoke-static {v8}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TouchTargetSizeCheck;->hasAncestorWithTouchDelegate(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z

    move-result v9

    move/from16 v18, v9

    move-object/from16 v19, v11

    .line 237
    .end local v9    # "hasDelegate":Z
    .end local v11    # "largestDelegateHitRect":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .local v18, "hasDelegate":Z
    .local v19, "largestDelegateHitRect":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    :goto_1
    invoke-static {v8, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TouchTargetSizeCheck;->hasQualifyingClickableAncestor(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;)Z

    move-result v20

    .line 241
    .local v20, "hasClickableAncestor":Z
    invoke-static {v8, v14, v13}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TouchTargetSizeCheck;->hasQualifyingClippingAncestor(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;F)Z

    move-result v21

    .line 247
    .local v21, "isClippedByAncestor":Z
    if-eqz v18, :cond_4

    if-eqz v19, :cond_6

    :cond_4
    if-nez v20, :cond_6

    if-eqz v21, :cond_5

    goto :goto_2

    .line 251
    :cond_5
    sget-object v9, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->ERROR:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    goto :goto_3

    .line 250
    :cond_6
    :goto_2
    sget-object v9, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->WARNING:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    .line 251
    :goto_3
    nop

    .line 256
    .local v9, "resultType":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;
    invoke-virtual {v8}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isAgainstScrollableEdge()Z

    move-result v22

    .line 257
    .local v22, "isAtScrollableEdge":Z
    if-eqz v22, :cond_7

    sget-object v11, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->NOT_RUN:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    goto :goto_4

    :cond_7
    move-object v11, v9

    .line 259
    .end local v9    # "resultType":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;
    .local v11, "resultType":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;
    :goto_4
    new-instance v9, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;

    invoke-direct {v9}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;-><init>()V

    .line 260
    .local v9, "resultMetadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    move-object/from16 v23, v2

    .end local v2    # "defaultDisplay":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo;
    .local v23, "defaultDisplay":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo;
    const-string v2, "KEY_HEIGHT"

    invoke-interface {v9, v2, v12}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putInt(Ljava/lang/String;I)V

    .line 261
    const-string v2, "KEY_WIDTH"

    invoke-interface {v9, v2, v10}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putInt(Ljava/lang/String;I)V

    .line 262
    const/4 v2, 0x1

    if-eqz v18, :cond_9

    .line 263
    if-eqz v19, :cond_8

    .line 264
    move-object/from16 v24, v3

    .end local v3    # "metricsWithoutDecorations":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;
    .local v24, "metricsWithoutDecorations":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;
    const-string v3, "KEY_HAS_TOUCH_DELEGATE_WITH_HIT_RECT"

    invoke-interface {v9, v3, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putBoolean(Ljava/lang/String;Z)V

    .line 265
    nop

    .line 266
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v13

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 265
    const-string v2, "KEY_HIT_RECT_WIDTH"

    invoke-interface {v9, v2, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putInt(Ljava/lang/String;I)V

    .line 267
    nop

    .line 268
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v13

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 267
    const-string v3, "KEY_HIT_RECT_HEIGHT"

    invoke-interface {v9, v3, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putInt(Ljava/lang/String;I)V

    const/4 v3, 0x1

    goto :goto_5

    .line 270
    .end local v24    # "metricsWithoutDecorations":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;
    .restart local v3    # "metricsWithoutDecorations":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;
    :cond_8
    move-object/from16 v24, v3

    .end local v3    # "metricsWithoutDecorations":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;
    .restart local v24    # "metricsWithoutDecorations":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;
    const-string v2, "KEY_HAS_TOUCH_DELEGATE"

    const/4 v3, 0x1

    invoke-interface {v9, v2, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_5

    .line 262
    .end local v24    # "metricsWithoutDecorations":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;
    .restart local v3    # "metricsWithoutDecorations":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;
    :cond_9
    move-object/from16 v24, v3

    move v3, v2

    .line 273
    .end local v3    # "metricsWithoutDecorations":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;
    .restart local v24    # "metricsWithoutDecorations":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;
    :goto_5
    if-eqz v20, :cond_a

    .line 274
    const-string v2, "KEY_HAS_CLICKABLE_ANCESTOR"

    invoke-interface {v9, v2, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putBoolean(Ljava/lang/String;Z)V

    .line 276
    :cond_a
    if-eqz v22, :cond_b

    .line 277
    const-string v2, "KEY_IS_AGAINST_SCROLLABLE_EDGE"

    invoke-interface {v9, v2, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putBoolean(Ljava/lang/String;Z)V

    .line 279
    :cond_b
    if-eqz v21, :cond_c

    .line 282
    const-string v2, "KEY_IS_CLIPPED_BY_ANCESTOR"

    invoke-interface {v9, v2, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putBoolean(Ljava/lang/String;Z)V

    .line 283
    invoke-virtual {v8}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getNonclippedHeight()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "KEY_NONCLIPPED_HEIGHT"

    invoke-interface {v9, v3, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putInt(Ljava/lang/String;I)V

    .line 284
    invoke-virtual {v8}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getNonclippedWidth()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "KEY_NONCLIPPED_WIDTH"

    invoke-interface {v9, v3, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putInt(Ljava/lang/String;I)V

    .line 288
    :cond_c
    if-nez v0, :cond_d

    const/4 v2, 0x0

    goto :goto_6

    :cond_d
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;->getCustomTouchTargetSize()Ljava/lang/Integer;

    move-result-object v2

    .line 289
    .local v2, "customizedTouchTargetSize":Ljava/lang/Integer;
    :goto_6
    if-eqz v2, :cond_e

    .line 290
    const-string v3, "KEY_CUSTOMIZED_REQUIRED_WIDTH"

    invoke-virtual {v14}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;->getX()I

    move-result v0

    invoke-interface {v9, v3, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putInt(Ljava/lang/String;I)V

    .line 291
    const-string v0, "KEY_CUSTOMIZED_REQUIRED_HEIGHT"

    invoke-virtual {v14}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;->getY()I

    move-result v3

    invoke-interface {v9, v0, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putInt(Ljava/lang/String;I)V

    goto :goto_7

    .line 293
    :cond_e
    const-string v0, "KEY_REQUIRED_HEIGHT"

    invoke-virtual {v14}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;->getY()I

    move-result v3

    invoke-interface {v9, v0, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putInt(Ljava/lang/String;I)V

    .line 294
    const-string v0, "KEY_REQUIRED_WIDTH"

    invoke-virtual {v14}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;->getX()I

    move-result v3

    invoke-interface {v9, v0, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putInt(Ljava/lang/String;I)V

    .line 297
    :goto_7
    invoke-virtual {v14}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;->getY()I

    move-result v0

    if-ge v12, v0, :cond_10

    invoke-virtual {v14}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;->getX()I

    move-result v0

    if-ge v10, v0, :cond_10

    .line 299
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    .line 301
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 304
    if-nez v2, :cond_f

    .line 305
    const/16 v16, 0x3

    goto :goto_8

    .line 306
    :cond_f
    const/16 v16, 0x6

    :goto_8
    move-object/from16 v25, v9

    .end local v9    # "resultMetadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .local v25, "resultMetadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    move-object v9, v0

    move/from16 v26, v10

    .end local v10    # "actualWidth":I
    .local v26, "actualWidth":I
    move-object v10, v3

    move v3, v12

    .end local v12    # "actualHeight":I
    .local v3, "actualHeight":I
    move-object v12, v8

    move/from16 v27, v13

    .end local v13    # "density":F
    .local v27, "density":F
    move/from16 v13, v16

    move-object/from16 v28, v14

    .end local v14    # "requiredSize":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;
    .local v28, "requiredSize":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;
    move-object/from16 v14, v25

    invoke-direct/range {v9 .. v14}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    .line 299
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 297
    .end local v3    # "actualHeight":I
    .end local v25    # "resultMetadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .end local v26    # "actualWidth":I
    .end local v27    # "density":F
    .end local v28    # "requiredSize":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;
    .restart local v9    # "resultMetadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .restart local v10    # "actualWidth":I
    .restart local v12    # "actualHeight":I
    .restart local v13    # "density":F
    .restart local v14    # "requiredSize":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;
    :cond_10
    move-object/from16 v25, v9

    move/from16 v26, v10

    move v3, v12

    move/from16 v27, v13

    move-object/from16 v28, v14

    .line 308
    .end local v9    # "resultMetadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .end local v10    # "actualWidth":I
    .end local v12    # "actualHeight":I
    .end local v13    # "density":F
    .end local v14    # "requiredSize":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;
    .restart local v3    # "actualHeight":I
    .restart local v25    # "resultMetadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .restart local v26    # "actualWidth":I
    .restart local v27    # "density":F
    .restart local v28    # "requiredSize":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;->getY()I

    move-result v0

    if-ge v3, v0, :cond_12

    .line 310
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    .line 312
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    .line 315
    if-nez v2, :cond_11

    .line 316
    const/4 v9, 0x4

    move/from16 v16, v9

    goto :goto_9

    .line 317
    :cond_11
    const/4 v9, 0x7

    move/from16 v16, v9

    :goto_9
    move-object v12, v0

    move-object v14, v11

    move-object v9, v15

    .end local v15    # "bounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .local v9, "bounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    move-object v15, v8

    move-object/from16 v17, v25

    invoke-direct/range {v12 .. v17}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    .line 310
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 321
    .end local v9    # "bounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .restart local v15    # "bounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    :cond_12
    move-object v9, v15

    .end local v15    # "bounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .restart local v9    # "bounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    .line 323
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    .line 326
    if-nez v2, :cond_13

    .line 327
    const/4 v10, 0x5

    move/from16 v16, v10

    goto :goto_a

    .line 328
    :cond_13
    const/16 v10, 0x8

    move/from16 v16, v10

    :goto_a
    move-object v12, v0

    move-object v14, v11

    move-object v15, v8

    move-object/from16 v17, v25

    invoke-direct/range {v12 .. v17}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    .line 321
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 210
    .end local v9    # "bounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .end local v11    # "resultType":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;
    .end local v18    # "hasDelegate":Z
    .end local v19    # "largestDelegateHitRect":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .end local v20    # "hasClickableAncestor":Z
    .end local v21    # "isClippedByAncestor":Z
    .end local v22    # "isAtScrollableEdge":Z
    .end local v23    # "defaultDisplay":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo;
    .end local v24    # "metricsWithoutDecorations":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;
    .end local v25    # "resultMetadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .end local v26    # "actualWidth":I
    .end local v27    # "density":F
    .end local v28    # "requiredSize":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;
    .local v2, "defaultDisplay":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo;
    .local v3, "metricsWithoutDecorations":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;
    .restart local v10    # "actualWidth":I
    .restart local v12    # "actualHeight":I
    .restart local v13    # "density":F
    .restart local v14    # "requiredSize":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;
    .restart local v15    # "bounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    :cond_14
    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move/from16 v26, v10

    move v3, v12

    move/from16 v27, v13

    move-object/from16 v28, v14

    move-object v9, v15

    .line 332
    .end local v2    # "defaultDisplay":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo;
    .end local v3    # "metricsWithoutDecorations":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;
    .end local v8    # "view":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .end local v10    # "actualWidth":I
    .end local v12    # "actualHeight":I
    .end local v13    # "density":F
    .end local v14    # "requiredSize":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;
    .end local v15    # "bounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .restart local v23    # "defaultDisplay":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo;
    .restart local v24    # "metricsWithoutDecorations":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;
    :goto_b
    move-object/from16 v0, p3

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    goto/16 :goto_0

    .line 333
    .end local v23    # "defaultDisplay":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo;
    .end local v24    # "metricsWithoutDecorations":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;
    .restart local v2    # "defaultDisplay":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo;
    .restart local v3    # "metricsWithoutDecorations":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;
    :cond_15
    return-object v1
.end method
