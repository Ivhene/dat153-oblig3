.class public final enum Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$UsingJna;
.super Ljava/lang/Enum;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UsingJna"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$UsingJna;",
        ">;",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$UsingJna;

.field public static final enum INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$UsingJna;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 3936
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$UsingJna;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$UsingJna;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$UsingJna;->INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$UsingJna;

    .line 3931
    filled-new-array {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$UsingJna;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$UsingJna;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$UsingJna;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3931
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$UsingJna;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3931
    const-class v0, Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$UsingJna;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$UsingJna;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$UsingJna;
    .locals 1

    .line 3931
    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$UsingJna;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$UsingJna;

    invoke-virtual {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$UsingJna;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$UsingJna;

    return-object v0
.end method


# virtual methods
.method public resolve(Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Lnet/bytebuddy/dynamic/loading/ClassInjector;
    .locals 2
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "protectionDomain"    # Ljava/security/ProtectionDomain;

    .line 3942
    invoke-static {}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingJna;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3943
    new-instance v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingJna;

    invoke-direct {v0, p1, p2}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingJna;-><init>(Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)V

    return-object v0

    .line 3945
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JNA-based injection is not available on the current VM"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method