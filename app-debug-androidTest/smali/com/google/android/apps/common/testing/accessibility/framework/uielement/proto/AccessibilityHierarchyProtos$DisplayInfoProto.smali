.class public final Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "AccessibilityHierarchyProtos.java"

# interfaces
.implements Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayInfoProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;",
        "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto$Builder;",
        ">;",
        "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProtoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

.field public static final METRICS_WITHOUT_DECORATION_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;",
            ">;"
        }
    .end annotation
.end field

.field public static final REAL_METRICS_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private metricsWithoutDecoration_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

.field private realMetrics_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2351
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    invoke-direct {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;-><init>()V

    sput-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    .line 2352
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->makeImmutable()V

    .line 2353
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1933
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1934
    return-void
.end method

.method static synthetic access$3500()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;
    .locals 1

    .line 1928
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;
    .param p1, "x1"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    .line 1928
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->setMetricsWithoutDecoration(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;
    .param p1, "x1"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;

    .line 1928
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->setMetricsWithoutDecoration(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;
    .param p1, "x1"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    .line 1928
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->mergeMetricsWithoutDecoration(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    .line 1928
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->clearMetricsWithoutDecoration()V

    return-void
.end method

.method static synthetic access$4000(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;
    .param p1, "x1"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    .line 1928
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->setRealMetrics(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;
    .param p1, "x1"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;

    .line 1928
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->setRealMetrics(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;
    .param p1, "x1"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    .line 1928
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->mergeRealMetrics(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    .line 1928
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->clearRealMetrics()V

    return-void
.end method

.method private clearMetricsWithoutDecoration()V
    .locals 1

    .line 1984
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->metricsWithoutDecoration_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    .line 1985
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->bitField0_:I

    .line 1986
    return-void
.end method

.method private clearRealMetrics()V
    .locals 1

    .line 2036
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->realMetrics_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    .line 2037
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->bitField0_:I

    .line 2038
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;
    .locals 1

    .line 2356
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    return-object v0
.end method

.method private mergeMetricsWithoutDecoration(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;)V
    .locals 2
    .param p1, "value"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    .line 1972
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->metricsWithoutDecoration_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    if-eqz v0, :cond_0

    .line 1973
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;->getDefaultInstance()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1974
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->metricsWithoutDecoration_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    .line 1975
    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;->newBuilder(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->metricsWithoutDecoration_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    goto :goto_0

    .line 1977
    :cond_0
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->metricsWithoutDecoration_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    .line 1979
    :goto_0
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->bitField0_:I

    .line 1980
    return-void
.end method

.method private mergeRealMetrics(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;)V
    .locals 2
    .param p1, "value"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    .line 2024
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->realMetrics_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    if-eqz v0, :cond_0

    .line 2025
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;->getDefaultInstance()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2026
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->realMetrics_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    .line 2027
    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;->newBuilder(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->realMetrics_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    goto :goto_0

    .line 2029
    :cond_0
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->realMetrics_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    .line 2031
    :goto_0
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->bitField0_:I

    .line 2032
    return-void
.end method

.method public static newBuilder()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto$Builder;
    .locals 1

    .line 2131
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    .line 2134
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto$Builder;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2108
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    invoke-static {v0, p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2114
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    invoke-static {v0, p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2072
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2079
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2119
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2126
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2096
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2103
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2084
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2091
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;",
            ">;"
        }
    .end annotation

    .line 2362
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setMetricsWithoutDecoration(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;

    .line 1965
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->metricsWithoutDecoration_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    .line 1966
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->bitField0_:I

    .line 1967
    return-void
.end method

.method private setMetricsWithoutDecoration(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;)V
    .locals 1
    .param p1, "value"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    .line 1954
    if-eqz p1, :cond_0

    .line 1957
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->metricsWithoutDecoration_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    .line 1958
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->bitField0_:I

    .line 1959
    return-void

    .line 1955
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setRealMetrics(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;

    .line 2017
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->realMetrics_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    .line 2018
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->bitField0_:I

    .line 2019
    return-void
.end method

.method private setRealMetrics(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;)V
    .locals 1
    .param p1, "value"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    .line 2006
    if-eqz p1, :cond_0

    .line 2009
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->realMetrics_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    .line 2010
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->bitField0_:I

    .line 2011
    return-void

    .line 2007
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

    .line 2251
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2344
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2335
    :pswitch_0
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    monitor-enter v0

    .line 2336
    :try_start_0
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v1, :cond_0

    .line 2337
    new-instance v1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    invoke-direct {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 2339
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2341
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0

    .line 2276
    :pswitch_1
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/CodedInputStream;

    .line 2278
    .local v0, "input":Lcom/google/protobuf/CodedInputStream;
    move-object v1, p3

    check-cast v1, Lcom/google/protobuf/ExtensionRegistryLite;

    .line 2281
    .local v1, "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    const/4 v2, 0x0

    .line 2282
    .local v2, "done":Z
    :goto_1
    if-nez v2, :cond_7

    .line 2283
    :try_start_1
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 2284
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 2289
    invoke-virtual {p0, v3, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v4

    goto :goto_2

    .line 2308
    :sswitch_0
    const/4 v4, 0x0

    .line 2309
    .local v4, "subBuilder":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;
    iget v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->bitField0_:I

    const/4 v6, 0x2

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_2

    .line 2310
    iget-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->realMetrics_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    invoke-virtual {v5}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;

    move-object v4, v5

    .line 2312
    :cond_2
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;->parser()Lcom/google/protobuf/Parser;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    iput-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->realMetrics_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    .line 2313
    if-eqz v4, :cond_3

    .line 2314
    invoke-virtual {v4, v5}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2315
    invoke-virtual {v4}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    iput-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->realMetrics_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    .line 2317
    :cond_3
    iget v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->bitField0_:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->bitField0_:I

    .line 2318
    goto :goto_3

    .line 2295
    .end local v4    # "subBuilder":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;
    :sswitch_1
    const/4 v4, 0x0

    .line 2296
    .restart local v4    # "subBuilder":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;
    iget v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->bitField0_:I

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_4

    .line 2297
    iget-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->metricsWithoutDecoration_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    invoke-virtual {v5}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;

    move-object v4, v5

    .line 2299
    :cond_4
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;->parser()Lcom/google/protobuf/Parser;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    iput-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->metricsWithoutDecoration_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    .line 2300
    if-eqz v4, :cond_5

    .line 2301
    invoke-virtual {v4, v5}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2302
    invoke-virtual {v4}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    iput-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->metricsWithoutDecoration_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    .line 2304
    :cond_5
    iget v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->bitField0_:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->bitField0_:I
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2305
    goto :goto_3

    .line 2286
    .end local v4    # "subBuilder":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto$Builder;
    :sswitch_2
    const/4 v2, 0x1

    .line 2287
    goto :goto_3

    .line 2289
    :goto_2
    if-nez v4, :cond_6

    .line 2290
    const/4 v2, 0x1

    .line 2321
    .end local v3    # "tag":I
    :cond_6
    :goto_3
    goto :goto_1

    .line 2328
    .end local v2    # "done":Z
    :catchall_1
    move-exception v2

    goto :goto_4

    .line 2324
    :catch_0
    move-exception v2

    .line 2325
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 2327
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

    .line 2322
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 2323
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

    .line 2329
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

    .line 2332
    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :pswitch_2
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    return-object v0

    .line 2265
    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 2266
    .local v0, "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    move-object v1, p3

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    .line 2267
    .local v1, "other":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;
    iget-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->metricsWithoutDecoration_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    iget-object v3, v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->metricsWithoutDecoration_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    invoke-interface {v0, v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    iput-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->metricsWithoutDecoration_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    .line 2268
    iget-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->realMetrics_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    iget-object v3, v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->realMetrics_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    invoke-interface {v0, v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    iput-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->realMetrics_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    .line 2269
    sget-object v2, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne v0, v2, :cond_8

    .line 2271
    iget v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->bitField0_:I

    iget v3, v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->bitField0_:I

    .line 2273
    :cond_8
    return-object p0

    .line 2262
    .end local v0    # "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    .end local v1    # "other":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;
    :pswitch_4
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto$Builder;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$1;)V

    return-object v0

    .line 2259
    :pswitch_5
    return-object v1

    .line 2256
    :pswitch_6
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    return-object v0

    .line 2253
    :pswitch_7
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;

    invoke-direct {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;-><init>()V

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
        0xa -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public getMetricsWithoutDecoration()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;
    .locals 1

    .line 1948
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->metricsWithoutDecoration_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;->getDefaultInstance()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRealMetrics()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;
    .locals 1

    .line 2000
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->realMetrics_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;->getDefaultInstance()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 2052
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->memoizedSerializedSize:I

    .line 2053
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2055
    :cond_0
    const/4 v0, 0x0

    .line 2056
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 2057
    nop

    .line 2058
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->getMetricsWithoutDecoration()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2060
    :cond_1
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 2061
    nop

    .line 2062
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->getRealMetrics()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2064
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 2065
    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->memoizedSerializedSize:I

    .line 2066
    return v0
.end method

.method public hasMetricsWithoutDecoration()Z
    .locals 2

    .line 1942
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasRealMetrics()Z
    .locals 2

    .line 1994
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->bitField0_:I

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

    .line 2042
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2043
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->getMetricsWithoutDecoration()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2045
    :cond_0
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 2046
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->getRealMetrics()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoMetricsProto;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2048
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DisplayInfoProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 2049
    return-void
.end method
