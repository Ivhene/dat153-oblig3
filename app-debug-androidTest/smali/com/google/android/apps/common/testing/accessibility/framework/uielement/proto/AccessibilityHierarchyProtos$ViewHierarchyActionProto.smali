.class public final Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "AccessibilityHierarchyProtos.java"

# interfaces
.implements Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHierarchyActionProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;",
        "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto$Builder;",
        ">;",
        "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProtoOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACTION_ID_FIELD_NUMBER:I = 0x1

.field public static final ACTION_LABEL_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private actionId_:I

.field private actionLabel_:Ljava/lang/String;

.field private bitField0_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9963
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    invoke-direct {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;-><init>()V

    sput-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    .line 9964
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->makeImmutable()V

    .line 9965
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 9594
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 9595
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->actionLabel_:Ljava/lang/String;

    .line 9596
    return-void
.end method

.method static synthetic access$21700()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;
    .locals 1

    .line 9589
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    return-object v0
.end method

.method static synthetic access$21800(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;
    .param p1, "x1"    # I

    .line 9589
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->setActionId(I)V

    return-void
.end method

.method static synthetic access$21900(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    .line 9589
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->clearActionId()V

    return-void
.end method

.method static synthetic access$22000(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;
    .param p1, "x1"    # Ljava/lang/String;

    .line 9589
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->setActionLabel(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$22100(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    .line 9589
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->clearActionLabel()V

    return-void
.end method

.method static synthetic access$22200(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 9589
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->setActionLabelBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearActionId()V
    .locals 1

    .line 9623
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->bitField0_:I

    .line 9624
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->actionId_:I

    .line 9625
    return-void
.end method

.method private clearActionLabel()V
    .locals 1

    .line 9663
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->bitField0_:I

    .line 9664
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->getDefaultInstance()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->getActionLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->actionLabel_:Ljava/lang/String;

    .line 9665
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;
    .locals 1

    .line 9968
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto$Builder;
    .locals 1

    .line 9769
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    .line 9772
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto$Builder;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9746
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    invoke-static {v0, p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9752
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    invoke-static {v0, p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9710
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9717
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9757
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9764
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9734
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9741
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9722
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9729
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;",
            ">;"
        }
    .end annotation

    .line 9974
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setActionId(I)V
    .locals 1
    .param p1, "value"    # I

    .line 9616
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->bitField0_:I

    .line 9617
    iput p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->actionId_:I

    .line 9618
    return-void
.end method

.method private setActionLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 9653
    if-eqz p1, :cond_0

    .line 9656
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->bitField0_:I

    .line 9657
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->actionLabel_:Ljava/lang/String;

    .line 9658
    return-void

    .line 9654
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setActionLabelBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 9671
    if-eqz p1, :cond_0

    .line 9674
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->bitField0_:I

    .line 9675
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->actionLabel_:Ljava/lang/String;

    .line 9676
    return-void

    .line 9672
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 9874
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 9956
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 9947
    :pswitch_0
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    monitor-enter v0

    .line 9948
    :try_start_0
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v1, :cond_0

    .line 9949
    new-instance v1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    invoke-direct {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 9951
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 9953
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0

    .line 9903
    :pswitch_1
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/CodedInputStream;

    .line 9905
    .local v0, "input":Lcom/google/protobuf/CodedInputStream;
    move-object v1, p3

    check-cast v1, Lcom/google/protobuf/ExtensionRegistryLite;

    .line 9908
    .local v1, "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    const/4 v2, 0x0

    .line 9909
    .local v2, "done":Z
    :goto_1
    if-nez v2, :cond_3

    .line 9910
    :try_start_1
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 9911
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 9916
    invoke-virtual {p0, v3, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v4

    goto :goto_2

    .line 9927
    :sswitch_0
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v4

    .line 9928
    .local v4, "s":Ljava/lang/String;
    iget v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->bitField0_:I

    .line 9929
    iput-object v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->actionLabel_:Ljava/lang/String;

    .line 9930
    goto :goto_3

    .line 9922
    .end local v4    # "s":Ljava/lang/String;
    :sswitch_1
    iget v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->bitField0_:I

    .line 9923
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->actionId_:I
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9924
    goto :goto_3

    .line 9913
    :sswitch_2
    const/4 v2, 0x1

    .line 9914
    goto :goto_3

    .line 9916
    :goto_2
    if-nez v4, :cond_2

    .line 9917
    const/4 v2, 0x1

    .line 9933
    .end local v3    # "tag":I
    :cond_2
    :goto_3
    goto :goto_1

    .line 9940
    .end local v2    # "done":Z
    :catchall_1
    move-exception v2

    goto :goto_4

    .line 9936
    :catch_0
    move-exception v2

    .line 9937
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 9939
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

    .line 9934
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 9935
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

    .line 9941
    .end local v2    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :goto_4
    throw v2

    :cond_3
    nop

    .line 9944
    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :pswitch_2
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    return-object v0

    .line 9888
    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 9889
    .local v0, "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    move-object v1, p3

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    .line 9890
    .local v1, "other":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;
    nop

    .line 9891
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->hasActionId()Z

    move-result v2

    iget v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->actionId_:I

    .line 9892
    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->hasActionId()Z

    move-result v4

    iget v5, v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->actionId_:I

    .line 9890
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->actionId_:I

    .line 9893
    nop

    .line 9894
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->hasActionLabel()Z

    move-result v2

    iget-object v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->actionLabel_:Ljava/lang/String;

    .line 9895
    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->hasActionLabel()Z

    move-result v4

    iget-object v5, v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->actionLabel_:Ljava/lang/String;

    .line 9893
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->actionLabel_:Ljava/lang/String;

    .line 9896
    sget-object v2, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne v0, v2, :cond_4

    .line 9898
    iget v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->bitField0_:I

    iget v3, v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->bitField0_:I

    .line 9900
    :cond_4
    return-object p0

    .line 9885
    .end local v0    # "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    .end local v1    # "other":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;
    :pswitch_4
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto$Builder;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$1;)V

    return-object v0

    .line 9882
    :pswitch_5
    return-object v1

    .line 9879
    :pswitch_6
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    return-object v0

    .line 9876
    :pswitch_7
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    invoke-direct {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;-><init>()V

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
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public getActionId()I
    .locals 1

    .line 9610
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->actionId_:I

    return v0
.end method

.method public getActionLabel()Ljava/lang/String;
    .locals 1

    .line 9639
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->actionLabel_:Ljava/lang/String;

    return-object v0
.end method

.method public getActionLabelBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9646
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->actionLabel_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 9690
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->memoizedSerializedSize:I

    .line 9691
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 9693
    :cond_0
    const/4 v0, 0x0

    .line 9694
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 9695
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->actionId_:I

    .line 9696
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9698
    :cond_1
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 9699
    nop

    .line 9700
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->getActionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9702
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 9703
    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->memoizedSerializedSize:I

    .line 9704
    return v0
.end method

.method public hasActionId()Z
    .locals 2

    .line 9604
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasActionLabel()Z
    .locals 2

    .line 9633
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->bitField0_:I

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

    .line 9680
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 9681
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->actionId_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9683
    :cond_0
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 9684
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->getActionLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 9686
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 9687
    return-void
.end method
