.class public Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;
.super Ljava/lang/Object;
.source "Span.java"


# instance fields
.field private final end:I

.field private final flags:I

.field private final spanClassName:Ljava/lang/String;

.field private final start:I


# direct methods
.method public constructor <init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto;)V
    .locals 1
    .param p1, "proto"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto;->getSpanClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;->spanClassName:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto;->getStart()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;->start:I

    .line 26
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto;->getEnd()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;->end:I

    .line 27
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto;->getFlags()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;->flags:I

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p1, "spanClassName"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;->spanClassName:Ljava/lang/String;

    .line 18
    iput p2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;->start:I

    .line 19
    iput p3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;->end:I

    .line 20
    iput p4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;->flags:I

    .line 21
    return-void
.end method


# virtual methods
.method protected copyWithAdjustedPosition(II)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;
    .locals 3
    .param p1, "newStart"    # I
    .param p2, "newEnd"    # I

    .line 60
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;

    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;->spanClassName:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;->flags:I

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;-><init>(Ljava/lang/String;III)V

    return-object v0
.end method

.method public getEnd()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;->end:I

    return v0
.end method

.method public getFlags()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;->flags:I

    return v0
.end method

.method public getSpanClassName()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;->spanClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;->start:I

    return v0
.end method

.method public toProto()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto;
    .locals 2

    .line 49
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto;->newBuilder()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;

    move-result-object v0

    .line 50
    .local v0, "builder":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;->spanClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;->setSpanClassName(Ljava/lang/String;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;

    .line 51
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;->start:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;->setStart(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;

    .line 52
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;->end:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;->setEnd(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;

    .line 53
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;->flags:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;->setFlags(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;

    .line 54
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$SpanType;->UNKNOWN:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$SpanType;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;->setType(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$SpanType;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;

    .line 56
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$SpanProto;

    return-object v1
.end method
