.class public Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;
.super Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;
.source "AccessibilityHierarchyCheckResult.java"


# instance fields
.field private final answers:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/Answer;",
            ">;"
        }
    .end annotation
.end field

.field private final element:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

.field private final metadata:Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

.field private final resultId:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;)V
    .locals 7
    .param p2, "type"    # Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;
    .param p3, "element"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .param p4, "resultId"    # I
    .param p5, "metadata"    # Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;",
            ">;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;",
            "I",
            "Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;",
            ")V"
        }
    .end annotation

    .line 65
    .local p1, "checkClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;Lcom/google/common/collect/ImmutableList;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;Lcom/google/common/collect/ImmutableList;)V
    .locals 3
    .param p2, "type"    # Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;
    .param p3, "element"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .param p4, "resultId"    # I
    .param p5, "metadata"    # Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;",
            ">;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;",
            "I",
            "Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/Answer;",
            ">;)V"
        }
    .end annotation

    .line 45
    .local p1, "checkClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;>;"
    .local p6, "answers":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/android/apps/common/testing/accessibility/framework/Answer;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Ljava/lang/CharSequence;)V

    .line 46
    iput-object p3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->element:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 47
    iput p4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->resultId:I

    .line 48
    iput-object p5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->metadata:Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    .line 49
    iput-object p6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->answers:Lcom/google/common/collect/ImmutableList;

    .line 50
    return-void
.end method

.method public static fromProto(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;)Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;
    .locals 12
    .param p0, "proto"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;
    .param p1, "associatedHierarchy"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;

    .line 90
    nop

    .line 91
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->getSourceCheckClass()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->getHierarchyCheckForClassName(Ljava/lang/String;)Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;

    move-result-object v0

    .line 92
    .local v0, "check":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;
    const-string v1, "Failed to resolve check class: %s"

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->getSourceCheckClass()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->getResultId()I

    move-result v1

    .line 94
    .local v1, "resultId":I
    nop

    .line 95
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->getResultType()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$ResultTypeProto;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->fromProto(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$ResultTypeProto;)Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    move-result-object v2

    .line 97
    .local v2, "type":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->hasMetadata()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->getMetadata()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->fromProto(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;)Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;

    move-result-object v3

    move-object v8, v3

    goto :goto_0

    :cond_0
    move-object v8, v4

    .line 99
    .local v8, "metadata":Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->hasHierarchySourceId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->getHierarchySourceId()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;->getViewById(J)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v3

    move-object v6, v3

    goto :goto_1

    .line 101
    :cond_1
    move-object v6, v4

    :goto_1
    nop

    .line 102
    .local v6, "element":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v10

    .line 104
    .local v10, "answersBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/apps/common/testing/accessibility/framework/Answer;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->getAnswersList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    .line 105
    .local v4, "answer":Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;
    invoke-static {v4, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/Answer;->fromProto(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;)Lcom/google/android/apps/common/testing/accessibility/framework/Answer;

    move-result-object v5

    invoke-virtual {v10, v5}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 106
    .end local v4    # "answer":Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;
    goto :goto_2

    .line 108
    :cond_2
    new-instance v11, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    .line 109
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v10}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v9

    move-object v3, v11

    move-object v5, v2

    move v7, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;Lcom/google/common/collect/ImmutableList;)V

    .line 108
    return-object v11
.end method

