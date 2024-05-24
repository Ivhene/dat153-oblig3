.class public Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$StyleSpan;
.super Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;
.source "Spans.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StyleSpan"
.end annotation


# static fields
.field public static final ANDROID_CLASS_NAME:Ljava/lang/String; = "android.text.style.StyleSpan"


# instance fields
.field private final style:I


# direct methods
.method public constructor <init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto;)V
    .locals 1
    .param p1, "proto"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto;

    .line 109
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto;)V

    .line 110
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto;->getStyle()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$StyleSpan;->style:I

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .param p1, "spanClass"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I
    .param p5, "style"    # I

    .line 104
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;-><init>(Ljava/lang/String;III)V

    .line 105
    iput p5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$StyleSpan;->style:I

    .line 106
    return-void
.end method


# virtual methods
.method protected copyWithAdjustedPosition(II)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;
    .locals 7
    .param p1, "newStart"    # I
    .param p2, "newEnd"    # I

    .line 139
    new-instance v6, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$StyleSpan;

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$StyleSpan;->getSpanClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$StyleSpan;->getFlags()I

    move-result v4

    iget v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$StyleSpan;->style:I

    move-object v0, v6

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$StyleSpan;-><init>(Ljava/lang/String;IIII)V

    return-object v6
.end method

.method public getStyle()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$StyleSpan;->style:I

    return v0
.end method

.method public toProto()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto;
    .locals 2

    .line 125
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto;->newBuilder()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;

    move-result-object v0

    .line 127
    .local v0, "builder":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$StyleSpan;->getSpanClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;->setSpanClassName(Ljava/lang/String;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;

    .line 128
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$StyleSpan;->getStart()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;->setStart(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;

    .line 129
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$StyleSpan;->getEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;->setEnd(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;

    .line 130
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$StyleSpan;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;->setFlags(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;

    .line 131
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$SpanType;->STYLE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$SpanType;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;->setType(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$SpanType;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;

    .line 132
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$StyleSpan;->getStyle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;->setStyle(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;

    .line 134
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto;

    return-object v1
.end method
