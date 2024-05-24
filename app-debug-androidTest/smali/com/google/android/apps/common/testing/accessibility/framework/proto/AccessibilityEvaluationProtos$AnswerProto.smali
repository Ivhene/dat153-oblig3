.class public final Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "AccessibilityEvaluationProtos.java"

# interfaces
.implements Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnswerProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;",
        "Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;",
        ">;",
        "Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProtoOrBuilder;"
    }
.end annotation


# static fields
.field public static final ANSWER_TYPE_CLASS_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

.field public static final METADATA_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;",
            ">;"
        }
    .end annotation
.end field

.field public static final QUESTION_FIELD_NUMBER:I = 0x2


# instance fields
.field private answerTypeClass_:Ljava/lang/String;

.field private bitField0_:I

.field private metadata_:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

.field private question_:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6153
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    invoke-direct {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;-><init>()V

    sput-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    .line 6154
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->makeImmutable()V

    .line 6155
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5621
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5622
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->answerTypeClass_:Ljava/lang/String;

    .line 5623
    return-void
.end method

.method static synthetic access$10800()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;
    .locals 1

    .line 5616
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    return-object v0
.end method

.method static synthetic access$10900(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;
    .param p1, "x1"    # Ljava/lang/String;

    .line 5616
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->setAnswerTypeClass(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11000(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    .line 5616
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->clearAnswerTypeClass()V

    return-void
.end method

.method static synthetic access$11100(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 5616
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->setAnswerTypeClassBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11200(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;
    .param p1, "x1"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;

    .line 5616
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->setQuestion(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;)V

    return-void
.end method

.method static synthetic access$11300(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto$Builder;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;
    .param p1, "x1"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto$Builder;

    .line 5616
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->setQuestion(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto$Builder;)V

    return-void
.end method

.method static synthetic access$11400(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;
    .param p1, "x1"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;

    .line 5616
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->mergeQuestion(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;)V

    return-void
.end method

.method static synthetic access$11500(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    .line 5616
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->clearQuestion()V

    return-void
.end method

.method static synthetic access$11600(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;
    .param p1, "x1"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    .line 5616
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->setMetadata(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;)V

    return-void
.end method

.method static synthetic access$11700(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto$Builder;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;
    .param p1, "x1"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto$Builder;

    .line 5616
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->setMetadata(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto$Builder;)V

    return-void
.end method

.method static synthetic access$11800(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;
    .param p1, "x1"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    .line 5616
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->mergeMetadata(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;)V

    return-void
.end method

.method static synthetic access$11900(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    .line 5616
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->clearMetadata()V

    return-void
.end method

.method private clearAnswerTypeClass()V
    .locals 1

    .line 5661
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->bitField0_:I

    .line 5662
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->getDefaultInstance()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->getAnswerTypeClass()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->answerTypeClass_:Ljava/lang/String;

    .line 5663
    return-void
.end method

.method private clearMetadata()V
    .locals 1

    .line 5776
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->metadata_:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    .line 5777
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->bitField0_:I

    .line 5778
    return-void
.end method

.method private clearQuestion()V
    .locals 1

    .line 5724
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->question_:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;

    .line 5725
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->bitField0_:I

    .line 5726
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;
    .locals 1

    .line 6158
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    return-object v0
.end method

.method private mergeMetadata(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;)V
    .locals 2
    .param p1, "value"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    .line 5764
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->metadata_:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    if-eqz v0, :cond_0

    .line 5765
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->getDefaultInstance()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5766
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->metadata_:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    .line 5767
    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->newBuilder(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto$Builder;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->metadata_:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    goto :goto_0

    .line 5769
    :cond_0
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->metadata_:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    .line 5771
    :goto_0
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->bitField0_:I

    .line 5772
    return-void
.end method

.method private mergeQuestion(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;)V
    .locals 2
    .param p1, "value"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;

    .line 5712
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->question_:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;

    if-eqz v0, :cond_0

    .line 5713
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;->getDefaultInstance()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5714
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->question_:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;

    .line 5715
    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;->newBuilder(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto$Builder;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->question_:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;

    goto :goto_0

    .line 5717
    :cond_0
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->question_:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;

    .line 5719
    :goto_0
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->bitField0_:I

    .line 5720
    return-void
.end method

.method public static newBuilder()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;
    .locals 1

    .line 5878
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    .line 5881
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5855
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    invoke-static {v0, p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5861
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    invoke-static {v0, p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5819
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5826
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5866
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5873
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5843
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5850
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5831
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5838
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;",
            ">;"
        }
    .end annotation

    .line 6164
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAnswerTypeClass(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 5651
    if-eqz p1, :cond_0

    .line 5654
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->bitField0_:I

    .line 5655
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->answerTypeClass_:Ljava/lang/String;

    .line 5656
    return-void

    .line 5652
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setAnswerTypeClassBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 5669
    if-eqz p1, :cond_0

    .line 5672
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->bitField0_:I

    .line 5673
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->answerTypeClass_:Ljava/lang/String;

    .line 5674
    return-void

    .line 5670
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setMetadata(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto$Builder;

    .line 5757
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->metadata_:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    .line 5758
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->bitField0_:I

    .line 5759
    return-void
.end method

.method private setMetadata(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;)V
    .locals 1
    .param p1, "value"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    .line 5746
    if-eqz p1, :cond_0

    .line 5749
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->metadata_:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    .line 5750
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->bitField0_:I

    .line 5751
    return-void

    .line 5747
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setQuestion(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto$Builder;

    .line 5705
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->question_:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;

    .line 5706
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->bitField0_:I

    .line 5707
    return-void
.end method

.method private setQuestion(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;)V
    .locals 1
    .param p1, "value"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;

    .line 5694
    if-eqz p1, :cond_0

    .line 5697
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->question_:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;

    .line 5698
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->bitField0_:I

    .line 5699
    return-void

    .line 5695
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 6044
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 6146
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 6137
    :pswitch_0
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    monitor-enter v0

    .line 6138
    :try_start_0
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v1, :cond_0

    .line 6139
    new-instance v1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    invoke-direct {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 6141
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6143
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0

    .line 6072
    :pswitch_1
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/CodedInputStream;

    .line 6074
    .local v0, "input":Lcom/google/protobuf/CodedInputStream;
    move-object v1, p3

    check-cast v1, Lcom/google/protobuf/ExtensionRegistryLite;

    .line 6077
    .local v1, "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    const/4 v2, 0x0

    .line 6078
    .local v2, "done":Z
    :goto_1
    if-nez v2, :cond_7

    .line 6079
    :try_start_1
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 6080
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 6085
    invoke-virtual {p0, v3, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v4

    goto/16 :goto_2

    .line 6110
    :sswitch_0
    const/4 v4, 0x0

    .line 6111
    .local v4, "subBuilder":Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto$Builder;
    iget v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->bitField0_:I

    const/4 v6, 0x4

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_2

    .line 6112
    iget-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->metadata_:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    invoke-virtual {v5}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto$Builder;

    move-object v4, v5

    .line 6114
    :cond_2
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->parser()Lcom/google/protobuf/Parser;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    iput-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->metadata_:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    .line 6115
    if-eqz v4, :cond_3

    .line 6116
    invoke-virtual {v4, v5}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 6117
    invoke-virtual {v4}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    iput-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->metadata_:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    .line 6119
    :cond_3
    iget v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->bitField0_:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->bitField0_:I

    .line 6120
    goto :goto_3

    .line 6097
    .end local v4    # "subBuilder":Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto$Builder;
    :sswitch_1
    const/4 v4, 0x0

    .line 6098
    .local v4, "subBuilder":Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto$Builder;
    iget v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->bitField0_:I

    const/4 v6, 0x2

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_4

    .line 6099
    iget-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->question_:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;

    invoke-virtual {v5}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto$Builder;

    move-object v4, v5

    .line 6101
    :cond_4
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;->parser()Lcom/google/protobuf/Parser;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;

    iput-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->question_:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;

    .line 6102
    if-eqz v4, :cond_5

    .line 6103
    invoke-virtual {v4, v5}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 6104
    invoke-virtual {v4}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;

    iput-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->question_:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;

    .line 6106
    :cond_5
    iget v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->bitField0_:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->bitField0_:I

    .line 6107
    goto :goto_3

    .line 6091
    .end local v4    # "subBuilder":Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto$Builder;
    :sswitch_2
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6092
    .local v4, "s":Ljava/lang/String;
    iget v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->bitField0_:I

    .line 6093
    iput-object v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->answerTypeClass_:Ljava/lang/String;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6094
    goto :goto_3

    .line 6082
    .end local v4    # "s":Ljava/lang/String;
    :sswitch_3
    const/4 v2, 0x1

    .line 6083
    goto :goto_3

    .line 6085
    :goto_2
    if-nez v4, :cond_6

    .line 6086
    const/4 v2, 0x1

    .line 6123
    .end local v3    # "tag":I
    :cond_6
    :goto_3
    goto :goto_1

    .line 6130
    .end local v2    # "done":Z
    :catchall_1
    move-exception v2

    goto :goto_4

    .line 6126
    :catch_0
    move-exception v2

    .line 6127
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 6129
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3

    .line 6124
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 6125
    .local v2, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6131
    .end local v2    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :goto_4
    throw v2

    :cond_7
    nop

    .line 6134
    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :pswitch_2
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    return-object v0

    .line 6058
    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 6059
    .local v0, "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    move-object v1, p3

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    .line 6060
    .local v1, "other":Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;
    nop

    .line 6061
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->hasAnswerTypeClass()Z

    move-result v2

    iget-object v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->answerTypeClass_:Ljava/lang/String;

    .line 6062
    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->hasAnswerTypeClass()Z

    move-result v4

    iget-object v5, v1, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->answerTypeClass_:Ljava/lang/String;

    .line 6060
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->answerTypeClass_:Ljava/lang/String;

    .line 6063
    iget-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->question_:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;

    iget-object v3, v1, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->question_:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;

    invoke-interface {v0, v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;

    iput-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->question_:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;

    .line 6064
    iget-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->metadata_:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    iget-object v3, v1, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->metadata_:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    invoke-interface {v0, v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    iput-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->metadata_:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    .line 6065
    sget-object v2, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne v0, v2, :cond_8

    .line 6067
    iget v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->bitField0_:I

    iget v3, v1, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->bitField0_:I

    .line 6069
    :cond_8
    return-object p0

    .line 6055
    .end local v0    # "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    .end local v1    # "other":Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;
    :pswitch_4
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto$Builder;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$1;)V

    return-object v0

    .line 6052
    :pswitch_5
    return-object v1

    .line 6049
    :pswitch_6
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    return-object v0

    .line 6046
    :pswitch_7
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;

    invoke-direct {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;-><init>()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0xa -> :sswitch_2
        0x12 -> :sswitch_1
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method public getAnswerTypeClass()Ljava/lang/String;
    .locals 1

    .line 5637
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->answerTypeClass_:Ljava/lang/String;

    return-object v0
.end method

.method public getAnswerTypeClassBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5644
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->answerTypeClass_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;
    .locals 1

    .line 5740
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->metadata_:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->getDefaultInstance()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getQuestion()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;
    .locals 1

    .line 5688
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->question_:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;->getDefaultInstance()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 5795
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->memoizedSerializedSize:I

    .line 5796
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 5798
    :cond_0
    const/4 v0, 0x0

    .line 5799
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 5800
    nop

    .line 5801
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->getAnswerTypeClass()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5803
    :cond_1
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 5804
    nop

    .line 5805
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->getQuestion()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5807
    :cond_2
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 5808
    nop

    .line 5809
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->getMetadata()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5811
    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 5812
    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->memoizedSerializedSize:I

    .line 5813
    return v0
.end method

.method public hasAnswerTypeClass()Z
    .locals 2

    .line 5631
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasMetadata()Z
    .locals 2

    .line 5734
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasQuestion()Z
    .locals 2

    .line 5682
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5782
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 5783
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->getAnswerTypeClass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 5785
    :cond_0
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 5786
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->getQuestion()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$QuestionProto;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 5788
    :cond_1
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 5789
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->getMetadata()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 5791
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$AnswerProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 5792
    return-void
.end method
