.class public Lcom/google/android/apps/common/testing/accessibility/framework/Question;
.super Ljava/lang/Object;
.source "Question.java"


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

.field private final originalResult:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

.field private final questionHandlerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/apps/common/testing/accessibility/framework/QuestionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final questionId:I

.field private final questionTypeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/apps/common/testing/accessibility/framework/QuestionType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/Class;Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/QuestionHandler;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V
    .locals 1
    .param p1, "questionId"    # I
    .param p4, "questionHandler"    # Lcom/google/android/apps/common/testing/accessibility/framework/QuestionHandler;
    .param p5, "originalResult"    # Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;
    .param p6, "metadata"    # Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/apps/common/testing/accessibility/framework/QuestionType;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AnswerType;",
            ">;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/QuestionHandler;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;",
            ")V"
        }
    .end annotation

    .line 38
    .local p2, "questionTypeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/apps/common/testing/accessibility/framework/QuestionType;>;"
    .local p3, "answerTypeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/apps/common/testing/accessibility/framework/AnswerType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->questionId:I

    .line 40
    iput-object p2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->questionTypeClass:Ljava/lang/Class;

    .line 41
    iput-object p3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->answerTypeClass:Ljava/lang/Class;

    .line 42
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->questionHandlerClass:Ljava/lang/Class;

    .line 43
    iput-object p5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->originalResult:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    .line 44
    iput-object p6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->metadata:Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    .line 45
    return-void
.end method

.method public constructor <init>(ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V
    .locals 0
    .param p1, "questionId"    # I
    .param p5, "originalResult"    # Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;
    .param p6, "metadata"    # Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/apps/common/testing/accessibility/framework/QuestionType;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AnswerType;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/apps/common/testing/accessibility/framework/QuestionHandler;",
            ">;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;",
            ")V"
        }
    .end annotation

    .line 61
    .local p2, "questionTypeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/apps/common/testing/accessibility/framework/QuestionType;>;"
    .local p3, "answerTypeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/apps/common/testing/accessibility/framework/AnswerType;>;"
    .local p4, "questionHandlerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/apps/common/testing/accessibility/framework/QuestionHandler;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->questionId:I

    .line 63
    iput-object p2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->questionTypeClass:Ljava/lang/Class;

    .line 64
    iput-object p3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->answerTypeClass:Ljava/lang/Class;

    .line 65
    iput-object p4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->questionHandlerClass:Ljava/lang/Class;

    .line 66
    iput-object p5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->originalResult:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    .line 67
    iput-object p6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->metadata:Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    .line 68
    return-void
.end method

