.class public final enum Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$NoOp;
.super Ljava/lang/Enum;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NoOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$NoOp;",
        ">;",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$NoOp;

.field public static final enum INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$NoOp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 4453
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$NoOp;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$NoOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$NoOp;->INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$NoOp;

    .line 4448
    filled-new-array {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$NoOp;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$NoOp;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$NoOp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4448
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$NoOp;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 4448
    const-class v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$NoOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$NoOp;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$NoOp;
    .locals 1

    .line 4448
    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$NoOp;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$NoOp;

    invoke-virtual {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$NoOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$NoOp;

    return-object v0
.end method


# virtual methods
.method public classFileLocator(Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/dynamic/ClassFileLocator;
    .locals 1
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "module"    # Lnet/bytebuddy/utility/JavaModule;

    .line 4459
    sget-object v0, Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;->INSTANCE:Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;

    return-object v0
.end method
