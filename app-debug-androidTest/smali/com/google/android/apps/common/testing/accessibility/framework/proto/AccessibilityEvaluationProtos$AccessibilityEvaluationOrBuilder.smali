.class public interface abstract Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityEvaluationOrBuilder;
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
    name = "AccessibilityEvaluationOrBuilder"
.end annotation


# virtual methods
.method public abstract getHierarchy()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProto;
.end method

.method public abstract getResults(I)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;
.end method

.method public abstract getResultsCount()I
.end method

.method public abstract getResultsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasHierarchy()Z
.end method
