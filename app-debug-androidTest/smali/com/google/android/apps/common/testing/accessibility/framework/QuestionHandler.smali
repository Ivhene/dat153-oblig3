.class public abstract Lcom/google/android/apps/common/testing/accessibility/framework/QuestionHandler;
.super Ljava/lang/Object;
.source "QuestionHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getAnswersForQuestionId(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;I)Lcom/google/common/collect/ImmutableList;
    .locals 4
    .param p0, "result"    # Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;
    .param p1, "questionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;",
            "I)",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/Answer;",
            ">;"
        }
    .end annotation

    .line 86
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 87
    .local v0, "answersBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/apps/common/testing/accessibility/framework/Answer;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getAnswers()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/common/testing/accessibility/framework/Answer;

    .line 88
    .local v2, "answer":Lcom/google/android/apps/common/testing/accessibility/framework/Answer;
    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/Answer;->getQuestion()Lcom/google/android/apps/common/testing/accessibility/framework/Question;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->getQuestionId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 89
    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 91
    .end local v2    # "answer":Lcom/google/android/apps/common/testing/accessibility/framework/Answer;
    :cond_0
    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1
.end method

.method protected static getFirstAnswerForQuestionId(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;I)Lcom/google/android/apps/common/testing/accessibility/framework/Answer;
    .locals 3
    .param p0, "result"    # Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;
    .param p1, "questionId"    # I

    .line 72
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getAnswers()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/Answer;

    .line 73
    .local v1, "answer":Lcom/google/android/apps/common/testing/accessibility/framework/Answer;
    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/Answer;->getQuestion()Lcom/google/android/apps/common/testing/accessibility/framework/Question;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->getQuestionId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 74
    return-object v1

    .line 76
    .end local v1    # "answer":Lcom/google/android/apps/common/testing/accessibility/framework/Answer;
    :cond_0
    goto :goto_0

    .line 77
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected static haveAskedQuestion(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;I)Z
    .locals 1
    .param p0, "result"    # Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;
    .param p1, "questionId"    # I

    .line 98
    invoke-static {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/QuestionHandler;->getFirstAnswerForQuestionId(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;I)Lcom/google/android/apps/common/testing/accessibility/framework/Answer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected static updateResultByAppendingAnswer(Lcom/google/android/apps/common/testing/accessibility/framework/Answer;)Lcom/google/common/collect/ImmutableList;
    .locals 10
    .param p0, "answer"    # Lcom/google/android/apps/common/testing/accessibility/framework/Answer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/common/testing/accessibility/framework/Answer;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;",
            ">;"
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/Answer;->getQuestion()Lcom/google/android/apps/common/testing/accessibility/framework/Question;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/Question;->getOriginalResult()Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    move-result-object v0

    .line 55
    .local v0, "originalResult":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getAnswers()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 56
    .local v1, "answers":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/android/apps/common/testing/accessibility/framework/Answer;>;"
    new-instance v9, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    .line 58
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getSourceCheckClass()Ljava/lang/Class;

    move-result-object v3

    .line 59
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getType()Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    move-result-object v4

    .line 60
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getElement()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v5

    .line 61
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getResultId()I

    move-result v6

    .line 62
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getMetadata()Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    move-result-object v7

    move-object v2, v9

    move-object v8, v1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;Lcom/google/common/collect/ImmutableList;)V

    .line 56
    invoke-static {v9}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public abstract getNextQuestion(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;)Lcom/google/android/apps/common/testing/accessibility/framework/Question;
.end method

.method public abstract getQuestionMessage(Lcom/google/android/apps/common/testing/accessibility/framework/Question;Ljava/util/Locale;)Ljava/lang/String;
.end method

.method public hasQuestion(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;)Z
    .locals 1
    .param p1, "result"    # Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    .line 16
    invoke-virtual {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/QuestionHandler;->getNextQuestion(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;)Lcom/google/android/apps/common/testing/accessibility/framework/Question;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract updateResult(Lcom/google/android/apps/common/testing/accessibility/framework/Answer;)Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/common/testing/accessibility/framework/Answer;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;",
            ">;"
        }
    .end annotation
.end method
