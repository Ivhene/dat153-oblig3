.class public final enum Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;
.super Ljava/lang/Enum;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForLoadState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;",
        ">;",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;

.field public static final enum LOADED:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;

.field public static final enum UNLOADED:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;


# instance fields
.field private final unloaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1508
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;

    const-string v1, "LOADED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;->LOADED:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;

    .line 1513
    new-instance v1, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;

    const-string v2, "UNLOADED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;->UNLOADED:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;

    .line 1503
    filled-new-array {v0, v1}, [Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p3, "unloaded"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1525
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1526
    iput-boolean p3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;->unloaded:Z

    .line 1527
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1503
    const-class v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;
    .locals 1

    .line 1503
    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;

    invoke-virtual {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;

    return-object v0
.end method


# virtual methods
.method public matches(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/lang/Class;Ljava/security/ProtectionDomain;)Z
    .locals 4
    .param p1, "typeDescription"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p3, "module"    # Lnet/bytebuddy/utility/JavaModule;
    .param p5, "protectionDomain"    # Ljava/security/ProtectionDomain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/ClassLoader;",
            "Lnet/bytebuddy/utility/JavaModule;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/security/ProtectionDomain;",
            ")Z"
        }
    .end annotation

    .line 1537
    .local p4, "classBeingRedefined":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p4, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-boolean v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;->unloaded:Z

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0
.end method
