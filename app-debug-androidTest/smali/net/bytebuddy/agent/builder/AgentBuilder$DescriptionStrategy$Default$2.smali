.class final enum Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default$2;
.super Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;
.source "AgentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IZ)V
    .locals 1
    .param p3, "loadedFirst"    # Z

    .line 4058
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$Default;-><init>(Ljava/lang/String;IZLnet/bytebuddy/agent/builder/AgentBuilder$1;)V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/String;Ljava/lang/Class;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "typePool"    # Lnet/bytebuddy/pool/TypePool;
    .param p4, "circularityLock"    # Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;
    .param p5, "classLoader"    # Ljava/lang/ClassLoader;
    .param p6, "module"    # Lnet/bytebuddy/utility/JavaModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/bytebuddy/pool/TypePool;",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;",
            "Ljava/lang/ClassLoader;",
            "Lnet/bytebuddy/utility/JavaModule;",
            ")",
            "Lnet/bytebuddy/description/type/TypeDescription;"
        }
    .end annotation

    .line 4066
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p3, p1}, Lnet/bytebuddy/pool/TypePool;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method
