.class public Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$WithTransformationsOnly;
.super Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$Adapter;
.source "AgentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WithTransformationsOnly"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final delegate:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;)V
    .locals 0
    .param p1, "delegate"    # Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    .line 2135
    invoke-direct {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$Adapter;-><init>()V

    .line 2136
    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$WithTransformationsOnly;->delegate:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    .line 2137
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$WithTransformationsOnly;->delegate:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$WithTransformationsOnly;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$WithTransformationsOnly;->delegate:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$WithTransformationsOnly;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$WithTransformationsOnly;->delegate:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public onError(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;ZLjava/lang/Throwable;)V
    .locals 6
    .param p1, "typeName"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p3, "module"    # Lnet/bytebuddy/utility/JavaModule;
    .param p4, "loaded"    # Z
    .param p5, "throwable"    # Ljava/lang/Throwable;

    .line 2146
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$WithTransformationsOnly;->delegate:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;->onError(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;ZLjava/lang/Throwable;)V

    .line 2147
    return-void
.end method

.method public onTransformation(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;ZLnet/bytebuddy/dynamic/DynamicType;)V
    .locals 6
    .param p1, "typeDescription"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p3, "module"    # Lnet/bytebuddy/utility/JavaModule;
    .param p4, "loaded"    # Z
    .param p5, "dynamicType"    # Lnet/bytebuddy/dynamic/DynamicType;

    .line 2141
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$WithTransformationsOnly;->delegate:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;->onTransformation(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;ZLnet/bytebuddy/dynamic/DynamicType;)V

    .line 2142
    return-void
.end method
