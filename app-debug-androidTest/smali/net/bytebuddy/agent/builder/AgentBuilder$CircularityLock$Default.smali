.class public Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Default;
.super Ljava/lang/ThreadLocal;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;"
    }
.end annotation


# static fields
.field private static final NOT_ACQUIRED:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2399
    const/4 v0, 0x0

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Default;->NOT_ACQUIRED:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2394
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public acquire()Z
    .locals 2

    .line 2405
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Default;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Default;->NOT_ACQUIRED:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    .line 2406
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Default;->set(Ljava/lang/Object;)V

    .line 2407
    return v0

    .line 2409
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .locals 1

    .line 2417
    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Default;->NOT_ACQUIRED:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Default;->set(Ljava/lang/Object;)V

    .line 2418
    return-void
.end method
