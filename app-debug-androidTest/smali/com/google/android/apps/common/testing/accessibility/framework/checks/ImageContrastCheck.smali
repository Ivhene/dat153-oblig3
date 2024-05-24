.class public Lcom/google/android/apps/common/testing/accessibility/framework/checks/ImageContrastCheck;
.super Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;
.source "ImageContrastCheck.java"


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

.field public static final KEY_CONTRAST_RATIO:Ljava/lang/String; = "KEY_CONTRAST_RATIO"

.field public static final KEY_CUSTOMIZED_HEURISTIC_CONTRAST_RATIO:Ljava/lang/String; = "KEY_CUSTOMIZED_HEURISTIC_CONTRAST_RATIO"

.field public static final KEY_FOREGROUND_COLOR:Ljava/lang/String; = "KEY_FOREGROUND_COLOR"

.field public static final KEY_IS_AGAINST_SCROLLABLE_EDGE:Ljava/lang/String; = "KEY_IS_AGAINST_SCROLLABLE_EDGE"

.field public static final KEY_IS_POTENTIALLY_OBSCURED:Ljava/lang/String; = "KEY_IS_POTENTIALLY_OBSCURED"

.field public static final KEY_SCREENSHOT_BOUNDS_STRING:Ljava/lang/String; = "KEY_SCREENSHOT_BOUNDS_STRING"

.field public static final KEY_VIEW_BOUNDS_STRING:Ljava/lang/String; = "KEY_VIEW_BOUNDS_STRING"

.field public static final RESULT_ID_CUSTOMIZED_IMAGE_CONTRAST_NOT_SUFFICIENT:I = 0x8

.field public static final RESULT_ID_IMAGE_CONTRAST_NOT_SUFFICIENT:I = 0x5

.field public static final RESULT_ID_NOT_ENABLED:I = 0x6

.field public static final RESULT_ID_NOT_IMAGEVIEW:I = 0x2

.field public static final RESULT_ID_NOT_VISIBLE:I = 0x1

.field public static final RESULT_ID_NO_SCREENCAPTURE:I = 0x3

.field public static final RESULT_ID_SCREENCAPTURE_DATA_HIDDEN:I = 0x7

.field public static final RESULT_ID_SCREENCAPTURE_UNIFORM_COLOR:I = 0x9

.field public static final RESULT_ID_VIEW_NOT_WITHIN_SCREENCAPTURE:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 98
    const-class v0, Lcom/google/android/apps/common/testing/accessibility/framework/checks/ImageContrastCheck;

    sput-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/checks/ImageContrastCheck;->CHECK_CLASS:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;-><init>()V

    return-void
.end method

