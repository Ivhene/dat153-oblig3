.class public abstract enum Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;
.super Ljava/lang/Enum;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;",
        ">;",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;

.field public static final enum HYBRID:Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;

.field public static final enum POOL_FIRST:Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;

.field public static final enum POOL_ONLY:Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;


# instance fields
.field private final loadedFirst:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 4031
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default$1;

    const-string v1, "HYBRID"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default$1;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;->HYBRID:Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;

    .line 4058
    new-instance v1, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default$2;

    const-string v4, "POOL_ONLY"

    invoke-direct {v1, v4, v3, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default$2;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;->POOL_ONLY:Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;

    .line 4082
    new-instance v4, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default$3;

    const-string v5, "POOL_FIRST"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default$3;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;->POOL_FIRST:Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;

    .line 4017
    const/4 v5, 0x3

    new-array v5, v5, [Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;

    aput-object v0, v5, v2

    aput-object v1, v5, v3

    aput-object v4, v5, v6

    sput-object v5, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p3, "loadedFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 4107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4108
    iput-boolean p3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;->loadedFirst:Z

    .line 4109
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IZLnet/bytebuddy/agent/builder/AgentBuilder$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lnet/bytebuddy/agent/builder/AgentBuilder$1;

    .line 4017
    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 4017
    const-class v0, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;
    .locals 1

    .line 4017
    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;

    invoke-virtual {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;

    return-object v0
.end method


# virtual methods
.method public isLoadedFirst()Z
    .locals 1

    .line 4127
    iget-boolean v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;->loadedFirst:Z

    return v0
.end method

.method public withSuperTypeLoading()Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;
    .locals 1

    .line 4120
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading;

    invoke-direct {v0, p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading;-><init>(Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;)V

    return-object v0
.end method

.method public withSuperTypeLoading(Ljava/util/concurrent/ExecutorService;)Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;
    .locals 1
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .line 4141
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading$Asynchronous;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading$Asynchronous;-><init>(Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method
