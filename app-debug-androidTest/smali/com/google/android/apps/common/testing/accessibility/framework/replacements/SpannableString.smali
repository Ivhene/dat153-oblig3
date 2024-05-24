.class public Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;
.super Ljava/lang/Object;
.source "SpannableString.java"

# interfaces
.implements Ljava/lang/CharSequence;


# instance fields
.field protected final rawString:Ljava/lang/CharSequence;

.field protected spans:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;)V
    .locals 5
    .param p1, "proto"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;->rawString:Ljava/lang/CharSequence;

    .line 30
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 31
    .local v0, "spansBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;>;"
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;->getSpanList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto;

    .line 33
    .local v2, "span":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto;
    sget-object v3, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString$1;->$SwitchMap$com$google$android$apps$common$testing$accessibility$framework$uielement$proto$AndroidFrameworkProtos$SpanProto$SpanType:[I

    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto;->getType()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$SpanType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$SpanType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 50
    const/4 v3, 0x0

    .local v3, "localSpan":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;
    goto :goto_1

    .line 47
    .end local v3    # "localSpan":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;
    :pswitch_0
    new-instance v3, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;

    invoke-direct {v3, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto;)V

    .line 48
    .restart local v3    # "localSpan":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;
    goto :goto_1

    .line 44
    .end local v3    # "localSpan":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;
    :pswitch_1
    new-instance v3, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$UnderlineSpan;

    invoke-direct {v3, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$UnderlineSpan;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto;)V

    .line 45
    .restart local v3    # "localSpan":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;
    goto :goto_1

    .line 41
    .end local v3    # "localSpan":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;
    :pswitch_2
    new-instance v3, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$StyleSpan;

    invoke-direct {v3, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$StyleSpan;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto;)V

    .line 42
    .restart local v3    # "localSpan":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;
    goto :goto_1

    .line 38
    .end local v3    # "localSpan":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;
    :pswitch_3
    new-instance v3, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$ClickableSpan;

    invoke-direct {v3, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$ClickableSpan;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto;)V

    .line 39
    .restart local v3    # "localSpan":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;
    goto :goto_1

    .line 35
    .end local v3    # "localSpan":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;
    :pswitch_4
    new-instance v3, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$URLSpan;

    invoke-direct {v3, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$URLSpan;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto;)V

    .line 36
    .restart local v3    # "localSpan":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;
    nop

    .line 53
    :goto_1
    if-eqz v3, :cond_0

    .line 54
    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 56
    .end local v2    # "span":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto;
    .end local v3    # "localSpan":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;
    :cond_0
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;->spans:Lcom/google/common/collect/ImmutableList;

    .line 58
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "rawString"    # Ljava/lang/CharSequence;

    .line 66
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/util/List;)V
    .locals 1
    .param p1, "rawString"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p2, "spans":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;->rawString:Ljava/lang/CharSequence;

    .line 62
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;->spans:Lcom/google/common/collect/ImmutableList;

    .line 63
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .line 84
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;->rawString:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

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

    .line 74
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;->spans:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;->rawString:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;->rawString:Ljava/lang/CharSequence;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public toProto()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;
    .locals 4

    .line 98
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;->newBuilder()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;

    move-result-object v0

    .line 99
    .local v0, "builder":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;->rawString:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;->setText(Ljava/lang/String;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;

    .line 100
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;->spans:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;

    .line 101
    .local v2, "span":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;
    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;->toProto()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;->addSpan(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;

    .line 102
    .end local v2    # "span":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;
    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;->rawString:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
