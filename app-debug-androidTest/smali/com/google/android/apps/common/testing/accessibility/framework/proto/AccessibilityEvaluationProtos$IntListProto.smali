.class public final Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "AccessibilityEvaluationProtos.java"

# interfaces
.implements Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IntListProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;",
        "Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto$Builder;",
        ">;",
        "Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProtoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUES_FIELD_NUMBER:I = 0x1


# instance fields
.field private values_:Lcom/google/protobuf/Internal$IntList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2924
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;

    invoke-direct {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;-><init>()V

    sput-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;

    .line 2925
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->makeImmutable()V

    .line 2926
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2595
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2596
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->values_:Lcom/google/protobuf/Internal$IntList;

    .line 2597
    return-void
.end method

.method static synthetic access$4900()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;
    .locals 1

    .line 2590
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;II)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 2590
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->setValues(II)V

    return-void
.end method

.method static synthetic access$5100(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;
    .param p1, "x1"    # I

    .line 2590
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->addValues(I)V

    return-void
.end method

.method static synthetic access$5200(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 2590
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->addAllValues(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;

    .line 2590
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->clearValues()V

    return-void
.end method

.method private addAllValues(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2645
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->ensureValuesIsMutable()V

    .line 2646
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->values_:Lcom/google/protobuf/Internal$IntList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2648
    return-void
.end method

.method private addValues(I)V
    .locals 1
    .param p1, "value"    # I

    .line 2637
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->ensureValuesIsMutable()V

    .line 2638
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->values_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    .line 2639
    return-void
.end method

.method private clearValues()V
    .locals 1

    .line 2653
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->values_:Lcom/google/protobuf/Internal$IntList;

    .line 2654
    return-void
.end method

.method private ensureValuesIsMutable()V
    .locals 1

    .line 2620
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->values_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$IntList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2621
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->values_:Lcom/google/protobuf/Internal$IntList;

    .line 2622
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->values_:Lcom/google/protobuf/Internal$IntList;

    .line 2624
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;
    .locals 1

    .line 2929
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto$Builder;
    .locals 1

    .line 2745
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;

    .line 2748
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto$Builder;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2722
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;

    invoke-static {v0, p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2728
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;

    invoke-static {v0, p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2686
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2693
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2733
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2740
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2710
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2717
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2698
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2705
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;",
            ">;"
        }
    .end annotation

    .line 2935
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setValues(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 2630
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->ensureValuesIsMutable()V

    .line 2631
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->values_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$IntList;->setInt(II)I

    .line 2632
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 2830
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2917
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2908
    :pswitch_0
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;

    monitor-enter v0

    .line 2909
    :try_start_0
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v1, :cond_0

    .line 2910
    new-instance v1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;

    invoke-direct {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 2912
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2914
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0

    .line 2854
    :pswitch_1
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/CodedInputStream;

    .line 2856
    .local v0, "input":Lcom/google/protobuf/CodedInputStream;
    move-object v1, p3

    check-cast v1, Lcom/google/protobuf/ExtensionRegistryLite;

    .line 2859
    .local v1, "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    const/4 v2, 0x0

    .line 2860
    .local v2, "done":Z
    :goto_1
    if-nez v2, :cond_6

    .line 2861
    :try_start_1
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 2862
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 2867
    invoke-virtual {p0, v3, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v4

    goto :goto_3

    .line 2881
    :sswitch_0
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v4

    .line 2882
    .local v4, "length":I
    invoke-virtual {v0, v4}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v5

    .line 2883
    .local v5, "limit":I
    iget-object v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->values_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v6}, Lcom/google/protobuf/Internal$IntList;->isModifiable()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_2

    .line 2884
    iget-object v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->values_:Lcom/google/protobuf/Internal$IntList;

    .line 2885
    invoke-static {v6}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->values_:Lcom/google/protobuf/Internal$IntList;

    .line 2887
    :cond_2
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_3

    .line 2888
    iget-object v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->values_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_2

    .line 2890
    :cond_3
    invoke-virtual {v0, v5}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    .line 2891
    goto :goto_4

    .line 2873
    .end local v4    # "length":I
    .end local v5    # "limit":I
    :sswitch_1
    iget-object v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->values_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v4}, Lcom/google/protobuf/Internal$IntList;->isModifiable()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2874
    iget-object v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->values_:Lcom/google/protobuf/Internal$IntList;

    .line 2875
    invoke-static {v4}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->values_:Lcom/google/protobuf/Internal$IntList;

    .line 2877
    :cond_4
    iget-object v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->values_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2878
    goto :goto_4

    .line 2864
    :sswitch_2
    const/4 v2, 0x1

    .line 2865
    goto :goto_4

    .line 2867
    :goto_3
    if-nez v4, :cond_5

    .line 2868
    const/4 v2, 0x1

    .line 2894
    .end local v3    # "tag":I
    :cond_5
    :goto_4
    goto :goto_1

    .line 2901
    .end local v2    # "done":Z
    :catchall_1
    move-exception v2

    goto :goto_5

    .line 2897
    :catch_0
    move-exception v2

    .line 2898
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 2900
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

    .line 2895
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 2896
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

    .line 2902
    .end local v2    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :goto_5
    throw v2

    :cond_6
    nop

    .line 2905
    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :pswitch_2
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;

    return-object v0

    .line 2845
    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 2846
    .local v0, "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    move-object v1, p3

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;

    .line 2847
    .local v1, "other":Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;
    iget-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->values_:Lcom/google/protobuf/Internal$IntList;

    iget-object v3, v1, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->values_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitIntList(Lcom/google/protobuf/Internal$IntList;Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->values_:Lcom/google/protobuf/Internal$IntList;

    .line 2848
    sget-object v2, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    .line 2851
    return-object p0

    .line 2842
    .end local v0    # "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    .end local v1    # "other":Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;
    :pswitch_4
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto$Builder;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$1;)V

    return-object v0

    .line 2838
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->values_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$IntList;->makeImmutable()V

    .line 2839
    return-object v1

    .line 2835
    :pswitch_6
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;

    return-object v0

    .line 2832
    :pswitch_7
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;

    invoke-direct {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;-><init>()V

    return-object v0

    nop

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
        0x0 -> :sswitch_2
        0x8 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public getSerializedSize()I
    .locals 4

    .line 2665
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->memoizedSerializedSize:I

    .line 2666
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2668
    :cond_0
    const/4 v0, 0x0

    .line 2670
    const/4 v1, 0x0

    .line 2671
    .local v1, "dataSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->values_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v3}, Lcom/google/protobuf/Internal$IntList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2672
    iget-object v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->values_:Lcom/google/protobuf/Internal$IntList;

    .line 2673
    invoke-interface {v3, v2}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 2671
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2675
    .end local v2    # "i":I
    :cond_1
    add-int/2addr v0, v1

    .line 2676
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->getValuesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 2678
    .end local v1    # "dataSize":I
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 2679
    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->memoizedSerializedSize:I

    .line 2680
    return v0
.end method

.method public getValues(I)I
    .locals 1
    .param p1, "index"    # I

    .line 2617
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->values_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getValuesCount()I
    .locals 1

    .line 2611
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->values_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$IntList;->size()I

    move-result v0

    return v0
.end method

.method public getValuesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2605
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->values_:Lcom/google/protobuf/Internal$IntList;

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2658
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->values_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v1}, Lcom/google/protobuf/Internal$IntList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2659
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->values_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2658
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2661
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$IntListProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 2662
    return-void
.end method
