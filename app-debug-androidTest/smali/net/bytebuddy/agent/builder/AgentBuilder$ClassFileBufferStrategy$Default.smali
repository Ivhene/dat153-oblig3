.class public abstract enum Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy$Default;
.super Ljava/lang/Enum;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy$Default;",
        ">;",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy$Default;

.field public static final enum DISCARDING:Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy$Default;

.field public static final enum RETAINING:Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy$Default;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 5073
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy$Default$1;

    const-string v1, "RETAINING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy$Default$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy$Default;->RETAINING:Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy$Default;

    .line 5100
    new-instance v1, Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy$Default$2;

    const-string v3, "DISCARDING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy$Default$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy$Default;->DISCARDING:Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy$Default;

    .line 5068
    const/4 v3, 0x2

    new-array v3, v3, [Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy$Default;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy$Default;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy$Default;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5068
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/bytebuddy/agent/builder/AgentBuilder$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lnet/bytebuddy/agent/builder/AgentBuilder$1;

    .line 5068
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy$Default;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy$Default;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 5068
    const-class v0, Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy$Default;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy$Default;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy$Default;
    .locals 1

    .line 5068
    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy$Default;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy$Default;

    invoke-virtual {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy$Default;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy$Default;

    return-object v0
.end method
