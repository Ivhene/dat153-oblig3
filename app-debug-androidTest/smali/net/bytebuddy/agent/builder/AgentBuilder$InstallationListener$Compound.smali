.class public Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$Compound;
.super Ljava/lang/Object;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Compound"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final installationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;",
            ">;)V"
        }
    .end annotation

    .line 4984
    .local p1, "installationListeners":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4985
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$Compound;->installationListeners:Ljava/util/List;

    .line 4986
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;

    .line 4987
    .local v1, "installationListener":Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;
    instance-of v2, v1, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$Compound;

    if-eqz v2, :cond_0

    .line 4988
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$Compound;->installationListeners:Ljava/util/List;

    move-object v3, v1

    check-cast v3, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$Compound;

    iget-object v3, v3, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$Compound;->installationListeners:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 4989
    :cond_0
    instance-of v2, v1, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$NoOp;

    if-nez v2, :cond_1

    .line 4990
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$Compound;->installationListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4992
    .end local v1    # "installationListener":Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;
    :cond_1
    :goto_1
    goto :goto_0

    .line 4993
    :cond_2
    return-void
.end method

.method public varargs constructor <init>([Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;)V
    .locals 1
    .param p1, "installationListener"    # [Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;

    .line 4976
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$Compound;-><init>(Ljava/util/List;)V

    .line 4977
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
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$Compound;->installationListeners:Ljava/util/List;

    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$Compound;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$Compound;->installationListeners:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$Compound;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$Compound;->installationListeners:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public onBeforeInstall(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;)V
    .locals 2
    .param p1, "instrumentation"    # Ljava/lang/instrument/Instrumentation;
    .param p2, "classFileTransformer"    # Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;

    .line 4999
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$Compound;->installationListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;

    .line 5000
    .local v1, "installationListener":Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;
    invoke-interface {v1, p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;->onBeforeInstall(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;)V

    .line 5001
    .end local v1    # "installationListener":Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;
    goto :goto_0

    .line 5002
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 3
    .param p1, "instrumentation"    # Ljava/lang/instrument/Instrumentation;
    .param p2, "classFileTransformer"    # Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .line 5017
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$Compound;->installationListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;

    .line 5018
    .local v1, "installationListener":Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;
    sget-object v2, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$Compound;->SUPPRESS_ERROR:Ljava/lang/Throwable;

    if-ne p3, v2, :cond_0

    .line 5019
    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$Compound;->SUPPRESS_ERROR:Ljava/lang/Throwable;

    return-object v0

    .line 5021
    :cond_0
    invoke-interface {v1, p1, p2, p3}, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;->onError(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p3

    .line 5022
    .end local v1    # "installationListener":Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;
    goto :goto_0

    .line 5023
    :cond_1
    return-object p3
.end method

.method public onInstall(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;)V
    .locals 2
    .param p1, "instrumentation"    # Ljava/lang/instrument/Instrumentation;
    .param p2, "classFileTransformer"    # Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;

    .line 5008
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$Compound;->installationListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;

    .line 5009
    .local v1, "installationListener":Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;
    invoke-interface {v1, p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;->onInstall(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;)V

    .line 5010
    .end local v1    # "installationListener":Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;
    goto :goto_0

    .line 5011
    :cond_0
    return-void
.end method

.method public onReset(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;)V
    .locals 2
    .param p1, "instrumentation"    # Ljava/lang/instrument/Instrumentation;
    .param p2, "classFileTransformer"    # Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;

    .line 5030
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$Compound;->installationListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;

    .line 5031
    .local v1, "installationListener":Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;
    invoke-interface {v1, p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;->onReset(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;)V

    .line 5032
    .end local v1    # "installationListener":Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;
    goto :goto_0

    .line 5033
    :cond_0
    return-void
.end method
