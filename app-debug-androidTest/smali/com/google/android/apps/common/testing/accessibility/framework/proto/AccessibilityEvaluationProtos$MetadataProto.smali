.class public final Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "AccessibilityEvaluationProtos.java"

# interfaces
.implements Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MetadataProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto$Builder;,
        Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto$MetadataMapDefaultEntryHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;",
        "Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto$Builder;",
        ">;",
        "Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProtoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

.field public static final METADATA_MAP_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private metadataMap_:Lcom/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2140
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    invoke-direct {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;-><init>()V

    sput-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    .line 2141
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->makeImmutable()V

    .line 2142
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1761
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1774
    nop

    .line 1776
    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->metadataMap_:Lcom/google/protobuf/MapFieldLite;

    .line 1762
    return-void
.end method

.method static synthetic access$3900()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;
    .locals 1

    .line 1756
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    .line 1756
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->getMutableMetadataMapMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;
    .locals 1

    .line 2145
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    return-object v0
.end method

.method private getMutableMetadataMapMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;",
            ">;"
        }
    .end annotation

    .line 1847
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->internalGetMutableMetadataMap()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method private internalGetMetadataMap()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;",
            ">;"
        }
    .end annotation

    .line 1779
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->metadataMap_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private internalGetMutableMetadataMap()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;",
            ">;"
        }
    .end annotation

    .line 1783
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->metadataMap_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1784
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->metadataMap_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->metadataMap_:Lcom/google/protobuf/MapFieldLite;

    .line 1786
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->metadataMap_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto$Builder;
    .locals 1

    .line 1937
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    .line 1940
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto$Builder;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1914
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    invoke-static {v0, p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1920
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    invoke-static {v0, p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1878
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1885
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1925
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1932
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1902
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1909
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1890
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1897
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;",
            ">;"
        }
    .end annotation

    .line 2151
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public containsMetadataMap(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1798
    if-eqz p1, :cond_0

    .line 1799
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->internalGetMetadataMap()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/MapFieldLite;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1798
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 2060
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2133
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2124
    :pswitch_0
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    monitor-enter v0

    .line 2125
    :try_start_0
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v1, :cond_0

    .line 2126
    new-instance v1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    invoke-direct {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 2128
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2130
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0

    .line 2085
    :pswitch_1
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/CodedInputStream;

    .line 2087
    .local v0, "input":Lcom/google/protobuf/CodedInputStream;
    move-object v1, p3

    check-cast v1, Lcom/google/protobuf/ExtensionRegistryLite;

    .line 2090
    .local v1, "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    const/4 v2, 0x0

    .line 2091
    .local v2, "done":Z
    :goto_1
    if-nez v2, :cond_4

    .line 2092
    :try_start_1
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 2093
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 2098
    invoke-virtual {p0, v3, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v4

    goto :goto_2

    .line 2104
    :sswitch_0
    iget-object v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->metadataMap_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v4}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2105
    iget-object v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->metadataMap_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v4}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->metadataMap_:Lcom/google/protobuf/MapFieldLite;

    .line 2107
    :cond_2
    sget-object v4, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto$MetadataMapDefaultEntryHolder;->defaultEntry:Lcom/google/protobuf/MapEntryLite;

    iget-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->metadataMap_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v4, v5, v0, v1}, Lcom/google/protobuf/MapEntryLite;->parseInto(Lcom/google/protobuf/MapFieldLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    .line 2095
    :sswitch_1
    const/4 v2, 0x1

    .line 2096
    goto :goto_3

    .line 2098
    :goto_2
    if-nez v4, :cond_3

    .line 2099
    const/4 v2, 0x1

    .line 2110
    .end local v3    # "tag":I
    :cond_3
    :goto_3
    goto :goto_1

    .line 2117
    .end local v2    # "done":Z
    :catchall_1
    move-exception v2

    goto :goto_4

    .line 2113
    :catch_0
    move-exception v2

    .line 2114
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 2116
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

    .line 2111
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 2112
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

    .line 2118
    .end local v2    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :goto_4
    throw v2

    :cond_4
    nop

    .line 2121
    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :pswitch_2
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    return-object v0

    .line 2075
    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 2076
    .local v0, "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    move-object v1, p3

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    .line 2077
    .local v1, "other":Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;
    iget-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->metadataMap_:Lcom/google/protobuf/MapFieldLite;

    .line 2078
    invoke-direct {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->internalGetMetadataMap()Lcom/google/protobuf/MapFieldLite;

    move-result-object v3

    .line 2077
    invoke-interface {v0, v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMap(Lcom/google/protobuf/MapFieldLite;Lcom/google/protobuf/MapFieldLite;)Lcom/google/protobuf/MapFieldLite;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->metadataMap_:Lcom/google/protobuf/MapFieldLite;

    .line 2079
    sget-object v2, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    .line 2082
    return-object p0

    .line 2072
    .end local v0    # "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    .end local v1    # "other":Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;
    :pswitch_4
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto$Builder;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$1;)V

    return-object v0

    .line 2068
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->metadataMap_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->makeImmutable()V

    .line 2069
    return-object v1

    .line 2065
    :pswitch_6
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    return-object v0

    .line 2062
    :pswitch_7
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    invoke-direct {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;-><init>()V

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
        0x0 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public getMetadataMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1806
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->getMetadataMapMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMetadataMapCount()I
    .locals 1

    .line 1790
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->internalGetMetadataMap()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->size()I

    move-result v0

    return v0
.end method

.method public getMetadataMapMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;",
            ">;"
        }
    .end annotation

    .line 1813
    nop

    .line 1814
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->internalGetMetadataMap()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 1813
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMetadataMapOrDefault(Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;

    .line 1823
    if-eqz p1, :cond_1

    .line 1824
    nop

    .line 1825
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->internalGetMetadataMap()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 1826
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    return-object v1

    .line 1823
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;>;"
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public getMetadataMapOrThrow(Ljava/lang/String;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 1834
    if-eqz p1, :cond_1

    .line 1835
    nop

    .line 1836
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->internalGetMetadataMap()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 1837
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1840
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;

    return-object v1

    .line 1838
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 1834
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;>;"
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public getSerializedSize()I
    .locals 7

    .line 1861
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->memoizedSerializedSize:I

    .line 1862
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 1864
    :cond_0
    const/4 v0, 0x0

    .line 1866
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->internalGetMetadataMap()Lcom/google/protobuf/MapFieldLite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/MapFieldLite;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1867
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;>;"
    sget-object v3, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto$MetadataMapDefaultEntryHolder;->defaultEntry:Lcom/google/protobuf/MapEntryLite;

    .line 1868
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;

    .line 1867
    const/4 v6, 0x1

    invoke-virtual {v3, v6, v4, v5}, Lcom/google/protobuf/MapEntryLite;->computeMessageSize(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 1869
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;>;"
    goto :goto_0

    .line 1870
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1871
    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->memoizedSerializedSize:I

    .line 1872
    return v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 6
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1853
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->internalGetMetadataMap()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1854
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;>;"
    sget-object v2, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto$MetadataMapDefaultEntryHolder;->defaultEntry:Lcom/google/protobuf/MapEntryLite;

    .line 1855
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;

    .line 1854
    const/4 v5, 0x1

    invoke-virtual {v2, p1, v5, v3, v4}, Lcom/google/protobuf/MapEntryLite;->serializeTo(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1856
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;>;"
    goto :goto_0

    .line 1857
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1858
    return-void
.end method
