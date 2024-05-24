.class public interface abstract Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProtoOrBuilder;
.super Ljava/lang/Object;
.source "AccessibilityEvaluationProtos.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AccessibilityHierarchyCheckResultProtoOrBuilder"
.end annotation


# virtual methods
.method public abstract getAnswers(I)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;
.end method

.method public abstract getAnswersCount()I
.end method

.method public abstract getAnswersList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHierarchySourceId()J
.end method

.method public abstract getMetadata()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;
.end method

.method public abstract getResultId()I
.end method

.method public abstract getResultType()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$ResultTypeProto;
.end method

.method public abstract getSourceCheckClass()Ljava/lang/String;
.end method

.method public abstract getSourceCheckClassBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasHierarchySourceId()Z
.end method

.method public abstract hasMetadata()Z
.end method

.method public abstract hasResultId()Z
.end method

.method public abstract hasResultType()Z
.end method

.method public abstract hasSourceCheckClass()Z
.end method
