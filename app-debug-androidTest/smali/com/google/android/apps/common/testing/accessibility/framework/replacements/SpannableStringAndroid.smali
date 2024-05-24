.class public Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringAndroid;
.super Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;
.source "SpannableStringAndroid.java"


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 26
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 27
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 29
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringAndroid;->getSpansAndroid(Landroid/text/Spanned;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringAndroid;->spans:Lcom/google/common/collect/ImmutableList;

    goto :goto_0

    .line 30
    :cond_0
    instance-of v0, p1, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    if-eqz v0, :cond_1

    .line 31
    move-object v0, p1

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    .line 32
    .local v0, "spannableString":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;->getSpans()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringAndroid;->spans:Lcom/google/common/collect/ImmutableList;

    .line 33
    .end local v0    # "spannableString":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;
    goto :goto_0

    .line 34
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringAndroid;->spans:Lcom/google/common/collect/ImmutableList;

    .line 36
    :goto_0
    return-void
.end method

.method private static getSpansAndroid(Landroid/text/Spanned;)Lcom/google/common/collect/ImmutableList;
    .locals 15
    .param p0, "spanned"    # Landroid/text/Spanned;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spanned;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;",
            ">;"
        }
    .end annotation

    .line 60
    invoke-static {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0

    .line 64
    :cond_0
    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v0

    .line 65
    .local v0, "length":I
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 66
    .local v1, "spansBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;>;"
    add-int/lit8 v2, v0, -0x1

    const-class v3, Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p0, v4, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 67
    .local v2, "spans":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_6

    .line 68
    aget-object v4, v2, v3

    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 69
    .local v4, "start":I
    aget-object v5, v2, v3

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    .line 70
    .local v11, "end":I
    aget-object v5, v2, v3

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v12

    .line 74
    .local v12, "flags":I
    aget-object v5, v2, v3

    instance-of v5, v5, Landroid/text/NoCopySpan;

    if-eqz v5, :cond_1

    .line 76
    goto/16 :goto_2

    .line 77
    :cond_1
    aget-object v5, v2, v3

    instance-of v5, v5, Landroid/text/style/URLSpan;

    if-eqz v5, :cond_2

    .line 78
    aget-object v5, v2, v3

    move-object v13, v5

    check-cast v13, Landroid/text/style/URLSpan;

    .line 79
    .local v13, "androidUrlSpan":Landroid/text/style/URLSpan;
    new-instance v14, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$URLSpan;

    const-string v6, "android.text.style.URLSpan"

    .line 81
    invoke-virtual {v13}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v10

    move-object v5, v14

    move v7, v4

    move v8, v11

    move v9, v12

    invoke-direct/range {v5 .. v10}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$URLSpan;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    .line 82
    .end local v13    # "androidUrlSpan":Landroid/text/style/URLSpan;
    .local v5, "newSpan":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;
    goto :goto_1

    .end local v5    # "newSpan":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;
    :cond_2
    aget-object v5, v2, v3

    instance-of v5, v5, Landroid/text/style/ClickableSpan;

    if-eqz v5, :cond_3

    .line 83
    new-instance v5, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$ClickableSpan;

    const-string v6, "android.text.style.ClickableSpan"

    invoke-direct {v5, v6, v4, v11, v12}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$ClickableSpan;-><init>(Ljava/lang/String;III)V

    .restart local v5    # "newSpan":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;
    goto :goto_1

    .line 85
    .end local v5    # "newSpan":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;
    :cond_3
    aget-object v5, v2, v3

    instance-of v5, v5, Landroid/text/style/StyleSpan;

    if-eqz v5, :cond_4

    .line 86
    aget-object v5, v2, v3

    move-object v13, v5

    check-cast v13, Landroid/text/style/StyleSpan;

    .line 87
    .local v13, "androidStyleSpan":Landroid/text/style/StyleSpan;
    new-instance v14, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$StyleSpan;

    const-string v6, "android.text.style.StyleSpan"

    .line 89
    invoke-virtual {v13}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v10

    move-object v5, v14

    move v7, v4

    move v8, v11

    move v9, v12

    invoke-direct/range {v5 .. v10}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$StyleSpan;-><init>(Ljava/lang/String;IIII)V

    .line 90
    .end local v13    # "androidStyleSpan":Landroid/text/style/StyleSpan;
    .restart local v5    # "newSpan":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;
    goto :goto_1

    .end local v5    # "newSpan":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;
    :cond_4
    aget-object v5, v2, v3

    instance-of v5, v5, Landroid/text/style/UnderlineSpan;

    if-eqz v5, :cond_5

    .line 91
    new-instance v5, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$UnderlineSpan;

    const-string v6, "android.text.style.UnderlineSpan"

    invoke-direct {v5, v6, v4, v11, v12}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$UnderlineSpan;-><init>(Ljava/lang/String;III)V

    .restart local v5    # "newSpan":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;
    goto :goto_1

    .line 95
    .end local v5    # "newSpan":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;
    :cond_5
    new-instance v5, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;

    aget-object v6, v2, v3

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4, v11, v12}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;-><init>(Ljava/lang/String;III)V

    .line 98
    .restart local v5    # "newSpan":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;
    :goto_1
    invoke-virtual {v1, v5}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 67
    .end local v4    # "start":I
    .end local v5    # "newSpan":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;
    .end local v11    # "end":I
    .end local v12    # "flags":I
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 100
    .end local v3    # "i":I
    :cond_6
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    return-object v3
.end method

.method public static valueOf(Ljava/lang/CharSequence;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringAndroid;
    .locals 1
    .param p0, "source"    # Ljava/lang/CharSequence;

    .line 47
    invoke-static {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_0
    instance-of v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringAndroid;

    if-eqz v0, :cond_1

    .line 52
    move-object v0, p0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringAndroid;

    return-object v0

    .line 55
    :cond_1
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringAndroid;

    invoke-direct {v0, p0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringAndroid;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method
