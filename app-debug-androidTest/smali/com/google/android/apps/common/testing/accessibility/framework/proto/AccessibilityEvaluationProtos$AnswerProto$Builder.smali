.class public final Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AccessibilityEvaluationProtos.java"

# interfaces
.implements Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;",
        "Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;",
        ">;",
        "Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProtoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 5899
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->access$10800()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 5900
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$1;

    .line 5892
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAnswerTypeClass()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;
    .locals 1

    .line 5935
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;->copyOnWrite()V

    .line 5936
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->access$11000(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;)V

    .line 5937
    return-object p0
.end method

.method public clearMetadata()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;
    .locals 1

    .line 6034
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;->copyOnWrite()V

    .line 6035
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->access$11900(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;)V

    .line 6036
    return-object p0
.end method

.method public clearQuestion()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;
    .locals 1

    .line 5989
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;->copyOnWrite()V

    .line 5990
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->access$11500(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;)V

    .line 5991
    return-object p0
.end method

.method public getAnswerTypeClass()Ljava/lang/String;
    .locals 1

    .line 5913
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->getAnswerTypeClass()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAnswerTypeClassBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5920
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->getAnswerTypeClassBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;
    .locals 1

    .line 6004
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->getMetadata()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    move-result-object v0

    return-object v0
.end method

.method public getQuestion()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;
    .locals 1

    .line 5959
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->getQuestion()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;

    move-result-object v0

    return-object v0
.end method

.method public hasAnswerTypeClass()Z
    .locals 1

    .line 5907
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->hasAnswerTypeClass()Z

    move-result v0

    return v0
.end method

.method public hasMetadata()Z
    .locals 1

    .line 5998
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->hasMetadata()Z

    move-result v0

    return v0
.end method

.method public hasQuestion()Z
    .locals 1

    .line 5953
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->hasQuestion()Z

    move-result v0

    return v0
.end method

.method public mergeMetadata(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    .line 6027
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;->copyOnWrite()V

    .line 6028
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    invoke-static {v0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->access$11800(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;)V

    .line 6029
    return-object p0
.end method

.method public mergeQuestion(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;

    .line 5982
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;->copyOnWrite()V

    .line 5983
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    invoke-static {v0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->access$11400(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;)V

    .line 5984
    return-object p0
.end method

.method public setAnswerTypeClass(Ljava/lang/String;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 5927
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;->copyOnWrite()V

    .line 5928
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    invoke-static {v0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->access$10900(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;Ljava/lang/String;)V

    .line 5929
    return-object p0
.end method

.method public setAnswerTypeClassBytes(Lcom/google/protobuf/ByteString;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 5944
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;->copyOnWrite()V

    .line 5945
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    invoke-static {v0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->access$11100(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;Lcom/google/protobuf/ByteString;)V

    .line 5946
    return-object p0
.end method

.method public setMetadata(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto$Builder;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto$Builder;

    .line 6019
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;->copyOnWrite()V

    .line 6020
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    invoke-static {v0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->access$11700(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto$Builder;)V

    .line 6021
    return-object p0
.end method

.method public setMetadata(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    .line 6010
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;->copyOnWrite()V

    .line 6011
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    invoke-static {v0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->access$11600(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;)V

    .line 6012
    return-object p0
.end method

.method public setQuestion(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto$Builder;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto$Builder;

    .line 5974
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;->copyOnWrite()V

    .line 5975
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    invoke-static {v0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->access$11300(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto$Builder;)V

    .line 5976
    return-object p0
.end method

.method public setQuestion(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;

    .line 5965
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;->copyOnWrite()V

    .line 5966
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    invoke-static {v0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->access$11200(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;)V

    .line 5967
    return-object p0
.end method
