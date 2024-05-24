.class public final Lcom/google/android/apps/common/testing/accessibility/framework/ViewHierarchyElementUtils;
.super Ljava/lang/Object;
.source "ViewHierarchyElementUtils.java"


# static fields
.field public static final ABS_LIST_VIEW_CLASS_NAME:Ljava/lang/String; = "android.widget.AbsListView"

.field public static final ADAPTER_VIEW_CLASS_NAME:Ljava/lang/String; = "android.widget.AdapterView"

.field public static final EDIT_TEXT_CLASS_NAME:Ljava/lang/String; = "android.widget.EditText"

.field public static final HORIZONTAL_SCROLL_VIEW_CLASS_NAME:Ljava/lang/String; = "android.widget.HorizontalScrollView"

.field public static final IMAGE_VIEW_CLASS_NAME:Ljava/lang/String; = "android.widget.ImageView"

.field static final SCROLLABLE_CONTAINER_CLASS_NAME_LIST:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCROLL_VIEW_CLASS_NAME:Ljava/lang/String; = "android.widget.ScrollView"

.field public static final SPINNER_CLASS_NAME:Ljava/lang/String; = "android.widget.Spinner"

.field public static final SWITCH_CLASS_NAME:Ljava/lang/String; = "android.widget.Switch"

.field public static final TEXT_VIEW_CLASS_NAME:Ljava/lang/String; = "android.widget.TextView"

