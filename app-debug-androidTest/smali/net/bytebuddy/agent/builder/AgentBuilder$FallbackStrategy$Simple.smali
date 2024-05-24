.class public final enum Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy$Simple;
.super Ljava/lang/Enum;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Simple"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy$Simple;",
        ">;",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy$Simple;

.field public static final enum DISABLED:Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy$Simple;

.field public static final enum ENABLED:Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy$Simple;


# instance fields
.field private final enabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4642
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy$Simple;

    const-string v1, "ENABLED"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy$Simple;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy$Simple;->ENABLED:Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy$Simple;

    .line 4647
    new-instance v1, Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy$Simple;

    const-string v4, "DISABLED"

    invoke-direct {v1, v4, v3, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy$Simple;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy$Simple;->DISABLED:Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy$Simple;

    .line 4637
    filled-new-array {v0, v1}, [Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy$Simple;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy$Simple;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy$Simple;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p3, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 4659
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4660
    iput-boolean p3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy$Simple;->enabled:Z

    .line 4661
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy$Simple;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 4637
    const-class v0, Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy$Simple;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy$Simple;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy$Simple;
    .locals 1

    .line 4637
    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy$Simple;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy$Simple;

    invoke-virtual {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy$Simple;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy$Simple;

    return-object v0
.end method


# virtual methods
.method public isFallback(Ljava/lang/Class;Ljava/lang/Throwable;)Z
    .locals 1
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    .line 4667
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-boolean v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy$Simple;->enabled:Z

    return v0
.end method
