.class public Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$UnderlineSpan;
.super Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;
.source "Spans.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnderlineSpan"
.end annotation


# static fields
.field public static final ANDROID_CLASS_NAME:Ljava/lang/String; = "android.text.style.UnderlineSpan"


# direct methods
.method public constructor <init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto;)V
    .locals 0
    .param p1, "proto"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto;

    .line 153
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto;)V

    .line 154
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p1, "spanClass"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    .line 149
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;-><init>(Ljava/lang/String;III)V

    .line 150
    return-void
.end method


# virtual methods
.method protected copyWithAdjustedPosition(II)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;
    .locals 3
    .param p1, "newStart"    # I
    .param p2, "newEnd"    # I

    .line 171
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$UnderlineSpan;

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$UnderlineSpan;->getSpanClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$UnderlineSpan;->getFlags()I

    move-result v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$UnderlineSpan;-><init>(Ljava/lang/String;III)V

    return-object v0
.end method

.method public toProto()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto;
    .locals 2

    .line 158
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto;->newBuilder()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;

    move-result-object v0

    .line 160
    .local v0, "builder":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$UnderlineSpan;->getSpanClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;->setSpanClassName(Ljava/lang/String;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;

    .line 161
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$UnderlineSpan;->getStart()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;->setStart(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;

    .line 162
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$UnderlineSpan;->getEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;->setEnd(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;

    .line 163
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$UnderlineSpan;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;->setFlags(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;

    .line 164
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$SpanType;->UNDERLINE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$SpanType;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;->setType(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$SpanType;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;

    .line 166
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto;

    return-object v1
.end method