.method private getCheck()Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;
    .locals 3

    .line 300
    nop

    .line 302
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getSourceCheckClass()Ljava/lang/Class;

    move-result-object v0

    .line 301
    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->getHierarchyCheckForClass(Ljava/lang/Class;)Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;

    move-result-object v0

    .line 303
    .local v0, "check":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;
    const-string v1, "Failed to resolve check class: %s"

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getSourceCheckClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 246
    if-ne p0, p1, :cond_0

    .line 247
    const/4 v0, 0x1

    return v0

    .line 249
    :cond_0
    instance-of v0, p1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 250
    return v1

    .line 253
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    .line 255
    .local v0, "that":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getType()Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getType()Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 256
    return v1

    .line 258
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getResultId()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getResultId()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 259
    return v1

    .line 261
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getSourceCheckClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getSourceCheckClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_4

    .line 262
    return v1

    .line 264
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getElement()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v2

    .line 265
    .local v2, "thatElement":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getElement()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 266
    if-eqz v2, :cond_5

    .line 267
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getElement()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getCondensedUniqueId()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getCondensedUniqueId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_7

    .line 268
    :cond_5
    return v1

    .line 270
    :cond_6
    if-eqz v2, :cond_7

    .line 271
    return v1

    .line 273
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getMetadata()Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getMetadata()Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 274
    return v1

    .line 276
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getAnswers()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getAnswers()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getAnswers()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/Answer;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->answers:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getElement()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->element:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    return-object v0
.end method

.method public getMessage(Ljava/util/Locale;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 144
    invoke-virtual {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getRawMessage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->text()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->metadata:Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    return-object v0
.end method

.method public getRawMessage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 139
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getCheck()Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;->getMessageForResult(Ljava/util/Locale;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawShortMessage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 154
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getCheck()Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;->getShortMessageForResult(Ljava/util/Locale;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawTitleMessage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 119
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getCheck()Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;->getTitleMessage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResultId()I
    .locals 1

    .line 174
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->resultId:I

    return v0
.end method

.method public getSecondaryPriority()Ljava/lang/Double;
    .locals 1

    .line 218
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getCheck()Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;->getSecondaryPriority(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getShortMessage(Ljava/util/Locale;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 164
    invoke-virtual {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getRawShortMessage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->text()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuppressedResultCopy()Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;
    .locals 8

    .line 72
    new-instance v7, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    .line 73
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getSourceCheckClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->SUPPRESSED:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    .line 75
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getElement()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v3

    iget v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->resultId:I

    iget-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->metadata:Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    iget-object v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->answers:Lcom/google/common/collect/ImmutableList;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;ILcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;Lcom/google/common/collect/ImmutableList;)V

    .line 72
    return-object v7
.end method

.method public getTitleMessage(Ljava/util/Locale;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 129
    invoke-virtual {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getRawTitleMessage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->text()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 281
    nop

    .line 282
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getType()Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getResultId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getSourceCheckClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getElement()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getMetadata()Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getAnswers()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    .line 281
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toProto()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;
    .locals 4

    .line 223
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->newBuilder()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;

    move-result-object v0

    .line 224
    .local v0, "builder":Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getResultId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->setResultId(I)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;

    .line 225
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getSourceCheckClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getSourceCheckClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->setSourceCheckClass(Ljava/lang/String;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getType()Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 229
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getType()Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->toProto()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$ResultTypeProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->setResultType(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$ResultTypeProto;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;

    .line 231
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getMetadata()Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;

    if-eqz v1, :cond_2

    .line 232
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getMetadata()Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;

    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->toProto()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->setMetadata(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;

    .line 234
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getElement()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 235
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getElement()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getCondensedUniqueId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->setHierarchySourceId(J)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;

    .line 237
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getAnswers()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/common/testing/accessibility/framework/Answer;

    .line 238
    .local v2, "answer":Lcom/google/android/apps/common/testing/accessibility/framework/Answer;
    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/Answer;->toProto()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->addAnswers(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;

    .line 239
    .end local v2    # "answer":Lcom/google/android/apps/common/testing/accessibility/framework/Answer;
    goto :goto_0

    .line 241
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 288
    nop

    .line 290
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getType()Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    move-result-object v0

    .line 291
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getSourceCheckClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 292
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getResultId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 293
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getElement()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v3

    .line 294
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getMetadata()Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;

    move-result-object v4

    .line 295
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getAnswers()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    .line 288
    const-string v1, "AccessibilityHierarchyCheckResult %s %s %s %s %s num_answers:%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
