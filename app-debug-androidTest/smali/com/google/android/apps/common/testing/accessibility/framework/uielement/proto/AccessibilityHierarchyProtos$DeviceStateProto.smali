.class public final Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "AccessibilityHierarchyProtos.java"

# interfaces
.implements Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceStateProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;",
        "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto$Builder;",
        ">;",
        "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProtoOrBuilder;"
    }
.end annotation


# static fields
.field public static final DEFAULT_DISPLAY_INFO_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

.field public static final LOCALE_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;",
            ">;"
        }
    .end annotation
.end field

.field public static final SDK_VERSION_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private defaultDisplayInfo_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

.field private locale_:Ljava/lang/String;

.field private sdkVersion_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1883
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    invoke-direct {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;-><init>()V

    sput-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    .line 1884
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->makeImmutable()V

    .line 1885
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1336
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1337
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->locale_:Ljava/lang/String;

    .line 1338
    return-void
.end method

.method static synthetic access$2400()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;
    .locals 1

    .line 1331
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;
    .param p1, "x1"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    .line 1331
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->setDefaultDisplayInfo(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto$Builder;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;
    .param p1, "x1"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto$Builder;

    .line 1331
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->setDefaultDisplayInfo(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto$Builder;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;
    .param p1, "x1"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    .line 1331
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->mergeDefaultDisplayInfo(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    .line 1331
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->clearDefaultDisplayInfo()V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;
    .param p1, "x1"    # I

    .line 1331
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->setSdkVersion(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    .line 1331
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->clearSdkVersion()V

    return-void
.end method

.method static synthetic access$3100(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1331
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->setLocale(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    .line 1331
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->clearLocale()V

    return-void
.end method

.method static synthetic access$3300(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 1331
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->setLocaleBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearDefaultDisplayInfo()V
    .locals 1

    .line 1388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->defaultDisplayInfo_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    .line 1389
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->bitField0_:I

    .line 1390
    return-void
.end method

.method private clearLocale()V
    .locals 1

    .line 1482
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->bitField0_:I

    .line 1483
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->getDefaultInstance()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->getLocale()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->locale_:Ljava/lang/String;

    .line 1484
    return-void
.end method

.method private clearSdkVersion()V
    .locals 1

    .line 1417
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->bitField0_:I

    .line 1418
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->sdkVersion_:I

    .line 1419
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;
    .locals 1

    .line 1888
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    return-object v0
.end method

.method private mergeDefaultDisplayInfo(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;)V
    .locals 2
    .param p1, "value"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    .line 1376
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->defaultDisplayInfo_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    if-eqz v0, :cond_0

    .line 1377
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->getDefaultInstance()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1378
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->defaultDisplayInfo_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    .line 1379
    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->newBuilder(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto$Builder;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->defaultDisplayInfo_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    goto :goto_0

    .line 1381
    :cond_0
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->defaultDisplayInfo_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    .line 1383
    :goto_0
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->bitField0_:I

    .line 1384
    return-void
.end method

.method public static newBuilder()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto$Builder;
    .locals 1

    .line 1600
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    .line 1603
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto$Builder;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1577
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    invoke-static {v0, p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1583
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    invoke-static {v0, p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1541
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1548
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1588
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1595
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1565
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1572
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1553
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1560
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;",
            ">;"
        }
    .end annotation

    .line 1894
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDefaultDisplayInfo(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto$Builder;

    .line 1369
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->defaultDisplayInfo_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    .line 1370
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->bitField0_:I

    .line 1371
    return-void
.end method

.method private setDefaultDisplayInfo(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;)V
    .locals 1
    .param p1, "value"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    .line 1358
    if-eqz p1, :cond_0

    .line 1361
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->defaultDisplayInfo_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    .line 1362
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->bitField0_:I

    .line 1363
    return-void

    .line 1359
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setLocale(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1467
    if-eqz p1, :cond_0

    .line 1470
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->bitField0_:I

    .line 1471
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->locale_:Ljava/lang/String;

    .line 1472
    return-void

    .line 1468
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setLocaleBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1495
    if-eqz p1, :cond_0

    .line 1498
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->bitField0_:I

    .line 1499
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->locale_:Ljava/lang/String;

    .line 1500
    return-void

    .line 1496
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setSdkVersion(I)V
    .locals 1
    .param p1, "value"    # I

    .line 1410
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->bitField0_:I

    .line 1411
    iput p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->sdkVersion_:I

    .line 1412
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 1780
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1876
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1867
    :pswitch_0
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    monitor-enter v0

    .line 1868
    :try_start_0
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v1, :cond_0

    .line 1869
    new-instance v1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    invoke-direct {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 1871
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1873
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0

    .line 1810
    :pswitch_1
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/CodedInputStream;

    .line 1812
    .local v0, "input":Lcom/google/protobuf/CodedInputStream;
    move-object v1, p3

    check-cast v1, Lcom/google/protobuf/ExtensionRegistryLite;

    .line 1815
    .local v1, "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    const/4 v2, 0x0

    .line 1816
    .local v2, "done":Z
    :goto_1
    if-nez v2, :cond_5

    .line 1817
    :try_start_1
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 1818
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 1823
    invoke-virtual {p0, v3, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v4

    goto :goto_2

    .line 1847
    :sswitch_0
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1848
    .local v4, "s":Ljava/lang/String;
    iget v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->bitField0_:I

    .line 1849
    iput-object v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->locale_:Ljava/lang/String;

    .line 1850
    goto :goto_3

    .line 1842
    .end local v4    # "s":Ljava/lang/String;
    :sswitch_1
    iget v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->bitField0_:I

    .line 1843
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->sdkVersion_:I

    .line 1844
    goto :goto_3

    .line 1829
    :sswitch_2
    const/4 v4, 0x0

    .line 1830
    .local v4, "subBuilder":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto$Builder;
    iget v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->bitField0_:I

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_2

    .line 1831
    iget-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->defaultDisplayInfo_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    invoke-virtual {v5}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto$Builder;

    move-object v4, v5

    .line 1833
    :cond_2
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->parser()Lcom/google/protobuf/Parser;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    iput-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->defaultDisplayInfo_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    .line 1834
    if-eqz v4, :cond_3

    .line 1835
    invoke-virtual {v4, v5}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1836
    invoke-virtual {v4}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    iput-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->defaultDisplayInfo_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    .line 1838
    :cond_3
    iget v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->bitField0_:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->bitField0_:I
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1839
    goto :goto_3

    .line 1820
    .end local v4    # "subBuilder":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto$Builder;
    :sswitch_3
    const/4 v2, 0x1

    .line 1821
    goto :goto_3

    .line 1823
    :goto_2
    if-nez v4, :cond_4

    .line 1824
    const/4 v2, 0x1

    .line 1853
    .end local v3    # "tag":I
    :cond_4
    :goto_3
    goto :goto_1

    .line 1860
    .end local v2    # "done":Z
    :catchall_1
    move-exception v2

    goto :goto_4

    .line 1856
    :catch_0
    move-exception v2

    .line 1857
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 1859
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

    .line 1854
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 1855
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

    .line 1861
    .end local v2    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :goto_4
    throw v2

    :cond_5
    nop

    .line 1864
    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :pswitch_2
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    return-object v0

    .line 1794
    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 1795
    .local v0, "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    move-object v1, p3

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    .line 1796
    .local v1, "other":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;
    iget-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->defaultDisplayInfo_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    iget-object v3, v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->defaultDisplayInfo_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    invoke-interface {v0, v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    iput-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->defaultDisplayInfo_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    .line 1797
    nop

    .line 1798
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->hasSdkVersion()Z

    move-result v2

    iget v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->sdkVersion_:I

    .line 1799
    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->hasSdkVersion()Z

    move-result v4

    iget v5, v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->sdkVersion_:I

    .line 1797
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->sdkVersion_:I

    .line 1800
    nop

    .line 1801
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->hasLocale()Z

    move-result v2

    iget-object v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->locale_:Ljava/lang/String;

    .line 1802
    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->hasLocale()Z

    move-result v4

    iget-object v5, v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->locale_:Ljava/lang/String;

    .line 1800
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->locale_:Ljava/lang/String;

    .line 1803
    sget-object v2, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne v0, v2, :cond_6

    .line 1805
    iget v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->bitField0_:I

    iget v3, v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->bitField0_:I

    .line 1807
    :cond_6
    return-object p0

    .line 1791
    .end local v0    # "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    .end local v1    # "other":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;
    :pswitch_4
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto$Builder;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$1;)V

    return-object v0

    .line 1788
    :pswitch_5
    return-object v1

    .line 1785
    :pswitch_6
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    return-object v0

    .line 1782
    :pswitch_7
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;

    invoke-direct {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;-><init>()V

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
        0x10 -> :sswitch_1
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method public getDefaultDisplayInfo()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;
    .locals 1

    .line 1352
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->defaultDisplayInfo_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->getDefaultInstance()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .line 1443
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->locale_:Ljava/lang/String;

    return-object v0
.end method

.method public getLocaleBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1455
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->locale_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSdkVersion()I
    .locals 1

    .line 1404
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->sdkVersion_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 1517
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->memoizedSerializedSize:I

    .line 1518
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 1520
    :cond_0
    const/4 v0, 0x0

    .line 1521
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 1522
    nop

    .line 1523
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->getDefaultDisplayInfo()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1525
    :cond_1
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 1526
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->sdkVersion_:I

    .line 1527
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1529
    :cond_2
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 1530
    nop

    .line 1531
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->getLocale()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1533
    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1534
    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->memoizedSerializedSize:I

    .line 1535
    return v0
.end method

.method public hasDefaultDisplayInfo()Z
    .locals 2

    .line 1346
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasLocale()Z
    .locals 2

    .line 1432
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->bitField0_:I

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

.method public hasSdkVersion()Z
    .locals 2

    .line 1398
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->bitField0_:I

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

    .line 1504
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 1505
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->getDefaultDisplayInfo()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1507
    :cond_0
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 1508
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->sdkVersion_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1510
    :cond_1
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 1511
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1513
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1514
    return-void
.end method