.method private static appendMetadataStringsToMessageIfNeeded(Ljava/util/Locale;Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;Ljava/lang/StringBuilder;)V
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "resultMetadata"    # Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .param p2, "builder"    # Ljava/lang/StringBuilder;

    .line 469
    const-string v0, "KEY_IS_POTENTIALLY_OBSCURED"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/16 v2, 0x20

    if-eqz v0, :cond_0

    .line 470
    nop

    .line 471
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 473
    const-string v3, "result_message_addendum_view_potentially_obscured"

    invoke-static {p0, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 472
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    :cond_0
    const-string v0, "KEY_IS_AGAINST_SCROLLABLE_EDGE"

    invoke-interface {p1, v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    nop

    .line 477
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 479
    const-string v1, "result_message_addendum_against_scrollable_edge"

    invoke-static {p0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 478
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    :cond_1
    return-void
.end method

.method private attemptHeavyweightEval(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;)Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;
    .locals 25
    .param p1, "view"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .param p2, "parameters"    # Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;

    .line 175
    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;->getScreenCapture()Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;

    move-result-object v1

    :goto_0
    move-object v6, v1

    .line 176
    .local v6, "screenCapture":Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;
    if-nez v6, :cond_1

    .line 177
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    sget-object v8, Lcom/google/android/apps/common/testing/accessibility/framework/checks/ImageContrastCheck;->CHECK_CLASS:Ljava/lang/Class;

    sget-object v9, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->NOT_RUN:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    const/4 v11, 0x3

    const/4 v12, 0x0

    move-object v7, v0

    move-object/from16 v10, p1

    invoke-direct/range {v7 .. v12}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    return-object v0

    .line 185
    :cond_1
    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    invoke-interface {v6}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;->getWidth()I

    move-result v2

    invoke-interface {v6}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;-><init>(IIII)V

    move-object v7, v1

    .line 186
    .local v7, "screenCaptureBounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getBoundsInScreen()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    move-result-object v8

    .line 187
    .local v8, "viewBounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    invoke-virtual {v8}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {v7, v8}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->contains(Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object/from16 v10, p0

    move-object/from16 v21, v6

    goto/16 :goto_7

    .line 201
    :cond_2
    invoke-static {v6, v8}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/ImageContrastCheck;->crop(Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;)Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;

    move-result-object v9

    .line 202
    .local v9, "viewImage":Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;
    nop

    .line 205
    if-nez p2, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;->getEnableEnhancedContrastEvaluation()Ljava/lang/Boolean;

    move-result-object v1

    .line 203
    :goto_1
    move-object/from16 v10, p0

    invoke-virtual {v10, v9, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/ImageContrastCheck;->getContrastSwatch(Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;Ljava/lang/Boolean;)Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch;

    move-result-object v11

    .line 206
    .local v11, "contrastSwatch":Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch;
    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;

    invoke-direct {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;-><init>()V

    move-object v5, v1

    .line 207
    .local v5, "resultMetadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isAgainstScrollableEdge()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 208
    const-string v1, "KEY_IS_AGAINST_SCROLLABLE_EDGE"

    invoke-interface {v5, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putBoolean(Ljava/lang/String;Z)V

    .line 210
    :cond_4
    invoke-virtual {v11}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch;->getForegroundColors()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 211
    .local v4, "foreground":I
    invoke-virtual {v11}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch;->getBackgroundColor()I

    move-result v3

    .line 213
    .local v3, "background":I
    if-ne v3, v4, :cond_6

    .line 217
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    sget-object v13, Lcom/google/android/apps/common/testing/accessibility/framework/checks/ImageContrastCheck;->CHECK_CLASS:Ljava/lang/Class;

    sget-object v14, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->NOT_RUN:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    .line 221
    const/high16 v1, -0x1000000

    if-ne v4, v1, :cond_5

    .line 222
    const/4 v1, 0x7

    move/from16 v16, v1

    goto :goto_2

    .line 223
    :cond_5
    const/16 v1, 0x9

    move/from16 v16, v1

    :goto_2
    move-object v12, v0

    move-object/from16 v15, p1

    move-object/from16 v17, v5

    invoke-direct/range {v12 .. v17}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    .line 217
    return-object v0

    .line 227
    :cond_6
    invoke-virtual {v11}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch;->getForegroundColors()Lcom/google/common/collect/ImmutableList;

    move-result-object v12

    .line 228
    .local v12, "foregroundColors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v11}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch;->getContrastRatios()Lcom/google/common/collect/ImmutableList;

    move-result-object v13

    .line 229
    .local v13, "contrastRatios":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v1

    .line 230
    .local v14, "lowForegroundColors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v1

    .line 235
    .local v15, "lowContrastRatios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    if-nez p2, :cond_7

    const/4 v1, 0x0

    goto :goto_3

    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;->getCustomImageContrastRatio()Ljava/lang/Double;

    move-result-object v1

    :goto_3
    move-object/from16 v16, v1

    .line 236
    .local v16, "customizedHeuristicContrastRatio":Ljava/lang/Double;
    const-string v1, "KEY_IS_POTENTIALLY_OBSCURED"

    const-wide v17, 0x3f847ae147ae147bL    # 0.01

    if-eqz v16, :cond_c

    .line 238
    const/16 v19, 0x0

    move/from16 v0, v19

    .local v0, "i":I
    :goto_4
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_9

    .line 239
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    sub-double v20, v20, v22

    cmpl-double v2, v20, v17

    if-lez v2, :cond_8

    .line 240
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_8
    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    goto :goto_4

    .line 244
    .end local v0    # "i":I
    :cond_9
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 245
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewHierarchyElementUtils;->isPotentiallyObscured(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 246
    const/4 v0, 0x1

    invoke-interface {v5, v1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putBoolean(Ljava/lang/String;Z)V

    .line 248
    :cond_a
    nop

    .line 249
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 248
    const-string v2, "KEY_CUSTOMIZED_HEURISTIC_CONTRAST_RATIO"

    invoke-interface {v5, v2, v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putDouble(Ljava/lang/String;D)V

    .line 250
    invoke-static {v5, v3, v14, v15}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/ImageContrastCheck;->storeColorsAndContrastRatios(Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;ILjava/util/List;Ljava/util/List;)V

    .line 252
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->WARNING:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    const/16 v2, 0x8

    move-object/from16 v1, p1

    move/from16 v24, v3

    .end local v3    # "background":I
    .local v24, "background":I
    move-object v3, v5

    move/from16 v20, v4

    .end local v4    # "foreground":I
    .local v20, "foreground":I
    move-object/from16 v4, p2

    move-object/from16 v21, v6

    move-object v6, v5

    .end local v5    # "resultMetadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .local v6, "resultMetadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .local v21, "screenCapture":Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;
    move-object v5, v9

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/ImageContrastCheck;->resultPossiblyWithImage(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;)Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    move-result-object v0

    return-object v0

    .line 244
    .end local v20    # "foreground":I
    .end local v21    # "screenCapture":Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;
    .end local v24    # "background":I
    .restart local v3    # "background":I
    .restart local v4    # "foreground":I
    .restart local v5    # "resultMetadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .local v6, "screenCapture":Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;
    :cond_b
    move/from16 v24, v3

    move/from16 v20, v4

    move-object/from16 v21, v6

    move-object v6, v5

    .end local v3    # "background":I
    .end local v4    # "foreground":I
    .end local v5    # "resultMetadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .local v6, "resultMetadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .restart local v20    # "foreground":I
    .restart local v21    # "screenCapture":Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;
    .restart local v24    # "background":I
    move/from16 v17, v24

    goto :goto_6

    .line 261
    .end local v20    # "foreground":I
    .end local v21    # "screenCapture":Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;
    .end local v24    # "background":I
    .restart local v3    # "background":I
    .restart local v4    # "foreground":I
    .restart local v5    # "resultMetadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .local v6, "screenCapture":Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;
    :cond_c
    move/from16 v24, v3

    move/from16 v20, v4

    move-object/from16 v21, v6

    move-object v6, v5

    .end local v3    # "background":I
    .end local v4    # "foreground":I
    .end local v5    # "resultMetadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .local v6, "resultMetadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .restart local v20    # "foreground":I
    .restart local v21    # "screenCapture":Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;
    .restart local v24    # "background":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_e

    .line 262
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    sub-double/2addr v4, v2

    cmpl-double v2, v4, v17

    if-lez v2, :cond_d

    .line 264
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 268
    .end local v0    # "i":I
    :cond_e
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 269
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewHierarchyElementUtils;->isPotentiallyObscured(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 270
    const/4 v0, 0x1

    invoke-interface {v6, v1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putBoolean(Ljava/lang/String;Z)V

    .line 272
    :cond_f
    move/from16 v5, v24

    .end local v24    # "background":I
    .local v5, "background":I
    invoke-static {v6, v5, v14, v15}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/ImageContrastCheck;->storeColorsAndContrastRatios(Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;ILjava/util/List;Ljava/util/List;)V

    .line 274
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->WARNING:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    const/4 v2, 0x5

    move-object/from16 v1, p1

    move-object v3, v6

    move-object/from16 v4, p2

    move/from16 v17, v5

    .end local v5    # "background":I
    .local v17, "background":I
    move-object v5, v9

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/ImageContrastCheck;->resultPossiblyWithImage(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;)Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    move-result-object v0

    return-object v0

    .line 268
    .end local v17    # "background":I
    .restart local v24    # "background":I
    :cond_10
    move/from16 v17, v24

    .line 283
    .end local v24    # "background":I
    .restart local v17    # "background":I
    :goto_6
    const/4 v0, 0x0

    return-object v0

    .line 187
    .end local v9    # "viewImage":Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;
    .end local v11    # "contrastSwatch":Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch;
    .end local v12    # "foregroundColors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v13    # "contrastRatios":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v14    # "lowForegroundColors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v15    # "lowContrastRatios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v16    # "customizedHeuristicContrastRatio":Ljava/lang/Double;
    .end local v17    # "background":I
    .end local v20    # "foreground":I
    .end local v21    # "screenCapture":Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;
    .local v6, "screenCapture":Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;
    :cond_11
    move-object/from16 v10, p0

    move-object/from16 v21, v6

    .line 189
    .end local v6    # "screenCapture":Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;
    .restart local v21    # "screenCapture":Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;
    :goto_7
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;

    invoke-direct {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;-><init>()V

    .line 190
    .local v0, "resultMetadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    const-string v1, "KEY_VIEW_BOUNDS_STRING"

    invoke-virtual {v8}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v1, "KEY_SCREENSHOT_BOUNDS_STRING"

    invoke-virtual {v7}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance v9, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    sget-object v2, Lcom/google/android/apps/common/testing/accessibility/framework/checks/ImageContrastCheck;->CHECK_CLASS:Ljava/lang/Class;

    sget-object v3, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->NOT_RUN:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    const/4 v5, 0x4

    move-object v1, v9

    move-object/from16 v4, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    return-object v9
.end method

.method private static crop(Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;)Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;
    .locals 4
    .param p0, "screenCapture"    # Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;
    .param p1, "viewBounds"    # Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    .line 390
    nop

    .line 391
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getTop()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getHeight()I

    move-result v3

    .line 390
    invoke-interface {p0, v0, v1, v2, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;->crop(IIII)Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;

    move-result-object v0

    return-object v0
.end method

.method private static generateMessageForResultId(Ljava/util/Locale;I)Ljava/lang/String;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "resultId"    # I

    .line 484
    packed-switch p1, :pswitch_data_0

    .line 498
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 496
    :pswitch_1
    const-string v0, "result_message_screencapture_uniform_color"

    invoke-static {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 494
    :pswitch_2
    const-string v0, "result_message_screencapture_data_hidden"

    invoke-static {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 490
    :pswitch_3
    const-string v0, "result_message_not_enabled"

    invoke-static {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 492
    :pswitch_4
    const-string v0, "result_message_no_screencapture"

    invoke-static {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 488
    :pswitch_5
    const-string v0, "result_message_not_imageview"

    invoke-static {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 486
    :pswitch_6
    const-string v0, "result_message_not_visible"

    invoke-static {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic lambda$storeContrastRatios$1(Ljava/lang/Double;)Ljava/lang/String;
    .locals 1
    .param p0, "ratio"    # Ljava/lang/Double;

    .line 455
    invoke-virtual {p0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$storeForegroundColors$0(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .param p0, "integer"    # Ljava/lang/Integer;

    .line 439
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static resultPossiblyWithImage(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;)Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;
    .locals 9
    .param p0, "type"    # Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;
    .param p1, "view"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .param p2, "resultId"    # I
    .param p3, "metadata"    # Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .param p4, "parameters"    # Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;
    .param p5, "viewImage"    # Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;

    .line 406
    if-eqz p5, :cond_0

    if-eqz p4, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 408
    invoke-virtual {p4}, Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;->getSaveViewImages()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResultWithImage;

    sget-object v2, Lcom/google/android/apps/common/testing/accessibility/framework/checks/ImageContrastCheck;->CHECK_CLASS:Ljava/lang/Class;

    move-object v1, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResultWithImage;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;)V

    return-object v0

    .line 412
    :cond_0
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    sget-object v4, Lcom/google/android/apps/common/testing/accessibility/framework/checks/ImageContrastCheck;->CHECK_CLASS:Ljava/lang/Class;

    move-object v3, v0

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    return-object v0
.end method

.method private static storeColorsAndContrastRatios(Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;ILjava/util/List;Ljava/util/List;)V
    .locals 1
    .param p0, "resultMetadata"    # Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .param p1, "background"    # I
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

    .line 422
    .local p2, "foregroundColors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, "contrastRatios":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    const-string v0, "KEY_BACKGROUND_COLOR"

    invoke-interface {p0, v0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putInt(Ljava/lang/String;I)V

    .line 423
    invoke-static {p0, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/ImageContrastCheck;->storeForegroundColors(Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;Ljava/util/List;)V

    .line 424
    invoke-static {p0, p3}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/ImageContrastCheck;->storeContrastRatios(Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;Ljava/util/List;)V

    .line 425
    return-void
.end method

.method private static storeContrastRatios(Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;Ljava/util/List;)V
    .locals 3
    .param p0, "resultMetadata"    # Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 450
    .local p1, "contrastRatios":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-string v2, "KEY_CONTRAST_RATIO"

    invoke-interface {p0, v2, v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putDouble(Ljava/lang/String;D)V

    .line 451
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 452
    nop

    .line 455
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/checks/ImageContrastCheck$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/ImageContrastCheck$$ExternalSyntheticLambda0;-><init>()V

    .line 454
    invoke-static {v0, v1}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v0

    .line 452
    const-string v1, "KEY_ADDITIONAL_CONTRAST_RATIOS"

    invoke-interface {p0, v1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putStringList(Ljava/lang/String;Ljava/util/List;)V

    .line 457
    :cond_0
    return-void
.end method

.method private static storeForegroundColors(Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;Ljava/util/List;)V
    .locals 2
    .param p0, "resultMetadata"    # Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 434
    .local p1, "foregroundColors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "KEY_FOREGROUND_COLOR"

    invoke-interface {p0, v1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putInt(Ljava/lang/String;I)V

    .line 435
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 436
    nop

    .line 439
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/checks/ImageContrastCheck$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/ImageContrastCheck$$ExternalSyntheticLambda1;-><init>()V

    .line 438
    invoke-static {v0, v1}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v0

    .line 436
    const-string v1, "KEY_ADDITIONAL_FOREGROUND_COLORS"

    invoke-interface {p0, v1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->putStringList(Ljava/lang/String;Ljava/util/List;)V

    .line 441
    :cond_0
    return-void
.end method


# virtual methods
.method public getCategory()Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;
    .locals 1

    .line 108
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;->LOW_CONTRAST:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;

    return-object v0
.end method

.method getContrastSwatch(Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;Ljava/lang/Boolean;)Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch;
    .locals 2
    .param p1, "image"    # Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;
    .param p2, "enableEnhancedContrastEvaluation"    # Ljava/lang/Boolean;

    .line 384
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch;

    .line 386
    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    invoke-direct {v0, p1, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;Z)V

    .line 384
    return-object v0
.end method

.method protected getHelpTopic()Ljava/lang/String;
    .locals 1

    .line 103
    const-string v0, "7158390"

    return-object v0
.end method

.method public getMessageForResultData(Ljava/util/Locale;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)Ljava/lang/String;
    .locals 9
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "resultId"    # I
    .param p3, "metadata"    # Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    .line 289
    invoke-static {p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/ImageContrastCheck;->generateMessageForResultId(Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "generated":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 291
    return-object v0

    .line 297
    :cond_0
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string v1, "KEY_BACKGROUND_COLOR"

    const-string v2, "KEY_FOREGROUND_COLOR"

    const-string v3, "KEY_CONTRAST_RATIO"

    const v4, 0xffffff

    packed-switch p2, :pswitch_data_0

    .line 331
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unsupported result id"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 318
    :pswitch_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 322
    const-string v6, "result_message_image_customized_contrast_not_sufficient"

    invoke-static {p1, v6}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 324
    invoke-interface {p3, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 325
    const-string v7, "KEY_CUSTOMIZED_HEURISTIC_CONTRAST_RATIO"

    invoke-interface {p3, v7}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    .line 326
    invoke-interface {p3, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getInt(Ljava/lang/String;)I

    move-result v2

    and-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 327
    invoke-interface {p3, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getInt(Ljava/lang/String;)I

    move-result v1

    and-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v3, v7, v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 320
    invoke-static {p1, v6, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    .line 328
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-static {p1, p3, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/ImageContrastCheck;->appendMetadataStringsToMessageIfNeeded(Ljava/util/Locale;Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;Ljava/lang/StringBuilder;)V

    .line 329
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 306
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :pswitch_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 310
    const-string v6, "result_message_image_contrast_not_sufficient"

    invoke-static {p1, v6}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 311
    invoke-interface {p3, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 312
    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    .line 313
    invoke-interface {p3, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getInt(Ljava/lang/String;)I

    move-result v2

    and-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 314
    invoke-interface {p3, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getInt(Ljava/lang/String;)I

    move-result v1

    and-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v3, v7, v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 308
    invoke-static {p1, v6, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    .line 315
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    invoke-static {p1, p3, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/ImageContrastCheck;->appendMetadataStringsToMessageIfNeeded(Ljava/util/Locale;Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;Ljava/lang/StringBuilder;)V

    .line 316
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 300
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :pswitch_3
    nop

    .line 302
    const-string v1, "result_message_view_not_within_screencapture"

    invoke-static {p1, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 303
    const-string v2, "KEY_VIEW_BOUNDS_STRING"

    invoke-interface {p3, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 304
    const-string v3, "KEY_SCREENSHOT_BOUNDS_STRING"

    invoke-interface {p3, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 300
    invoke-static {p1, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x4
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

    .line 363
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getMetadata()Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    move-result-object v0

    .line 364
    .local v0, "metadata":Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getResultId()I

    move-result v1

    const-string v2, "KEY_CONTRAST_RATIO"

    const-wide/16 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    .line 372
    const/4 v1, 0x0

    return-object v1

    .line 369
    :sswitch_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    const-string v5, "KEY_CUSTOMIZED_HEURISTIC_CONTRAST_RATIO"

    invoke-interface {v1, v5, v3, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getDouble(Ljava/lang/String;D)D

    move-result-wide v5

    .line 370
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getDouble(Ljava/lang/String;D)D

    move-result-wide v1

    sub-double/2addr v5, v1

    .line 369
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 366
    :sswitch_1
    nop

    .line 367
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;->getDouble(Ljava/lang/String;D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    sub-double/2addr v3, v1

    .line 366
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public getShortMessageForResultData(Ljava/util/Locale;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)Ljava/lang/String;
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "resultId"    # I
    .param p3, "metadata"    # Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    .line 338
    invoke-static {p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/ImageContrastCheck;->generateMessageForResultId(Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "generated":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 340
    return-object v0

    .line 343
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 351
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unsupported result id"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 348
    :pswitch_1
    const-string v1, "result_message_brief_image_contrast_not_sufficient"

    invoke-static {p1, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 345
    :pswitch_2
    const-string v1, "result_message_no_screencapture"

    invoke-static {p1, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getTitleMessage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 378
    const-string v0, "check_title_image_contrast"

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

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;>;"
    invoke-static {p2, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/ImageContrastCheck;->getElementsToEvaluate(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;)Ljava/util/List;

    move-result-object v1

    .line 118
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

    .line 119
    .local v3, "view":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isVisibleToUser()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 120
    new-instance v10, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    sget-object v5, Lcom/google/android/apps/common/testing/accessibility/framework/checks/ImageContrastCheck;->CHECK_CLASS:Ljava/lang/Class;

    sget-object v6, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->NOT_RUN:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, v10

    move-object v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    goto :goto_0

    .line 130
    :cond_0
    const-string v4, "android.widget.ImageView"

    invoke-virtual {v3, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->checkInstanceOf(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 131
    new-instance v10, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    sget-object v5, Lcom/google/android/apps/common/testing/accessibility/framework/checks/ImageContrastCheck;->CHECK_CLASS:Ljava/lang/Class;

    sget-object v6, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->NOT_RUN:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v4, v10

    move-object v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 142
    new-instance v10, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    sget-object v5, Lcom/google/android/apps/common/testing/accessibility/framework/checks/ImageContrastCheck;->CHECK_CLASS:Ljava/lang/Class;

    sget-object v6, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->NOT_RUN:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    const/4 v8, 0x6

    const/4 v9, 0x0

    move-object v4, v10

    move-object v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    goto :goto_0

    .line 152
    :cond_2
    nop

    .line 153
    invoke-direct {p0, v3, p3}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/ImageContrastCheck;->attemptHeavyweightEval(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;)Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    move-result-object v4

    .line 154
    .local v4, "heavyweightResult":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;
    if-eqz v4, :cond_3

    .line 155
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    .end local v3    # "view":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .end local v4    # "heavyweightResult":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;
    :cond_3
    goto :goto_0

    .line 159
    :cond_4
    return-object v0
.end method
