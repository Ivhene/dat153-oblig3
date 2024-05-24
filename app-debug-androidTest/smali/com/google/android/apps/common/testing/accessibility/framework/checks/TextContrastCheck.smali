.class public Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck;
.super Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;
.source "TextContrastCheck.java"


# static fields
.field private static final CHECK_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTRAST_TOLERANCE:D = 0.01

.field public static final KEY_ADDITIONAL_CONTRAST_RATIOS:Ljava/lang/String; = "KEY_ADDITIONAL_CONTRAST_RATIOS"

.field public static final KEY_ADDITIONAL_FOREGROUND_COLORS:Ljava/lang/String; = "KEY_ADDITIONAL_FOREGROUND_COLORS"

.field public static final KEY_BACKGROUND_COLOR:Ljava/lang/String; = "KEY_BACKGROUND_COLOR"

.field public static final KEY_BACKGROUND_OPACITY:Ljava/lang/String; = "KEY_BACKGROUND_OPACITY"

.field public static final KEY_CONTRAST_RATIO:Ljava/lang/String; = "KEY_CONTRAST_RATIO"

.field public static final KEY_CUSTOMIZED_HEURISTIC_CONTRAST_RATIO:Ljava/lang/String; = "KEY_CUSTOMIZED_HEURISTIC_CONTRAST_RATIO"

.field public static final KEY_FOREGROUND_COLOR:Ljava/lang/String; = "KEY_FOREGROUND_COLOR"

.field public static final KEY_IS_AGAINST_SCROLLABLE_EDGE:Ljava/lang/String; = "KEY_IS_AGAINST_SCROLLABLE_EDGE"

.field public static final KEY_IS_POTENTIALLY_OBSCURED:Ljava/lang/String; = "KEY_IS_POTENTIALLY_OBSCURED"

.field public static final KEY_REQUIRED_CONTRAST_RATIO:Ljava/lang/String; = "KEY_REQUIRED_CONTRAST_RATIO"

.field public static final KEY_SCREENSHOT_BOUNDS_STRING:Ljava/lang/String; = "KEY_SCREENSHOT_BOUNDS_STRING"

.field public static final KEY_TEXT_COLOR:Ljava/lang/String; = "KEY_TEXT_COLOR"

.field public static final KEY_TEXT_OPACITY:Ljava/lang/String; = "KEY_TEXT_OPACITY"

.field public static final KEY_TOLERANT_CONTRAST_RATIO:Ljava/lang/String; = "KEY_TOLERANT_CONTRAST_RATIO"

.field public static final KEY_VIEW_BOUNDS_STRING:Ljava/lang/String; = "KEY_VIEW_BOUNDS_STRING"

.field public static final RESULT_ID_BACKGROUND_MUST_BE_OPAQUE:I = 0x7

.field public static final RESULT_ID_COULD_NOT_GET_BACKGROUND_COLOR:I = 0x5

.field public static final RESULT_ID_COULD_NOT_GET_TEXT_COLOR:I = 0x4

.field public static final RESULT_ID_CUSTOMIZED_TEXTVIEW_HEURISTIC_CONTRAST_NOT_SUFFICIENT:I = 0xf

.field public static final RESULT_ID_HEURISTIC_COULD_NOT_GET_SCREENCAPTURE:I = 0x9

.field public static final RESULT_ID_NOT_ENABLED:I = 0xd

.field public static final RESULT_ID_NOT_TEXT_VIEW:I = 0x2

.field public static final RESULT_ID_NOT_VISIBLE:I = 0x1

.field public static final RESULT_ID_SCREENCAPTURE_DATA_HIDDEN:I = 0xe

.field public static final RESULT_ID_SCREENCAPTURE_UNIFORM_COLOR:I = 0x10

.field public static final RESULT_ID_TEXTVIEW_CONTRAST_NOT_SUFFICIENT:I = 0x8

.field public static final RESULT_ID_TEXTVIEW_EMPTY:I = 0x3

.field public static final RESULT_ID_TEXTVIEW_HEURISTIC_CONTRAST_BORDERLINE:I = 0xc

.field public static final RESULT_ID_TEXTVIEW_HEURISTIC_CONTRAST_NOT_SUFFICIENT:I = 0xb

.field public static final RESULT_ID_TEXT_MUST_BE_OPAQUE:I = 0x6

.field public static final RESULT_ID_VIEW_NOT_WITHIN_SCREENCAPTURE:I = 0xa

.field private static final TYPEFACE_BOLD:I = 0x1

.field private static final TYPEFACE_NORMAL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 127
    const-class v0, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck;

    sput-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck;->CHECK_CLASS:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;-><init>()V

    return-void
.end method

