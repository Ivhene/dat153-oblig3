.class public Lcom/google/android/apps/common/testing/accessibility/framework/Answer;
.super Ljava/lang/Object;
.source "Answer.java"


# instance fields
.field private final answerTypeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AnswerType;",
            ">;"
        }
    .end annotation
.end field

.field private final metadata:Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

.field private final question:Lcom/google/android/apps/common/testing/accessibility/framework/Question;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/Question;Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V
    .locals 0
    .param p2, "question"    # Lcom/google/android/apps/common/testing/accessibility/framework/Question;
    .param p3, "metadata"    # Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AnswerType;",
            ">;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/Question;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;",
            ")V"
        }
    .end annotation

    .line 22
    .local p1, "answerTypeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/apps/common/testing/accessibility/framework/AnswerType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/Answer;->answerTypeClass:Ljava/lang/Class;

    .line 24
    iput-object p2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/Answer;->question:Lcom/google/android/apps/common/testing/accessibility/framework/Question;

    .line 25
    iput-object p3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/Answer;->metadata:Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    .line 26
    return-void
.end method

.method public static fromProto(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;)Lcom/google/android/apps/common/testing/accessibility/framework/Answer;
    .locals 4
    .param p0, "proto"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;
    .param p1, "associatedHierarchy"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;

    .line 67
    const/4 v0, 0x0

    .line 69
    .local v0, "answerTypeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/apps/common/testing/accessibility/framework/AnswerType;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->getAnswerTypeClass()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/apps/common/testing/accessibility/framework/AnswerType;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 72
    nop

    .line 73
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->getQuestion()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->fromProto(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;)Lcom/google/android/apps/common/testing/accessibility/framework/Question;

    move-result-object v1

    .line 75
    .local v1, "question":Lcom/google/android/apps/common/testing/accessibility/framework/Question;
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->getMetadata()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->fromProto(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;)Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;

    move-result-object v2

    .line 77
    .local v2, "metadata":Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;
    new-instance v3, Lcom/google/android/apps/common/testing/accessibility/framework/Answer;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/Answer;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/Question;Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    return-object v3

    .line 70
    .end local v1    # "question":Lcom/google/android/apps/common/testing/accessibility/framework/Question;
    .end local v2    # "metadata":Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 82
    if-ne p0, p1, :cond_0

    .line 83
    const/4 v0, 0x1

    return v0

    .line 85
    :cond_0
    instance-of v0, p1, Lcom/google/android/apps/common/testing/accessibility/framework/Answer;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 86
    return v1

    .line 89
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/Answer;

    .line 90
    .local v0, "that":Lcom/google/android/apps/common/testing/accessibility/framework/Answer;
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/Answer;->getAnswerTypeClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/Answer;->getAnswerTypeClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 91
    return v1

    .line 93
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/Answer;->getQuestion()Lcom/google/android/apps/common/testing/accessibility/framework/Question;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/Answer;->getQuestion()Lcom/google/android/apps/common/testing/accessibility/framework/Question;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 94
    return v1

    .line 96
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/Answer;->getMetadata()Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/Answer;->getMetadata()Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getAnswerTypeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AnswerType;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/Answer;->answerTypeClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getMetadata()Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/Answer;->metadata:Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    return-object v0
.end method

.method public getQuestion()Lcom/google/android/apps/common/testing/accessibility/framework/Question;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/Answer;->question:Lcom/google/android/apps/common/testing/accessibility/framework/Question;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 101
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/Answer;->getAnswerTypeClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/Answer;->getQuestion()Lcom/google/android/apps/common/testing/accessibility/framework/Question;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/Answer;->getMetadata()Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toProto()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;
    .locals 2

    .line 48
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->newBuilder()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;

    move-result-object v0

    .line 49
    .local v0, "builder":Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/Answer;->getAnswerTypeClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;->setAnswerTypeClass(Ljava/lang/String;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;

    .line 50
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/Answer;->getQuestion()Lcom/google/android/apps/common/testing/accessibility/framework/Question;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->toProto()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;->setQuestion(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;

    .line 51
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/Answer;->getMetadata()Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/Answer;->getMetadata()Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;

    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->toProto()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;->setMetadata(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;

    .line 54
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    return-object v1
.end method
