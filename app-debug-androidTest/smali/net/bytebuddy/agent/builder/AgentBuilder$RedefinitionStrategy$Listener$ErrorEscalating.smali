.class public abstract enum Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$ErrorEscalating;
.super Ljava/lang/Enum;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "ErrorEscalating"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$ErrorEscalating;",
        ">;",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$ErrorEscalating;

.field public static final enum FAIL_FAST:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$ErrorEscalating;

.field public static final enum FAIL_LAST:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$ErrorEscalating;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 5999
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$ErrorEscalating$1;

    const-string v1, "FAIL_FAST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$ErrorEscalating$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$ErrorEscalating;->FAIL_FAST:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$ErrorEscalating;

    .line 6014
    new-instance v1, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$ErrorEscalating$2;

    const-string v3, "FAIL_LAST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$ErrorEscalating$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$ErrorEscalating;->FAIL_LAST:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$ErrorEscalating;

    .line 5994
    const/4 v3, 0x2

    new-array v3, v3, [Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$ErrorEscalating;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$ErrorEscalating;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$ErrorEscalating;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5994
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/bytebuddy/agent/builder/AgentBuilder$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lnet/bytebuddy/agent/builder/AgentBuilder$1;

    .line 5994
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$ErrorEscalating;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$ErrorEscalating;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 5994
    const-class v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$ErrorEscalating;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$ErrorEscalating;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$ErrorEscalating;
    .locals 1

    .line 5994
    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$ErrorEscalating;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$ErrorEscalating;

    invoke-virtual {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$ErrorEscalating;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$ErrorEscalating;

    return-object v0
.end method


# virtual methods
.method public onBatch(ILjava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 6033
    .local p2, "batch":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .local p3, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    return-void
.end method
