.class public Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;
.super Ljava/lang/Object;
.source "SpannableStringBuilder.java"

# interfaces
.implements Ljava/lang/CharSequence;


# static fields
.field private static final SEPARATOR:Ljava/lang/String; = ", "


# instance fields
.field private final rawTextBuilder:Ljava/lang/StringBuilder;

.field private spans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;->rawTextBuilder:Ljava/lang/StringBuilder;

    .line 18
    return-void
.end method

.method private copyAndAppendAdjustedSpans(Ljava/util/List;I)V
    .locals 5
    .param p2, "adjustment"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;",
            ">;I)V"
        }
    .end annotation

    .line 94
    .local p1, "spans":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;>;"
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;->spans:Ljava/util/List;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;->spans:Ljava/util/List;

    .line 98
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;

    .line 100
    .local v1, "span":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;
    nop

    .line 102
    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;->getStart()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;->rawTextBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, p2

    .line 103
    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;->getEnd()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;->rawTextBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, p2

    .line 101
    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;->copyWithAdjustedPosition(II)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;

    move-result-object v2

    .line 104
    .local v2, "adjustedSpan":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;
    iget-object v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;->spans:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    .end local v1    # "span":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;
    .end local v2    # "adjustedSpan":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;
    goto :goto_0

    .line 106
    :cond_1
    return-void
.end method

.method private needsSeparator()Z
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;->rawTextBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public append(Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;
    .locals 2
    .param p1, "string"    # Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    .line 21
    invoke-static {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;->getSpans()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;->copyAndAppendAdjustedSpans(Ljava/util/List;I)V

    .line 23
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;->append(Ljava/lang/String;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;

    .line 25
    :cond_0
    return-object p0
.end method

.method public append(Ljava/lang/String;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 29
    invoke-static {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;->rawTextBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    :cond_0
    return-object p0
.end method

.method public appendWithSeparator(Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;
    .locals 2
    .param p1, "string"    # Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    .line 36
    invoke-static {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 37
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;->getSpans()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;->needsSeparator()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;->copyAndAppendAdjustedSpans(Ljava/util/List;I)V

    .line 38
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;->appendWithSeparator(Ljava/lang/String;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;

    .line 40
    :cond_1
    return-object p0
.end method

.method public appendWithSeparator(Ljava/lang/String;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 44
    invoke-static {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;->needsSeparator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const-string v0, ", "

    invoke-virtual {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;->append(Ljava/lang/String;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;

    .line 48
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;->append(Ljava/lang/String;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;

    .line 50
    :cond_1
    return-object p0
.end method

.method public build()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;
    .locals 3

    .line 58
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;->rawTextBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;->getSpans()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    return-object v0
.end method

.method public charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .line 68
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;->rawTextBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    return v0
.end method

.method public getSpans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;->spans:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public length()I
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;->rawTextBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 73
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringBuilder;->rawTextBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