.method private static appendMetadataStringsToMessageIfNeeded(Ljava/util/Locale;Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;Ljava/lang/StringBuilder;)V
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "resultMetadata"    # Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .param p2, "builder"    # Ljava/lang/StringBuilder;

    .line 742
    const-string v0, "KEY_IS_POTENTIALLY_OBSCURED"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/16 v2, 0x20

    if-eqz v0, :cond_0

    .line 743
    nop

    .line 744
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 746
    const-string v3, "result_message_addendum_view_potentially_obscured"

    invoke-static {p0, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 745
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    :cond_0
    const-string v0, "KEY_IS_AGAINST_SCROLLABLE_EDGE"

    invoke-interface {p1, v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 749
    nop

    .line 750
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 752
    const-string v1, "result_message_addendum_against_scrollable_edge"

    invoke-static {p0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 751
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    :cond_1
    return-void
.end method

.method private attemptHeavyweightEval(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;)Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;
    .locals 26
    .param p1, "view"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .param p2, "parameters"    # Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;

    .line 494
    move-object/from16 v7, p0

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;->getScreenCapture()Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;

    move-result-object v1

    :goto_0
    move-object v8, v1

    .line 495
    .local v8, "screenCapture":Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;
    if-nez v8, :cond_1

    .line 496
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    sget-object v2, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck;->CHECK_CLASS:Ljava/lang/Class;

    sget-object v3, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->NOT_RUN:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    const/16 v5, 0x9

    const/4 v6, 0x0

    move-object v1, v0

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    return-object v0

    .line 503
    :cond_1
    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    invoke-interface {v8}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;->getWidth()I

    move-result v2

    invoke-interface {v8}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;-><init>(IIII)V

    move-object v9, v1

    .line 504
    .local v9, "screenCaptureBounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getBoundsInScreen()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    move-result-object v1

    .line 505
    .local v1, "viewBounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    invoke-direct/range {p0 .. p1}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck;->getTextCharacterBounds(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    move-result-object v10

    .line 506
    .local v10, "textCharacterBounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    invoke-virtual {v10}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v9, v10}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->contains(Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 508
    move-object v1, v10

    move-object v11, v1

    goto :goto_1

    .line 511
    :cond_2
    move-object v11, v1

    .end local v1    # "viewBounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .local v11, "viewBounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    :goto_1
    invoke-virtual {v11}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v9, v11}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->contains(Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;)Z

    move-result v1

    if-nez v1, :cond_3

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    goto/16 :goto_9

    .line 526
    :cond_3
    invoke-direct {v7, v8, v11}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck;->crop(Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;)Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;

    move-result-object v12

    .line 527
    .local v12, "viewImage":Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;
    nop

    .line 530
    if-nez p2, :cond_4

    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;->getEnableEnhancedContrastEvaluation()Ljava/lang/Boolean;

    move-result-object v1

    .line 528
    :goto_2
    invoke-virtual {v7, v12, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck;->getContrastSwatch(Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;Ljava/lang/Boolean;)Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch;

    move-result-object v13

    .line 531
    .local v13, "contrastSwatch":Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch;
    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;

    invoke-direct {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;-><init>()V

    move-object v6, v1

    .line 532
    .local v6, "resultMetadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isAgainstScrollableEdge()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 533
    const-string v1, "KEY_IS_AGAINST_SCROLLABLE_EDGE"

    invoke-interface {v6, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putBoolean(Ljava/lang/String;Z)V

    .line 535
    :cond_5
    invoke-virtual {v13}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch;->getForegroundColors()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 536
    .local v5, "foreground":I
    invoke-virtual {v13}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch;->getBackgroundColor()I

    move-result v4

    .line 538
    .local v4, "background":I
    if-ne v4, v5, :cond_7

    .line 542
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    sget-object v15, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck;->CHECK_CLASS:Ljava/lang/Class;

    sget-object v16, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->NOT_RUN:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    .line 546
    const/high16 v1, -0x1000000

    if-ne v5, v1, :cond_6

    .line 547
    const/16 v1, 0xe

    move/from16 v18, v1

    goto :goto_3

    .line 548
    :cond_6
    const/16 v1, 0x10

    move/from16 v18, v1

    :goto_3
    move-object v14, v0

    move-object/from16 v17, p1

    move-object/from16 v19, v6

    invoke-direct/range {v14 .. v19}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    .line 542
    return-object v0

    .line 552
    :cond_7
    invoke-virtual {v13}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch;->getForegroundColors()Lcom/google/common/collect/ImmutableList;

    move-result-object v14

    .line 553
    .local v14, "foregroundColors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v13}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch;->getContrastRatios()Lcom/google/common/collect/ImmutableList;

    move-result-object v15

    .line 554
    .local v15, "contrastRatios":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v1

    .line 555
    .local v3, "lowForegroundColors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 558
    .local v1, "lowContrastRatios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    if-nez p2, :cond_8

    const/16 v16, 0x0

    goto :goto_4

    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;->getCustomTextContrastRatio()Ljava/lang/Double;

    move-result-object v16

    .line 559
    .local v16, "customizedHeuristicContrastRatio":Ljava/lang/Double;
    :goto_4
    const-string v0, "KEY_IS_POTENTIALLY_OBSCURED"

    const-wide v18, 0x3f847ae147ae147bL    # 0.01

    if-eqz v16, :cond_d

    .line 560
    const/16 v20, 0x0

    move/from16 v2, v20

    .local v2, "i":I
    :goto_5
    move/from16 v20, v5

    .end local v5    # "foreground":I
    .local v20, "foreground":I
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_a

    .line 561
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v21

    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v23

    sub-double v21, v21, v23

    cmpl-double v5, v21, v18

    if-lez v5, :cond_9

    .line 562
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    :cond_9
    add-int/lit8 v2, v2, 0x1

    move/from16 v5, v20

    goto :goto_5

    .line 566
    .end local v2    # "i":I
    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 567
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewHierarchyElementUtils;->isPotentiallyObscured(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 568
    const/4 v2, 0x1

    invoke-interface {v6, v0, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putBoolean(Ljava/lang/String;Z)V

    .line 570
    :cond_b
    nop

    .line 571
    move-object/from16 v21, v8

    move-object/from16 v22, v9

    .end local v8    # "screenCapture":Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;
    .end local v9    # "screenCaptureBounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .local v21, "screenCapture":Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;
    .local v22, "screenCaptureBounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    .line 570
    const-string v0, "KEY_CUSTOMIZED_HEURISTIC_CONTRAST_RATIO"

    invoke-interface {v6, v0, v8, v9}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putDouble(Ljava/lang/String;D)V

    .line 572
    invoke-direct {v7, v6, v4, v3, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck;->storeColorsAndContrastRatios(Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;ILjava/util/List;Ljava/util/List;)V

    .line 574
    sget-object v2, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->WARNING:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    const/16 v5, 0xf

    move-object/from16 v0, p0

    move-object v8, v1

    .end local v1    # "lowContrastRatios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .local v8, "lowContrastRatios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    move-object v1, v2

    move-object/from16 v2, p1

    move-object v9, v3

    .end local v3    # "lowForegroundColors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v9, "lowForegroundColors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move v3, v5

    move v5, v4

    .end local v4    # "background":I
    .local v5, "background":I
    move-object v4, v6

    move/from16 v25, v5

    .end local v5    # "background":I
    .local v25, "background":I
    move-object/from16 v5, p2

    move-object/from16 v23, v10

    move-object v10, v6

    .end local v6    # "resultMetadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .local v10, "resultMetadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .local v23, "textCharacterBounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck;->resultPossiblyWithImage(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;)Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    move-result-object v0

    return-object v0

    .line 566
    .end local v21    # "screenCapture":Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;
    .end local v22    # "screenCaptureBounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .end local v23    # "textCharacterBounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .end local v25    # "background":I
    .restart local v1    # "lowContrastRatios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v3    # "lowForegroundColors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v4    # "background":I
    .restart local v6    # "resultMetadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .local v8, "screenCapture":Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;
    .local v9, "screenCaptureBounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .local v10, "textCharacterBounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    :cond_c
    move/from16 v25, v4

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    move-object v8, v1

    move-object v9, v3

    move-object v10, v6

    .end local v1    # "lowContrastRatios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v3    # "lowForegroundColors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "background":I
    .end local v6    # "resultMetadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .local v8, "lowContrastRatios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .local v9, "lowForegroundColors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v10, "resultMetadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .restart local v21    # "screenCapture":Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;
    .restart local v22    # "screenCaptureBounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .restart local v23    # "textCharacterBounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .restart local v25    # "background":I
    move-object/from16 v24, v13

    move/from16 v13, v25

    goto/16 :goto_8

    .line 583
    .end local v20    # "foreground":I
    .end local v21    # "screenCapture":Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;
    .end local v22    # "screenCaptureBounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .end local v23    # "textCharacterBounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .end local v25    # "background":I
    .restart local v1    # "lowContrastRatios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v3    # "lowForegroundColors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v4    # "background":I
    .local v5, "foreground":I
    .restart local v6    # "resultMetadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .local v8, "screenCapture":Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;
    .local v9, "screenCaptureBounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .local v10, "textCharacterBounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    :cond_d
    move/from16 v25, v4

    move/from16 v20, v5

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    move-object v8, v1

    move-object v9, v3

    move-object v10, v6

    .end local v1    # "lowContrastRatios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v3    # "lowForegroundColors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "background":I
    .end local v5    # "foreground":I
    .end local v6    # "resultMetadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .local v8, "lowContrastRatios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .local v9, "lowForegroundColors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v10, "resultMetadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .restart local v20    # "foreground":I
    .restart local v21    # "screenCapture":Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;
    .restart local v22    # "screenCaptureBounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .restart local v23    # "textCharacterBounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .restart local v25    # "background":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    if-ge v1, v2, :cond_f

    .line 584
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    sub-double/2addr v3, v5

    cmpl-double v2, v3, v18

    if-lez v2, :cond_e

    .line 586
    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 590
    .end local v1    # "i":I
    :cond_f
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const-string v2, "KEY_REQUIRED_CONTRAST_RATIO"

    if-nez v1, :cond_11

    .line 591
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewHierarchyElementUtils;->isPotentiallyObscured(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 592
    const/4 v1, 0x1

    invoke-interface {v10, v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putBoolean(Ljava/lang/String;Z)V

    .line 594
    :cond_10
    invoke-interface {v10, v2, v3, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putDouble(Ljava/lang/String;D)V

    .line 596
    move/from16 v6, v25

    .end local v25    # "background":I
    .local v6, "background":I
    invoke-direct {v7, v10, v6, v9, v8}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck;->storeColorsAndContrastRatios(Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;ILjava/util/List;Ljava/util/List;)V

    .line 598
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->WARNING:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    const/16 v3, 0xb

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object v4, v10

    move-object/from16 v5, p2

    move-object/from16 v24, v13

    move v13, v6

    .end local v6    # "background":I
    .local v13, "background":I
    .local v24, "contrastSwatch":Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch;
    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck;->resultPossiblyWithImage(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;)Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    move-result-object v0

    return-object v0

    .line 606
    .end local v24    # "contrastSwatch":Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch;
    .local v13, "contrastSwatch":Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch;
    .restart local v25    # "background":I
    :cond_11
    move-object/from16 v24, v13

    move/from16 v13, v25

    .end local v25    # "background":I
    .local v13, "background":I
    .restart local v24    # "contrastSwatch":Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v5

    const-wide/high16 v3, 0x4012000000000000L    # 4.5

    if-ge v1, v5, :cond_13

    .line 607
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    sub-double/2addr v3, v5

    cmpl-double v3, v3, v18

    if-lez v3, :cond_12

    .line 609
    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    :cond_12
    add-int/lit8 v1, v1, 0x1

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    goto :goto_7

    .line 613
    .end local v1    # "i":I
    :cond_13
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    .line 614
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewHierarchyElementUtils;->isPotentiallyObscured(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 615
    const/4 v1, 0x1

    invoke-interface {v10, v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putBoolean(Ljava/lang/String;Z)V

    .line 617
    :cond_14
    invoke-interface {v10, v2, v3, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putDouble(Ljava/lang/String;D)V

    .line 619
    const-string v0, "KEY_TOLERANT_CONTRAST_RATIO"

    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    invoke-interface {v10, v0, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putDouble(Ljava/lang/String;D)V

    .line 621
    invoke-direct {v7, v10, v13, v9, v8}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck;->storeColorsAndContrastRatios(Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;ILjava/util/List;Ljava/util/List;)V

    .line 623
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->WARNING:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    const/16 v3, 0xc

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object v4, v10

    move-object/from16 v5, p2

    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck;->resultPossiblyWithImage(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;)Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    move-result-object v0

    return-object v0

    .line 635
    :cond_15
    :goto_8
    const/4 v0, 0x0

    return-object v0

    .line 511
    .end local v12    # "viewImage":Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;
    .end local v13    # "background":I
    .end local v14    # "foregroundColors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v15    # "contrastRatios":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v16    # "customizedHeuristicContrastRatio":Ljava/lang/Double;
    .end local v20    # "foreground":I
    .end local v21    # "screenCapture":Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;
    .end local v22    # "screenCaptureBounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .end local v23    # "textCharacterBounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .end local v24    # "contrastSwatch":Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch;
    .local v8, "screenCapture":Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;
    .local v9, "screenCaptureBounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .local v10, "textCharacterBounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    :cond_16
    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    .line 513
    .end local v8    # "screenCapture":Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;
    .end local v9    # "screenCaptureBounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .end local v10    # "textCharacterBounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .restart local v21    # "screenCapture":Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;
    .restart local v22    # "screenCaptureBounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .restart local v23    # "textCharacterBounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    :goto_9
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;

    invoke-direct {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;-><init>()V

    .line 514
    .local v0, "resultMetadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    const-string v1, "KEY_VIEW_BOUNDS_STRING"

    invoke-virtual {v11}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const-string v1, "KEY_SCREENSHOT_BOUNDS_STRING"

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    new-instance v8, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    sget-object v2, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck;->CHECK_CLASS:Ljava/lang/Class;

    sget-object v3, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->NOT_RUN:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    const/16 v5, 0xa

    move-object v1, v8

    move-object/from16 v4, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    return-object v8
.end method

.method private attemptLightweightEval(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;
    .locals 16
    .param p1, "view"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 412
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck;->getForegroundColor(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Ljava/lang/Integer;

    move-result-object v0

    .line 413
    .local v0, "textColor":Ljava/lang/Integer;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getBackgroundDrawableColor()Ljava/lang/Integer;

    move-result-object v1

    .line 414
    .local v1, "backgroundDrawableColor":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 415
    new-instance v8, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    sget-object v3, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck;->CHECK_CLASS:Ljava/lang/Class;

    sget-object v4, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->NOT_RUN:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v8

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    return-object v8

    .line 423
    :cond_0
    if-nez v1, :cond_1

    .line 424
    new-instance v2, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    sget-object v10, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck;->CHECK_CLASS:Ljava/lang/Class;

    sget-object v11, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->NOT_RUN:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    const/4 v13, 0x5

    const/4 v14, 0x0

    move-object v9, v2

    move-object/from16 v12, p1

    invoke-direct/range {v9 .. v14}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    return-object v2

    .line 432
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Color;->alpha(I)I

    move-result v2

    .line 433
    .local v2, "textAlpha":I
    const/high16 v3, 0x42c80000    # 100.0f

    const/high16 v4, 0x437f0000    # 255.0f

    const/16 v5, 0xff

    if-ge v2, v5, :cond_2

    .line 434
    new-instance v5, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;

    invoke-direct {v5}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;-><init>()V

    .line 435
    .local v5, "resultMetadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    int-to-float v6, v2

    div-float/2addr v6, v4

    mul-float/2addr v6, v3

    const-string v3, "KEY_TEXT_OPACITY"

    invoke-interface {v5, v3, v6}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putFloat(Ljava/lang/String;F)V

    .line 437
    new-instance v3, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    sget-object v7, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck;->CHECK_CLASS:Ljava/lang/Class;

    sget-object v8, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->NOT_RUN:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    const/4 v10, 0x6

    move-object v6, v3

    move-object/from16 v9, p1

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    return-object v3

    .line 445
    .end local v5    # "resultMetadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Color;->alpha(I)I

    move-result v6

    .line 446
    .local v6, "backgroundAlpha":I
    if-ge v6, v5, :cond_3

    .line 447
    new-instance v5, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;

    invoke-direct {v5}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;-><init>()V

    .line 448
    .restart local v5    # "resultMetadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    int-to-float v7, v6

    div-float/2addr v7, v4

    mul-float/2addr v7, v3

    const-string v3, "KEY_BACKGROUND_OPACITY"

    invoke-interface {v5, v3, v7}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putFloat(Ljava/lang/String;F)V

    .line 450
    new-instance v3, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    sget-object v8, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck;->CHECK_CLASS:Ljava/lang/Class;

    sget-object v9, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->NOT_RUN:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    const/4 v11, 0x7

    move-object v7, v3

    move-object/from16 v10, p1

    move-object v12, v5

    invoke-direct/range {v7 .. v12}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    return-object v3

    .line 458
    .end local v5    # "resultMetadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastUtils;->calculateContrastRatio(II)D

    move-result-wide v3

    .line 460
    .local v3, "contrastRatio":D
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck;->isLargeText(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 461
    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    goto :goto_0

    .line 462
    :cond_4
    const-wide/high16 v7, 0x4012000000000000L    # 4.5

    :goto_0
    nop

    .line 463
    .local v7, "requiredContrast":D
    sub-double v9, v7, v3

    const-wide v11, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v5, v9, v11

    if-lez v5, :cond_5

    .line 464
    new-instance v5, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;

    invoke-direct {v5}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;-><init>()V

    .line 465
    .restart local v5    # "resultMetadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    const-string v9, "KEY_REQUIRED_CONTRAST_RATIO"

    invoke-interface {v5, v9, v7, v8}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putDouble(Ljava/lang/String;D)V

    .line 466
    const-string v9, "KEY_CONTRAST_RATIO"

    invoke-interface {v5, v9, v3, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putDouble(Ljava/lang/String;D)V

    .line 467
    const-string v9, "KEY_TEXT_COLOR"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v5, v9, v10}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putInt(Ljava/lang/String;I)V

    .line 468
    const-string v9, "KEY_BACKGROUND_COLOR"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v5, v9, v10}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putInt(Ljava/lang/String;I)V

    .line 470
    new-instance v15, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    sget-object v10, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck;->CHECK_CLASS:Ljava/lang/Class;

    sget-object v11, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->ERROR:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    const/16 v13, 0x8

    move-object v9, v15

    move-object/from16 v12, p1

    move-object v14, v5

    invoke-direct/range {v9 .. v14}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    return-object v15

    .line 479
    .end local v5    # "resultMetadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    :cond_5
    const/4 v5, 0x0

    return-object v5
.end method

.method private crop(Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;)Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;
    .locals 4
    .param p1, "screenCapture"    # Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;
    .param p2, "viewBounds"    # Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    .line 664
    nop

    .line 665
    invoke-virtual {p2}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getTop()I

    move-result v1

    invoke-virtual {p2}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getHeight()I

    move-result v3

    .line 664
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;->crop(IIII)Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;

    move-result-object v0

    return-object v0
.end method

.method private static generateMessageForResultId(Ljava/util/Locale;I)Ljava/lang/String;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "resultId"    # I

    .line 377
    packed-switch p1, :pswitch_data_0

    .line 397
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 395
    :pswitch_1
    const-string v0, "result_message_screencapture_uniform_color"

    invoke-static {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 393
    :pswitch_2
    const-string v0, "result_message_screencapture_data_hidden"

    invoke-static {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 383
    :pswitch_3
    const-string v0, "result_message_not_enabled"

    invoke-static {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 391
    :pswitch_4
    const-string v0, "result_message_no_screencapture"

    invoke-static {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 389
    :pswitch_5
    const-string v0, "result_message_could_not_get_background_color"

    invoke-static {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 387
    :pswitch_6
    const-string v0, "result_message_could_not_get_text_color"

    invoke-static {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 385
    :pswitch_7
    const-string v0, "result_message_textview_empty"

    invoke-static {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 381
    :pswitch_8
    const-string v0, "result_message_not_text_view"

    invoke-static {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 379
    :pswitch_9
    const-string v0, "result_message_not_visible"

    invoke-static {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getForegroundColor(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Ljava/lang/Integer;
    .locals 1
    .param p0, "view"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 777
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getText()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getHintTextColor()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getTextColor()Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getTextCharacterBounds(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .locals 8
    .param p1, "view"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 645
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getTextCharacterLocations()Ljava/util/List;

    move-result-object v0

    .line 646
    .local v0, "characterLocations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 647
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->EMPTY:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    return-object v1

    .line 650
    :cond_0
    const v1, 0x7fffffff

    .line 651
    .local v1, "minLeft":I
    const v2, 0x7fffffff

    .line 652
    .local v2, "minTop":I
    const/high16 v3, -0x80000000

    .line 653
    .local v3, "maxRight":I
    const/high16 v4, -0x80000000

    .line 654
    .local v4, "maxBottom":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    .line 655
    .local v6, "rect":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    invoke-virtual {v6}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getLeft()I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 656
    invoke-virtual {v6}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getTop()I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 657
    invoke-virtual {v6}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getRight()I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 658
    invoke-virtual {v6}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getBottom()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 659
    .end local v6    # "rect":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    goto :goto_0

    .line 660
    :cond_1
    new-instance v5, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;-><init>(IIII)V

    return-object v5
.end method

.method private static isLargeText(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z
    .locals 6
    .param p0, "view"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 757
    nop

    .line 758
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getWindow()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;

    move-result-object v0

    .line 759
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->getAccessibilityHierarchy()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;

    move-result-object v0

    .line 760
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;->getDeviceState()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceState;

    move-result-object v0

    .line 761
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DeviceState;->getDefaultDisplayInfo()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo;

    move-result-object v0

    .line 762
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo;->getMetricsWithoutDecoration()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;

    move-result-object v0

    .line 763
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/DisplayInfo$Metrics;->getScaledDensity()F

    move-result v0

    .line 764
    .local v0, "density":F
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getTextSize()Ljava/lang/Float;

    move-result-object v1

    .line 765
    .local v1, "textSize":Ljava/lang/Float;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float/2addr v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 766
    .local v2, "dpSize":F
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getTypefaceStyle()Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getTypefaceStyle()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v4

    .line 767
    .local v3, "style":I
    :goto_1
    const/high16 v5, 0x41900000    # 18.0f

    cmpl-float v5, v2, v5

    if-gez v5, :cond_2

    const/high16 v5, 0x41600000    # 14.0f

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_3

    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_3

    :cond_2
    const/4 v4, 0x1

    :cond_3
    return v4
.end method

.method static synthetic lambda$storeContrastRatios$1(Ljava/lang/Double;)Ljava/lang/String;
    .locals 1
    .param p0, "ratio"    # Ljava/lang/Double;

    .line 728
    invoke-virtual {p0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$storeForegroundColors$0(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .param p0, "integer"    # Ljava/lang/Integer;

    .line 713
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private resultPossiblyWithImage(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;)Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;
    .locals 9
    .param p1, "type"    # Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;
    .param p2, "view"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .param p3, "resultId"    # I
    .param p4, "metadata"    # Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .param p5, "parameters"    # Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;
    .param p6, "viewImage"    # Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;

    .line 680
    if-eqz p6, :cond_0

    if-eqz p5, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 682
    invoke-virtual {p5}, Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;->getSaveViewImages()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResultWithImage;

    sget-object v2, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck;->CHECK_CLASS:Ljava/lang/Class;

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResultWithImage;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;)V

    return-object v0

    .line 686
    :cond_0
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    sget-object v4, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck;->CHECK_CLASS:Ljava/lang/Class;

    move-object v3, v0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    return-object v0
.end method

.method private storeColorsAndContrastRatios(Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;ILjava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "resultMetadata"    # Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .param p2, "background"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 696
    .local p3, "foregroundColors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p4, "contrastRatios":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    const-string v0, "KEY_BACKGROUND_COLOR"

    invoke-interface {p1, v0, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putInt(Ljava/lang/String;I)V

    .line 697
    invoke-direct {p0, p1, p3}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck;->storeForegroundColors(Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;Ljava/util/List;)V

    .line 698
    invoke-direct {p0, p1, p4}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck;->storeContrastRatios(Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;Ljava/util/List;)V

    .line 699
    return-void
.end method

.method private storeContrastRatios(Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;Ljava/util/List;)V
    .locals 3
    .param p1, "resultMetadata"    # Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 723
    .local p2, "contrastRatios":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-string v2, "KEY_CONTRAST_RATIO"

    invoke-interface {p1, v2, v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putDouble(Ljava/lang/String;D)V

    .line 724
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 725
    nop

    .line 728
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck$$ExternalSyntheticLambda0;-><init>()V

    .line 727
    invoke-static {v0, v1}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v0

    .line 725
    const-string v1, "KEY_ADDITIONAL_CONTRAST_RATIOS"

    invoke-interface {p1, v1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putStringList(Ljava/lang/String;Ljava/util/List;)V

    .line 730
    :cond_0
    return-void
.end method

.method private storeForegroundColors(Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;Ljava/util/List;)V
    .locals 2
    .param p1, "resultMetadata"    # Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 708
    .local p2, "foregroundColors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "KEY_FOREGROUND_COLOR"

    invoke-interface {p1, v1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putInt(Ljava/lang/String;I)V

    .line 709
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 710
    nop

    .line 713
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck$$ExternalSyntheticLambda1;-><init>()V

    .line 712
    invoke-static {v0, v1}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v0

    .line 710
    const-string v1, "KEY_ADDITIONAL_FOREGROUND_COLORS"

    invoke-interface {p1, v1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putStringList(Ljava/lang/String;Ljava/util/List;)V

    .line 715
    :cond_0
    return-void
.end method


# virtual methods
.method public getCategory()Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;
    .locals 1

    .line 142
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;->LOW_CONTRAST:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;

    return-object v0
.end method

.method getContrastSwatch(Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;Ljava/lang/Boolean;)Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch;
    .locals 2
    .param p1, "image"    # Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;
    .param p2, "enableEnhancedContrastEvaluation"    # Ljava/lang/Boolean;

    .line 641
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;Z)V

    return-object v0
.end method

.method protected getHelpTopic()Ljava/lang/String;
    .locals 1

    .line 137
    const-string v0, "7158390"

    return-object v0
.end method

.method public getMessageForResultData(Ljava/util/Locale;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)Ljava/lang/String;
    .locals 11
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "resultId"    # I
    .param p3, "metadata"    # Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    .line 222
    invoke-static {p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck;->generateMessageForResultId(Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "generated":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 224
    return-object v0

    .line 228
    :cond_0
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v1, "result_message_textview_heuristic_contrast_not_sufficient"

    const-string v2, "result_message_addendum_opacity_description"

    const-string v3, " "

    const-string v4, "KEY_FOREGROUND_COLOR"

    const-string v5, "KEY_REQUIRED_CONTRAST_RATIO"

    const-string v6, "KEY_BACKGROUND_COLOR"

    const-string v7, "KEY_CONTRAST_RATIO"

    const v8, 0xffffff

    packed-switch p2, :pswitch_data_0

    .line 319
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unsupported result id"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 305
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 309
    const-string v2, "result_message_textview_heuristic_customized_contrast_not_sufficient"

    invoke-static {p1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 312
    invoke-interface {p3, v7}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 313
    invoke-interface {p3, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getInt(Ljava/lang/String;)I

    move-result v4

    and-int/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 314
    invoke-interface {p3, v6}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getInt(Ljava/lang/String;)I

    move-result v5

    and-int/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 315
    const-string v6, "KEY_CUSTOMIZED_HEURISTIC_CONTRAST_RATIO"

    invoke-interface {p3, v6}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v3

    .line 307
    invoke-static {p1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 316
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-static {p1, p3, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck;->appendMetadataStringsToMessageIfNeeded(Ljava/util/Locale;Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;Ljava/lang/StringBuilder;)V

    .line 317
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 290
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 294
    invoke-static {p1, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 296
    invoke-interface {p3, v7}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 297
    invoke-interface {p3, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getInt(Ljava/lang/String;)I

    move-result v4

    and-int/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 298
    invoke-interface {p3, v6}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getInt(Ljava/lang/String;)I

    move-result v6

    and-int/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 299
    invoke-interface {p3, v5}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 300
    const-string v7, "KEY_TOLERANT_CONTRAST_RATIO"

    invoke-interface {p3, v7}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    filled-new-array {v3, v4, v6, v5, v7}, [Ljava/lang/Object;

    move-result-object v3

    .line 292
    invoke-static {p1, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 302
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    invoke-static {p1, p3, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck;->appendMetadataStringsToMessageIfNeeded(Ljava/util/Locale;Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;Ljava/lang/StringBuilder;)V

    .line 303
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 275
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 279
    invoke-static {p1, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 281
    invoke-interface {p3, v7}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 282
    invoke-interface {p3, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getInt(Ljava/lang/String;)I

    move-result v4

    and-int/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 283
    invoke-interface {p3, v6}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getInt(Ljava/lang/String;)I

    move-result v6

    and-int/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 284
    const-wide/high16 v7, 0x4012000000000000L    # 4.5

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    .line 285
    invoke-interface {p3, v5}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    filled-new-array {v3, v4, v6, v7, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 277
    invoke-static {p1, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 287
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    invoke-static {p1, p3, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck;->appendMetadataStringsToMessageIfNeeded(Ljava/util/Locale;Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;Ljava/lang/StringBuilder;)V

    .line 288
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 269
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :pswitch_4
    nop

    .line 271
    const-string v1, "result_message_view_not_within_screencapture"

    invoke-static {p1, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 272
    const-string v2, "KEY_VIEW_BOUNDS_STRING"

    invoke-interface {p3, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 273
    const-string v3, "KEY_SCREENSHOT_BOUNDS_STRING"

    invoke-interface {p3, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 269
    invoke-static {p1, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 256
    :pswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 260
    const-string v2, "result_message_textview_contrast_not_sufficient"

    invoke-static {p1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 262
    invoke-interface {p3, v7}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 263
    const-string v4, "KEY_TEXT_COLOR"

    invoke-interface {p3, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getInt(Ljava/lang/String;)I

    move-result v4

    and-int/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 264
    invoke-interface {p3, v6}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getInt(Ljava/lang/String;)I

    move-result v6

    and-int/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 265
    invoke-interface {p3, v5}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    filled-new-array {v3, v4, v6, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 258
    invoke-static {p1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 266
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    invoke-static {p1, p3, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck;->appendMetadataStringsToMessageIfNeeded(Ljava/util/Locale;Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;Ljava/lang/StringBuilder;)V

    .line 267
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 244
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :pswitch_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    const-string v4, "result_message_background_must_be_opaque"

    invoke-static {p1, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 247
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 251
    invoke-static {p1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 253
    const-string v3, "KEY_BACKGROUND_OPACITY"

    invoke-interface {p3, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 249
    invoke-static {p1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 248
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 254
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 232
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :pswitch_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    const-string v4, "result_message_text_must_be_opaque"

    invoke-static {p1, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 235
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 239
    invoke-static {p1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 241
    const-string v3, "KEY_TEXT_OPACITY"

    invoke-interface {p3, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 237
    invoke-static {p1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 236
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 242
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getSecondaryPriority(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;)Ljava/lang/Double;
    .locals 7
    .param p1, "result"    # Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    .line 356
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getMetadata()Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    move-result-object v0

    .line 357
    .local v0, "metadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getResultId()I

    move-result v1

    const-string v2, "KEY_CONTRAST_RATIO"

    const-wide/16 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    .line 367
    const/4 v1, 0x0

    return-object v1

    .line 364
    :sswitch_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    const-string v5, "KEY_CUSTOMIZED_HEURISTIC_CONTRAST_RATIO"

    invoke-interface {v1, v5, v3, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getDouble(Ljava/lang/String;D)D

    move-result-wide v5

    .line 365
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getDouble(Ljava/lang/String;D)D

    move-result-wide v1

    sub-double/2addr v5, v1

    .line 364
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 361
    :sswitch_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    const-string v5, "KEY_REQUIRED_CONTRAST_RATIO"

    invoke-interface {v1, v5, v3, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getDouble(Ljava/lang/String;D)D

    move-result-wide v5

    .line 362
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getDouble(Ljava/lang/String;D)D

    move-result-wide v1

    sub-double/2addr v5, v1

    .line 361
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0xb -> :sswitch_1
        0xc -> :sswitch_1
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method public getShortMessageForResultData(Ljava/util/Locale;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)Ljava/lang/String;
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "resultId"    # I
    .param p3, "metadata"    # Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    .line 326
    invoke-static {p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck;->generateMessageForResultId(Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "generated":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 328
    return-object v0

    .line 331
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 344
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unsupported result id"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 337
    :pswitch_1
    const-string v1, "result_message_no_screencapture"

    invoke-static {p1, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 342
    :pswitch_2
    const-string v1, "result_message_brief_text_contrast_not_sufficient"

    invoke-static {p1, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 335
    :pswitch_3
    const-string v1, "result_message_background_must_be_opaque"

    invoke-static {p1, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 333
    :pswitch_4
    const-string v1, "result_message_text_must_be_opaque"

    invoke-static {p1, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getTitleMessage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 373
    const-string v0, "check_title_text_contrast"

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

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;>;"
    invoke-static {p2, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck;->getElementsToEvaluate(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;)Ljava/util/List;

    move-result-object v1

    .line 152
    .local v1, "viewsToEval":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 153
    .local v3, "view":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isVisibleToUser()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 154
    new-instance v10, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    sget-object v5, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck;->CHECK_CLASS:Ljava/lang/Class;

    sget-object v6, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->NOT_RUN:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, v10

    move-object v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    goto :goto_0

    .line 164
    :cond_0
    const-string v4, "android.widget.TextView"

    invoke-virtual {v3, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->checkInstanceOf(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 165
    const-string v4, "android.widget.Switch"

    invoke-virtual {v3, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->checkInstanceOf(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 166
    invoke-virtual {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getTextCharacterLocations()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 179
    :cond_1
    invoke-virtual {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getText()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getHintText()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 180
    new-instance v10, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    sget-object v5, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck;->CHECK_CLASS:Ljava/lang/Class;

    sget-object v6, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->NOT_RUN:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-object v4, v10

    move-object v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    goto :goto_0

    .line 190
    :cond_2
    invoke-virtual {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 191
    new-instance v10, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    sget-object v5, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck;->CHECK_CLASS:Ljava/lang/Class;

    sget-object v6, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->NOT_RUN:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    const/16 v8, 0xd

    const/4 v9, 0x0

    move-object v4, v10

    move-object v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    goto/16 :goto_0

    .line 201
    :cond_3
    invoke-direct {p0, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck;->attemptLightweightEval(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    move-result-object v4

    .line 202
    .local v4, "lightweightResult":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;
    if-eqz v4, :cond_4

    .line 203
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    invoke-virtual {v4}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getType()Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    move-result-object v5

    sget-object v6, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->NOT_RUN:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    if-ne v5, v6, :cond_4

    .line 206
    nop

    .line 207
    invoke-direct {p0, v3, p3}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck;->attemptHeavyweightEval(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;)Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    move-result-object v5

    .line 208
    .local v5, "heavyweightResult":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;
    if-eqz v5, :cond_4

    .line 210
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    .end local v3    # "view":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .end local v4    # "lightweightResult":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;
    .end local v5    # "heavyweightResult":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;
    :cond_4
    goto/16 :goto_0

    .line 169
    .restart local v3    # "view":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    :cond_5
    :goto_1
    new-instance v10, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    sget-object v5, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck;->CHECK_CLASS:Ljava/lang/Class;

    sget-object v6, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->NOT_RUN:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v4, v10

    move-object v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    goto/16 :goto_0

    .line 216
    .end local v3    # "view":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    :cond_6
    return-object v0
.end method
