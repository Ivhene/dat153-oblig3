.class public Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Simple;
.super Ljava/lang/Object;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Simple"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/dynamic/ClassFileLocator;)V
    .locals 0
    .param p1, "classFileLocator"    # Lnet/bytebuddy/dynamic/ClassFileLocator;

    .line 4555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4556
    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Simple;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    .line 4557
    return-void
.end method


# virtual methods
.method public classFileLocator(Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/dynamic/ClassFileLocator;
    .locals 1
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "module"    # Lnet/bytebuddy/utility/JavaModule;

    .line 4563
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Simple;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    return-object v0
.end method

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
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Simple;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Simple;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Simple;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Simple;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Simple;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
