.class public final Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AccessibilityEvaluationProtos.java"

# interfaces
.implements Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;",
        "Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;",
        ">;",
        "Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProtoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1275
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->access$1500()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1276
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$1;

    .line 1268
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllAnswers(Ljava/lang/Iterable;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;",
            ">;)",
            "Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;"
        }
    .end annotation

    .line 1533
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->copyOnWrite()V

    .line 1534
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;

    invoke-static {v0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->access$3500(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;Ljava/lang/Iterable;)V

    .line 1535
    return-object p0
.end method

.method public addAnswers(ILcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;

    .line 1524
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->copyOnWrite()V

    .line 1525
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;

    invoke-static {v0, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->access$3400(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;ILcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;)V

    .line 1526
    return-object p0
.end method

.method public addAnswers(ILcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    .line 1506
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->copyOnWrite()V

    .line 1507
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;

    invoke-static {v0, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->access$3200(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;ILcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;)V

    .line 1508
    return-object p0
.end method

.method public addAnswers(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;

    .line 1515
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->copyOnWrite()V

    .line 1516
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;

    invoke-static {v0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->access$3300(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;)V

    .line 1517
    return-object p0
.end method

.method public addAnswers(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    .line 1497
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->copyOnWrite()V

    .line 1498
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;

    invoke-static {v0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->access$3100(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;)V

    .line 1499
    return-object p0
.end method

.method public clearAnswers()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;
    .locals 1

    .line 1541
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->copyOnWrite()V

    .line 1542
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;

    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->access$3600(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;)V

    .line 1543
    return-object p0
.end method

.method public clearHierarchySourceId()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;
    .locals 1

    .line 1407
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->copyOnWrite()V

    .line 1408
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;

    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->access$2400(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;)V

    .line 1409
    return-object p0
.end method

.method public clearMetadata()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;
    .locals 1

    .line 1452
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->copyOnWrite()V

    .line 1453
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;

    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->access$2800(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;)V

    .line 1454
    return-object p0
.end method

.method public clearResultId()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;
    .locals 1

    .line 1349
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->copyOnWrite()V

    .line 1350
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;

    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->access$2000(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;)V

    .line 1351
    return-object p0
.end method

.method public clearResultType()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;
    .locals 1

    .line 1378
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->copyOnWrite()V

    .line 1379
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;

    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->access$2200(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;)V

    .line 1380
    return-object p0
.end method

.method public clearSourceCheckClass()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;
    .locals 1

    .line 1311
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->copyOnWrite()V

    .line 1312
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;

    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->access$1700(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;)V

    .line 1313
    return-object p0
.end method

.method public getAnswers(I)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;
    .locals 1
    .param p1, "index"    # I

    .line 1473
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->getAnswers(I)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    move-result-object v0

    return-object v0
.end method

.method public getAnswersCount()I
    .locals 1

    .line 1468
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->getAnswersCount()I

    move-result v0

    return v0
.end method

.method public getAnswersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;",
            ">;"
        }
    .end annotation

    .line 1461
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;

    .line 1462
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->getAnswersList()Ljava/util/List;

    move-result-object v0

    .line 1461
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHierarchySourceId()J
    .locals 2

    .line 1393
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->getHierarchySourceId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMetadata()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;
    .locals 1

    .line 1422
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->getMetadata()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    move-result-object v0

    return-object v0
.end method

.method public getResultId()I
    .locals 1

    .line 1335
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->getResultId()I

    move-result v0

    return v0
.end method

.method public getResultType()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$ResultTypeProto;
    .locals 1

    .line 1364
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->getResultType()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$ResultTypeProto;

    move-result-object v0

    return-object v0
.end method

.method public getSourceCheckClass()Ljava/lang/String;
    .locals 1

    .line 1289
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->getSourceCheckClass()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSourceCheckClassBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1296
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->getSourceCheckClassBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasHierarchySourceId()Z
    .locals 1

    .line 1387
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->hasHierarchySourceId()Z

    move-result v0

    return v0
.end method

.method public hasMetadata()Z
    .locals 1

    .line 1416
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->hasMetadata()Z

    move-result v0

    return v0
.end method

.method public hasResultId()Z
    .locals 1

    .line 1329
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->hasResultId()Z

    move-result v0

    return v0
.end method

.method public hasResultType()Z
    .locals 1

    .line 1358
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->hasResultType()Z

    move-result v0

    return v0
.end method

.method public hasSourceCheckClass()Z
    .locals 1

    .line 1283
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->hasSourceCheckClass()Z

    move-result v0

    return v0
.end method

.method public mergeMetadata(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    .line 1445
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->copyOnWrite()V

    .line 1446
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;

    invoke-static {v0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->access$2700(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;)V

    .line 1447
    return-object p0
.end method

.method public removeAnswers(I)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 1549
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->copyOnWrite()V

    .line 1550
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;

    invoke-static {v0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->access$3700(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;I)V

    .line 1551
    return-object p0
.end method

.method public setAnswers(ILcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;

    .line 1489
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->copyOnWrite()V

    .line 1490
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;

    invoke-static {v0, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->access$3000(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;ILcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;)V

    .line 1491
    return-object p0
.end method

.method public setAnswers(ILcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    .line 1480
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->copyOnWrite()V

    .line 1481
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;

    invoke-static {v0, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->access$2900(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;ILcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;)V

    .line 1482
    return-object p0
.end method

.method public setHierarchySourceId(J)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;
    .locals 1
    .param p1, "value"    # J

    .line 1399
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->copyOnWrite()V

    .line 1400
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;

    invoke-static {v0, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->access$2300(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;J)V

    .line 1401
    return-object p0
.end method

.method public setMetadata(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto$Builder;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto$Builder;

    .line 1437
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->copyOnWrite()V

    .line 1438
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;

    invoke-static {v0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->access$2600(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto$Builder;)V

    .line 1439
    return-object p0
.end method

.method public setMetadata(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    .line 1428
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->copyOnWrite()V

    .line 1429
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;

    invoke-static {v0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->access$2500(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;)V

    .line 1430
    return-object p0
.end method

.method public setResultId(I)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 1341
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->copyOnWrite()V

    .line 1342
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;

    invoke-static {v0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->access$1900(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;I)V

    .line 1343
    return-object p0
.end method

.method public setResultType(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$ResultTypeProto;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$ResultTypeProto;

    .line 1370
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->copyOnWrite()V

    .line 1371
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;

    invoke-static {v0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->access$2100(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$ResultTypeProto;)V

    .line 1372
    return-object p0
.end method

.method public setSourceCheckClass(Ljava/lang/String;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1303
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->copyOnWrite()V

    .line 1304
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;

    invoke-static {v0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->access$1600(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;Ljava/lang/String;)V

    .line 1305
    return-object p0
.end method

.method public setSourceCheckClassBytes(Lcom/google/protobuf/ByteString;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1320
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->copyOnWrite()V

    .line 1321
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;

    invoke-static {v0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;->access$1800(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AccessibilityHierarchyCheckResultProto;Lcom/google/protobuf/ByteString;)V

    .line 1322
    return-object p0
.end method
