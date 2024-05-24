.class public Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$StreamWriting;
.super Ljava/lang/Object;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamWriting"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field protected static final PREFIX:Ljava/lang/String; = "[Byte Buddy]"


# instance fields
.field private final printStream:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 0
    .param p1, "printStream"    # Ljava/io/PrintStream;

    .line 1967
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1968
    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    .line 1969
    return-void
.end method

.method public static toSystemError()Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$StreamWriting;
    .locals 2

    .line 1986
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$StreamWriting;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$StreamWriting;-><init>(Ljava/io/PrintStream;)V

    return-object v0
.end method

.method public static toSystemOut()Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$StreamWriting;
    .locals 2

    .line 1977
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$StreamWriting;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$StreamWriting;-><init>(Ljava/io/PrintStream;)V

    return-object v0
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
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$StreamWriting;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    invoke-virtual {v2, p1}, Ljava/io/PrintStream;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$StreamWriting;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public onComplete(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Z)V
    .locals 3
    .param p1, "typeName"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p3, "module"    # Lnet/bytebuddy/utility/JavaModule;
    .param p4, "loaded"    # Z

    .line 2042
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {p1, p2, p3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "[Byte Buddy] COMPLETE %s [%s, %s, %s, loaded=%b]%n"

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 2043
    return-void
.end method

.method public onDiscovery(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Z)V
    .locals 3
    .param p1, "typeName"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p3, "module"    # Lnet/bytebuddy/utility/JavaModule;
    .param p4, "loaded"    # Z

    .line 2011
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {p1, p2, p3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "[Byte Buddy] DISCOVERY %s [%s, %s, %s, loaded=%b]%n"

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 2012
    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;ZLjava/lang/Throwable;)V
    .locals 6
    .param p1, "typeName"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p3, "module"    # Lnet/bytebuddy/utility/JavaModule;
    .param p4, "loaded"    # Z
    .param p5, "throwable"    # Ljava/lang/Throwable;

    .line 2032
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    monitor-enter v0

    .line 2033
    :try_start_0
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    const-string v2, "[Byte Buddy] ERROR %s [%s, %s, %s, loaded=%b]%n"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 2034
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    invoke-virtual {p5, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 2035
    monitor-exit v0

    .line 2036
    return-void

    .line 2035
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onIgnored(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Z)V
    .locals 4
    .param p1, "typeDescription"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p3, "module"    # Lnet/bytebuddy/utility/JavaModule;
    .param p4, "loaded"    # Z

    .line 2025
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v1, p2, p3, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "[Byte Buddy] IGNORE %s [%s, %s, %s, loaded=%b]%n"

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 2026
    return-void
.end method

.method public onTransformation(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;ZLnet/bytebuddy/dynamic/DynamicType;)V
    .locals 4
    .param p1, "typeDescription"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p3, "module"    # Lnet/bytebuddy/utility/JavaModule;
    .param p4, "loaded"    # Z
    .param p5, "dynamicType"    # Lnet/bytebuddy/dynamic/DynamicType;

    .line 2018
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v1, p2, p3, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "[Byte Buddy] TRANSFORM %s [%s, %s, %s, loaded=%b]%n"

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 2019
    return-void
.end method

.method public withErrorsOnly()Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;
    .locals 1

    .line 2004
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$WithErrorsOnly;

    invoke-direct {v0, p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$WithErrorsOnly;-><init>(Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;)V

    return-object v0
.end method

.method public withTransformationsOnly()Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;
    .locals 1

    .line 1995
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$WithTransformationsOnly;

    invoke-direct {v0, p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$WithTransformationsOnly;-><init>(Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;)V

    return-object v0
.end method