.method public static fromProto(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;)Lcom/google/android/apps/common/testing/accessibility/framework/Question;
    .locals 11
    .param p0, "proto"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;
    .param p1, "associatedHierarchy"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;

    .line 134
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;->getQuestionId()I

    move-result v7

    .line 135
    .local v7, "questionId":I
    const/4 v0, 0x0

    .line 136
    .local v0, "questionTypeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/apps/common/testing/accessibility/framework/QuestionType;>;"
    const/4 v1, 0x0

    .line 137
    .local v1, "answerTypeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/apps/common/testing/accessibility/framework/AnswerType;>;"
    const/4 v4, 0x0

    .line 140
    .local v4, "questionHandlerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/apps/common/testing/accessibility/framework/QuestionHandler;>;"
    nop

    .line 141
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;->getQuestionTypeClass()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/android/apps/common/testing/accessibility/framework/QuestionType;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 142
    .end local v0    # "questionTypeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/apps/common/testing/accessibility/framework/QuestionType;>;"
    .local v2, "questionTypeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/apps/common/testing/accessibility/framework/QuestionType;>;"
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;->getAnswerTypeClass()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/google/android/apps/common/testing/accessibility/framework/AnswerType;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 143
    .end local v1    # "answerTypeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/apps/common/testing/accessibility/framework/AnswerType;>;"
    .local v3, "answerTypeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/apps/common/testing/accessibility/framework/AnswerType;>;"
    nop

    .line 144
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;->getQuestionHandlerClass()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/android/apps/common/testing/accessibility/framework/QuestionHandler;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v0

    .line 148
    nop

    .line 149
    nop

    .line 150
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;->getOriginalResult()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->fromProto(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;)Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    move-result-object v8

    .line 152
    .local v8, "result":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;->hasMetadata()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;->getMetadata()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->fromProto(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;)Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    .line 154
    .local v6, "metadata":Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;
    new-instance v9, Lcom/google/android/apps/common/testing/accessibility/framework/Question;

    move-object v0, v9

    move v1, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/common/testing/accessibility/framework/Question;-><init>(ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V

    return-object v9

    .line 146
    .end local v6    # "metadata":Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;
    .end local v8    # "result":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;
    :catch_0
    move-exception v0

    move-object v1, v3

    goto :goto_1

    .end local v3    # "answerTypeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/apps/common/testing/accessibility/framework/AnswerType;>;"
    .restart local v1    # "answerTypeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/apps/common/testing/accessibility/framework/AnswerType;>;"
    :catch_1
    move-exception v0

    goto :goto_1

    .end local v2    # "questionTypeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/apps/common/testing/accessibility/framework/QuestionType;>;"
    .restart local v0    # "questionTypeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/apps/common/testing/accessibility/framework/QuestionType;>;"
    :catch_2
    move-exception v2

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    .line 147
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    .restart local v2    # "questionTypeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/apps/common/testing/accessibility/framework/QuestionType;>;"
    :goto_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 160
    if-ne p0, p1, :cond_0

    .line 161
    const/4 v0, 0x1

    return v0

    .line 163
    :cond_0
    instance-of v0, p1, Lcom/google/android/apps/common/testing/accessibility/framework/Question;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 164
    return v1

    .line 167
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/Question;

    .line 168
    .local v0, "that":Lcom/google/android/apps/common/testing/accessibility/framework/Question;
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->getOriginalResult()Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->getOriginalResult()Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 169
    return v1

    .line 171
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->getQuestionId()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->getQuestionId()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 172
    return v1

    .line 174
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->getAnswerTypeClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->getAnswerTypeClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_4

    .line 175
    return v1

    .line 177
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->getQuestionTypeClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->getQuestionTypeClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_5

    .line 178
    return v1

    .line 180
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->getQuestionHandlerClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->getQuestionHandlerClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_6

    .line 181
    return v1

    .line 183
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->getMetadata()Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->getMetadata()Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

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

    .line 87
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->answerTypeClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getMetadata()Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->metadata:Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    return-object v0
.end method

.method public getOriginalResult()Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->originalResult:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    return-object v0
.end method

.method public getQuestionHandlerClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/apps/common/testing/accessibility/framework/QuestionHandler;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->questionHandlerClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getQuestionId()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->questionId:I

    return v0
.end method

.method public getQuestionTypeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/apps/common/testing/accessibility/framework/QuestionType;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->questionTypeClass:Ljava/lang/Class;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 188
    nop

    .line 189
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->getQuestionId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 190
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->getQuestionTypeClass()Ljava/lang/Class;

    move-result-object v2

    .line 191
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->getAnswerTypeClass()Ljava/lang/Class;

    move-result-object v3

    .line 192
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->getQuestionHandlerClass()Ljava/lang/Class;

    move-result-object v4

    .line 193
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->getOriginalResult()Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    move-result-object v5

    .line 194
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->getMetadata()Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 188
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toProto()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;
    .locals 2

    .line 111
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;->newBuilder()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto$Builder;

    move-result-object v0

    .line 112
    .local v0, "builder":Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto$Builder;
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->getQuestionId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto$Builder;->setQuestionId(I)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto$Builder;

    .line 113
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->getQuestionTypeClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto$Builder;->setQuestionTypeClass(Ljava/lang/String;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto$Builder;

    .line 114
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->getAnswerTypeClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto$Builder;->setAnswerTypeClass(Ljava/lang/String;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto$Builder;

    .line 115
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->getQuestionHandlerClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto$Builder;->setQuestionHandlerClass(Ljava/lang/String;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto$Builder;

    .line 116
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->getOriginalResult()Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->toProto()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto$Builder;->setOriginalResult(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto$Builder;

    .line 117
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->getMetadata()Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;

    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->getMetadata()Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;

    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->toProto()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto$Builder;->setMetadata(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto$Builder;

    .line 120
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 199
    nop

    .line 201
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->getQuestionId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 202
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->getQuestionTypeClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->getAnswerTypeClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 204
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->getQuestionHandlerClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 205
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->getOriginalResult()Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    move-result-object v5

    .line 206
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->getMetadata()Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 199
    const-string v1, "Question %s %s %s %s %s %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
