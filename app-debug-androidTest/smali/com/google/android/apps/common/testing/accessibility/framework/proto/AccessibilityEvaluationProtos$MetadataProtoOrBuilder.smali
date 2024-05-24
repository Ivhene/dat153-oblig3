.class public interface abstract Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProtoOrBuilder;
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
    name = "MetadataProtoOrBuilder"
.end annotation


# virtual methods
.method public abstract containsMetadataMap(Ljava/lang/String;)Z
.end method

.method public abstract getMetadataMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getMetadataMapCount()I
.end method

.method public abstract getMetadataMapMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMetadataMapOrDefault(Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;
.end method

.method public abstract getMetadataMapOrThrow(Ljava/lang/String;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;
.end method
