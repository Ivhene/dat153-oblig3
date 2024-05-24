.class public Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$URLSpan;
.super Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$ClickableSpan;
.source "Spans.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "URLSpan"
.end annotation


# static fields
.field public static final ANDROID_CLASS_NAME:Ljava/lang/String; = "android.text.style.URLSpan"


# instance fields
.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto;)V
    .locals 1
    .param p1, "proto"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto;

    .line 65
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$ClickableSpan;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto;)V

    .line 66
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$URLSpan;->url:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .param p1, "spanClass"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I
    .param p5, "url"    # Ljava/lang/String;

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$ClickableSpan;-><init>(Ljava/lang/String;III)V

    .line 61
    iput-object p5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$URLSpan;->url:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method protected copyWithAdjustedPosition(II)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;
    .locals 7
    .param p1, "newStart"    # I
    .param p2, "newEnd"    # I

    .line 92
    new-instance v6, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$URLSpan;

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$URLSpan;->getSpanClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$URLSpan;->getFlags()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$URLSpan;->url:Ljava/lang/String;

    move-object v0, v6

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$URLSpan;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    return-object v6
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$URLSpan;->url:Ljava/lang/String;

    return-object v0
.end method

.method public toProto()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto;
    .locals 3

    .line 77
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto;->newBuilder()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;

    move-result-object v0

    .line 78
    .local v0, "builder":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$URLSpan;->getSpanClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;->setSpanClassName(Ljava/lang/String;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;

    .line 79
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$URLSpan;->getStart()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;->setStart(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;

    .line 80
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$URLSpan;->getEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;->setEnd(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;

    .line 81
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$URLSpan;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;->setFlags(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;

    .line 82
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$SpanType;->URL:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$SpanType;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;->setType(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$SpanType;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;

    .line 83
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$URLSpan;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "url":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;->setUrl(Ljava/lang/String;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;

    .line 87
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto;

    return-object v2
.end method