.field public static final WEB_VIEW_CLASS_NAME:Ljava/lang/String; = "android.webkit.WebView"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    nop

    .line 34
    const-string v0, "android.widget.AdapterView"

    const-string v1, "android.widget.ScrollView"

    const-string v2, "android.widget.HorizontalScrollView"

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/ViewHierarchyElementUtils;->SCROLLABLE_CONTAINER_CLASS_NAME_LIST:Lcom/google/common/collect/ImmutableList;

    .line 33
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getImportantForAccessibilityAncestor(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .locals 2
    .param p0, "view"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 306
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getParentView()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v0

    .line 307
    .local v0, "parent":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isImportantForAccessibility()Z

    move-result v1

    if-nez v1, :cond_0

    .line 308
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getParentView()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v0

    goto :goto_0

    .line 311
    :cond_0
    return-object v0
.end method

.method public static getSpeakableTextForElement(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;
    .locals 1
    .param p0, "element"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 47
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isImportantForAccessibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getLabeledBy()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getLabeledBy()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewHierarchyElementUtils;->getSpeakableTextFromElementSubtree(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    move-result-object v0

    return-object v0

    .line 53
    :cond_0
    invoke-static {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewHierarchyElementUtils;->getSpeakableTextFromElementSubtree(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    move-result-object v0

    return-object v0
.end method

.method private static getSpeakableTextFromElementSubtree(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;
    .locals 5
    .param p0, "element"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 64
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;

    invoke-direct {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;-><init>()V

    .line 65
    .local v0, "returnStringBuilder":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isImportantForAccessibility()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 67
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getContentDescription()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    move-result-object v1

    .line 68
    .local v1, "contentDescription":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;
    invoke-static {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 69
    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;->appendWithSeparator(Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;->build()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    move-result-object v2

    return-object v2

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getText()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    move-result-object v2

    .line 73
    .local v2, "text":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;
    invoke-static {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v3

    if-lez v3, :cond_1

    .line 74
    invoke-virtual {v0, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;->appendWithSeparator(Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getHintText()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    move-result-object v3

    .line 77
    .local v3, "hint":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;
    invoke-static {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v4

    if-lez v4, :cond_2

    .line 78
    invoke-virtual {v0, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;->appendWithSeparator(Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;

    .line 82
    .end local v3    # "hint":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;
    :cond_2
    :goto_0
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isCheckable()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 83
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isChecked()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 84
    const-string v3, "Checked"

    invoke-virtual {v0, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;->appendWithSeparator(Ljava/lang/String;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;

    goto :goto_1

    .line 85
    :cond_3
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isChecked()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 86
    const-string v3, "Not checked"

    invoke-virtual {v0, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;->appendWithSeparator(Ljava/lang/String;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;

    .line 90
    :cond_4
    :goto_1
    const-string v3, "android.widget.AbsListView"

    invoke-virtual {p0, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->checkInstanceOf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getChildViewCount()I

    move-result v3

    if-nez v3, :cond_5

    .line 91
    const-string v3, "List showing 0 items"

    invoke-virtual {v0, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;->appendWithSeparator(Ljava/lang/String;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;

    .line 96
    .end local v1    # "contentDescription":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;
    .end local v2    # "text":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;
    :cond_5
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getChildViewCount()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 97
    invoke-virtual {p0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getChildView(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v2

    .line 98
    .local v2, "child":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isVisibleToUser()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewHierarchyElementUtils;->isActionableForAccessibility(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 99
    invoke-static {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewHierarchyElementUtils;->getSpeakableTextFromElementSubtree(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    move-result-object v3

    .line 100
    .local v3, "childDesc":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;
    invoke-static {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 101
    invoke-virtual {v0, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;->appendWithSeparator(Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;

    .line 96
    .end local v2    # "child":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .end local v3    # "childDesc":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 106
    .end local v1    # "i":I
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;->build()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    move-result-object v1

    return-object v1
.end method

.method private static hasAnyImportantDescendant(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z
    .locals 4
    .param p0, "element"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 325
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getChildViewCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 326
    invoke-virtual {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getChildView(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v1

    .line 327
    .local v1, "child":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isImportantForAccessibility()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 328
    return v3

    .line 331
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getChildViewCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 332
    invoke-static {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewHierarchyElementUtils;->hasAnyImportantDescendant(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 333
    return v3

    .line 325
    .end local v1    # "child":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 338
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static hasFocusableAncestor(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z
    .locals 2
    .param p0, "view"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 168
    invoke-static {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewHierarchyElementUtils;->getImportantForAccessibilityAncestor(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v0

    .line 169
    .local v0, "parent":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    if-nez v0, :cond_0

    .line 170
    const/4 v1, 0x0

    return v1

    .line 173
    :cond_0
    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewHierarchyElementUtils;->isAccessibilityFocusable(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    const/4 v1, 0x1

    return v1

    .line 177
    :cond_1
    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewHierarchyElementUtils;->hasFocusableAncestor(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z

    move-result v1

    return v1
.end method

.method private static hasNonFocusableSpeakingChildren(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z
    .locals 4
    .param p0, "view"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 267
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getChildViewCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 268
    invoke-virtual {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getChildView(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v1

    .line 269
    .local v1, "child":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    if-eqz v1, :cond_1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 270
    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isVisibleToUser()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 271
    invoke-static {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewHierarchyElementUtils;->isAccessibilityFocusable(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    goto :goto_1

    .line 275
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isImportantForAccessibility()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewHierarchyElementUtils;->isSpeakingView(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 276
    const/4 v2, 0x1

    return v2

    .line 267
    .end local v1    # "child":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static hasText(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z
    .locals 1
    .param p0, "view"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 291
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getText()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getContentDescription()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getHintText()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 291
    :goto_1
    return v0
.end method

.method private static isAccessibilityFocusable(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z
    .locals 3
    .param p0, "view"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 189
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isVisibleToUser()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 190
    return v1

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isImportantForAccessibility()Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    return v1

    .line 197
    :cond_1
    invoke-static {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewHierarchyElementUtils;->isActionableForAccessibility(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 198
    return v2

    .line 201
    :cond_2
    invoke-static {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewHierarchyElementUtils;->isChildOfScrollableContainer(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewHierarchyElementUtils;->isSpeakingView(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method private static isActionableForAccessibility(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z
    .locals 1
    .param p0, "element"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 153
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isClickable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isChildOfScrollableContainer(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z
    .locals 4
    .param p0, "view"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 215
    invoke-static {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewHierarchyElementUtils;->getImportantForAccessibilityAncestor(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v0

    .line 217
    .local v0, "parent":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 218
    return v1

    .line 221
    :cond_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isScrollable()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 222
    const/4 v1, 0x1

    return v1

    .line 228
    :cond_1
    const-string v2, "android.widget.Spinner"

    invoke-virtual {v0, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->checkInstanceOf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 229
    return v1

    .line 232
    :cond_2
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/ViewHierarchyElementUtils;->SCROLLABLE_CONTAINER_CLASS_NAME_LIST:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->checkInstanceOfAny(Ljava/util/List;)Z

    move-result v1

    return v1
.end method

.method public static isIntersectedByOverlayView(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z
    .locals 9
    .param p0, "element"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 378
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getDrawingOrder()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 379
    return v1

    .line 382
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getWindow()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->getAccessibilityHierarchy()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;

    move-result-object v0

    .line 383
    .local v0, "hierarchy":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;->getActiveWindow()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->getRootView()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v2

    .line 385
    .local v2, "rootView":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    move-object v3, p0

    .line 386
    .local v3, "view":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    :goto_0
    if-eq v3, v2, :cond_3

    .line 387
    invoke-virtual {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getParentView()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 388
    .local v4, "parentView":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v4}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getChildViewCount()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 389
    invoke-virtual {v4, v5}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getChildView(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v6

    .line 390
    .local v6, "siblingView":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    invoke-virtual {v6}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getDrawingOrder()Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getDrawingOrder()Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-le v7, v8, :cond_1

    .line 391
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getBoundsInScreen()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    move-result-object v7

    invoke-virtual {v6}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getBoundsInScreen()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->intersects(Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 392
    const/4 v1, 0x1

    return v1

    .line 388
    .end local v6    # "siblingView":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 395
    .end local v5    # "i":I
    :cond_2
    move-object v3, v4

    .line 396
    .end local v4    # "parentView":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    goto :goto_0

    .line 398
    :cond_3
    return v1
.end method

.method public static isIntersectedByOverlayWindow(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z
    .locals 7
    .param p0, "viewHierarchyElement"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 351
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getWindow()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->getAccessibilityHierarchy()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;

    move-result-object v0

    .line 352
    .local v0, "hierarchy":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;->getActiveWindow()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->getLayer()Ljava/lang/Integer;

    move-result-object v1

    .line 353
    .local v1, "activeWindowLayer":Ljava/lang/Integer;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 354
    return v2

    .line 357
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;->getAllWindows()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;

    .line 358
    .local v4, "window":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;
    invoke-virtual {v4}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->getLayer()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->getLayer()Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v5, v6, :cond_1

    .line 359
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getBoundsInScreen()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->getBoundsInScreen()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->intersects(Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 360
    const/4 v2, 0x1

    return v2

    .line 363
    .end local v4    # "window":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;
    :cond_1
    goto :goto_0

    .line 364
    :cond_2
    return v2
.end method

.method public static isPotentiallyObscured(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z
    .locals 1
    .param p0, "viewHierarchyElement"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 410
    invoke-static {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewHierarchyElementUtils;->isIntersectedByOverlayWindow(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 411
    invoke-static {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewHierarchyElementUtils;->isIntersectedByOverlayView(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 410
    :goto_1
    return v0
.end method

.method private static isSpeakingView(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z
    .locals 3
    .param p0, "view"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 245
    invoke-static {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewHierarchyElementUtils;->hasText(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 246
    return v1

    .line 247
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isCheckable()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    return v1

    .line 250
    :cond_1
    invoke-static {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewHierarchyElementUtils;->hasNonFocusableSpeakingChildren(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    return v1

    .line 254
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static shouldFocusView(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z
    .locals 3
    .param p0, "view"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 118
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isVisibleToUser()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 120
    return v1

    .line 123
    :cond_0
    invoke-static {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewHierarchyElementUtils;->isAccessibilityFocusable(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 124
    invoke-static {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewHierarchyElementUtils;->hasAnyImportantDescendant(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    return v2

    .line 129
    :cond_1
    invoke-static {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewHierarchyElementUtils;->isSpeakingView(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    return v2

    .line 134
    :cond_2
    return v1

    .line 137
    :cond_3
    invoke-static {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewHierarchyElementUtils;->hasText(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isImportantForAccessibility()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewHierarchyElementUtils;->hasFocusableAncestor(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 138
    return v2

    .line 141
    :cond_4
    return v1
.end method
