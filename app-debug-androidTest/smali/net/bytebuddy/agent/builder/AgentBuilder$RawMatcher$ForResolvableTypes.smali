.class public final enum Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForResolvableTypes;
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
    name = "ForResolvableTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForResolvableTypes;",
        ">;",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForResolvableTypes;

.field public static final enum INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForResolvableTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1550
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForResolvableTypes;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForResolvableTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForResolvableTypes;->INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForResolvableTypes;

    .line 1545
    filled-new-array {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForResolvableTypes;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForResolvableTypes;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForResolvableTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1545
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForResolvableTypes;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1545
    const-class v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForResolvableTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForResolvableTypes;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForResolvableTypes;
    .locals 1

    .line 1545
    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForResolvableTypes;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForResolvableTypes;

    invoke-virtual {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForResolvableTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForResolvableTypes;

    return-object v0
.end method


# virtual methods
.method public inverted()Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;
    .locals 1

    .line 1577
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Inversion;

    invoke-direct {v0, p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Inversion;-><init>(Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;)V

    return-object v0
.end method

.method public matches(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/lang/Class;Ljava/security/ProtectionDomain;)Z
    .locals 3
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

    .line 1560
    .local p4, "classBeingRedefined":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    if-eqz p4, :cond_1

    .line 1562
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p4, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 1563
    :catchall_0
    move-exception v0

    .line 1564
    .local v0, "ignored":Ljava/lang/Throwable;
    return v1

    .line 1567
    .end local v0    # "ignored":Ljava/lang/Throwable;
    :cond_1
    return v0
.end method
