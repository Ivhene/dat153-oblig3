.class public Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;
.super Ljava/lang/Object;
.source "HashMapResultMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TypedValue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;
    }
.end annotation


# static fields
.field private static final TYPE_MAP:Lcom/google/common/collect/EnumBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/EnumBiMap<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$TypeProto;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

.field public value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 451
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->BOOLEAN:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    sget-object v2, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$TypeProto;->BOOLEAN:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$TypeProto;

    .line 452
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->BYTE:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    sget-object v2, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$TypeProto;->BYTE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$TypeProto;

    .line 453
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->SHORT:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    sget-object v2, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$TypeProto;->SHORT:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$TypeProto;

    .line 454
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->CHAR:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    sget-object v2, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$TypeProto;->CHAR:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$TypeProto;

    .line 455
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->INT:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    sget-object v2, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$TypeProto;->INT:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$TypeProto;

    .line 456
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->FLOAT:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    sget-object v2, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$TypeProto;->FLOAT:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$TypeProto;

    .line 457
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->LONG:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    sget-object v2, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$TypeProto;->LONG:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$TypeProto;

    .line 458
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->DOUBLE:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    sget-object v2, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$TypeProto;->DOUBLE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$TypeProto;

    .line 459
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->STRING:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    sget-object v2, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$TypeProto;->STRING:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$TypeProto;

    .line 460
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->STRING_LIST:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    sget-object v2, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$TypeProto;->STRING_LIST:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$TypeProto;

    .line 461
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->INTEGER_LIST:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    sget-object v2, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$TypeProto;->INT_LIST:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$TypeProto;

    .line 462
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 463
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 450
    invoke-static {v0}, Lcom/google/common/collect/EnumBiMap;->create(Ljava/util/Map;)Lcom/google/common/collect/EnumBiMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->TYPE_MAP:Lcom/google/common/collect/EnumBiMap;

    .line 449
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;Ljava/lang/Object;)V
    .locals 0
    .param p1, "type"    # Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;
    .param p2, "value"    # Ljava/lang/Object;

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    .line 507
    iput-object p2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    .line 508
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;)V
    .locals 2
    .param p1, "proto"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;

    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 511
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;->getType()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$TypeProto;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->fromProto(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$TypeProto;)Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    .line 512
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$1;->$SwitchMap$com$google$android$apps$common$testing$accessibility$framework$HashMapResultMetadata$TypedValue$Type:[I

    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 544
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;->getIntListValue()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->getValuesList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 541
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;->getStringListValue()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$StringListProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$StringListProto;->getValuesList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    .line 542
    goto/16 :goto_0

    .line 538
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;->getStringValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    .line 539
    goto/16 :goto_0

    .line 535
    :pswitch_3
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;->getDoubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    .line 536
    goto :goto_0

    .line 532
    :pswitch_4
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;->getLongValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    .line 533
    goto :goto_0

    .line 529
    :pswitch_5
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;->getFloatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    .line 530
    goto :goto_0

    .line 526
    :pswitch_6
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;->getIntValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    .line 527
    goto :goto_0

    .line 523
    :pswitch_7
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;->getCharValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    .line 524
    goto :goto_0

    .line 520
    :pswitch_8
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;->getShortValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    .line 521
    goto :goto_0

    .line 517
    :pswitch_9
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;->getByteValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    .line 518
    goto :goto_0

    .line 514
    :pswitch_a
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;->getBooleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    .line 515
    nop

    .line 547
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000()Lcom/google/common/collect/EnumBiMap;
    .locals 1

    .line 446
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->TYPE_MAP:Lcom/google/common/collect/EnumBiMap;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 601
    if-ne p0, p1, :cond_0

    .line 602
    const/4 v0, 0x1

    return v0

    .line 604
    :cond_0
    instance-of v0, p1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 605
    return v1

    .line 608
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;

    .line 610
    .local v0, "that":Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;
    iget-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    iget-object v3, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    if-eq v2, v3, :cond_2

    .line 611
    return v1

    .line 613
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    iget-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 618
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->hashCode()I

    move-result v0

    .line 619
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 620
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public toProto()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;
    .locals 3

    .line 551
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;->newBuilder()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$Builder;

    move-result-object v0

    .line 552
    .local v0, "builder":Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$Builder;
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->toProto()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$TypeProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$Builder;->setType(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$TypeProto;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$Builder;

    .line 553
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$1;->$SwitchMap$com$google$android$apps$common$testing$accessibility$framework$HashMapResultMetadata$TypedValue$Type:[I

    iget-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 592
    :pswitch_0
    nop

    .line 593
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->newBuilder()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    check-cast v2, Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto$Builder;->addAllValues(Ljava/lang/Iterable;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;

    .line 592
    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$Builder;->setIntListValue(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$Builder;

    goto/16 :goto_0

    .line 588
    :pswitch_1
    nop

    .line 589
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$StringListProto;->newBuilder()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$StringListProto$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    check-cast v2, Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$StringListProto$Builder;->addAllValues(Ljava/lang/Iterable;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$StringListProto$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$StringListProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$StringListProto;

    .line 588
    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$Builder;->setStringListValue(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$StringListProto;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$Builder;

    .line 590
    goto/16 :goto_0

    .line 585
    :pswitch_2
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$Builder;->setStringValue(Ljava/lang/String;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$Builder;

    .line 586
    goto/16 :goto_0

    .line 582
    :pswitch_3
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$Builder;->setDoubleValue(D)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$Builder;

    .line 583
    goto/16 :goto_0

    .line 579
    :pswitch_4
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$Builder;->setLongValue(J)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$Builder;

    .line 580
    goto/16 :goto_0

    .line 576
    :pswitch_5
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$Builder;->setFloatValue(F)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$Builder;

    .line 577
    goto :goto_0

    .line 573
    :pswitch_6
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$Builder;->setIntValue(I)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$Builder;

    .line 574
    goto :goto_0

    .line 568
    :pswitch_7
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 569
    .local v1, "charBuffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 570
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$Builder;->setCharValue(Lcom/google/protobuf/ByteString;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$Builder;

    .line 571
    goto :goto_0

    .line 563
    .end local v1    # "charBuffer":Ljava/nio/ByteBuffer;
    :pswitch_8
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 564
    .local v1, "shortBuffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 565
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$Builder;->setShortValue(Lcom/google/protobuf/ByteString;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$Builder;

    .line 566
    goto :goto_0

    .line 558
    .end local v1    # "shortBuffer":Ljava/nio/ByteBuffer;
    :pswitch_9
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 559
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 560
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$Builder;->setByteValue(Lcom/google/protobuf/ByteString;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$Builder;

    .line 561
    goto :goto_0

    .line 555
    .end local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    :pswitch_a
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$Builder;->setBooleanValue(Z)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$Builder;

    .line 556
    nop

    .line 596
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
