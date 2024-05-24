.class public Lnet/bytebuddy/agent/Installer;
.super Ljava/lang/Object;
.source "Installer.java"


# static fields
.field private static volatile instrumentation:Ljava/lang/instrument/Instrumentation;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This class is a utility class and not supposed to be instantiated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static agentmain(Ljava/lang/String;Ljava/lang/instrument/Instrumentation;)V
    .locals 0
    .param p0, "arguments"    # Ljava/lang/String;
    .param p1, "instrumentation"    # Ljava/lang/instrument/Instrumentation;

    .line 82
    sput-object p1, Lnet/bytebuddy/agent/Installer;->instrumentation:Ljava/lang/instrument/Instrumentation;

    .line 83
    return-void
.end method

.method public static getInstrumentation()Ljava/lang/instrument/Instrumentation;
    .locals 4

    .line 54
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 55
    .local v0, "securityManager":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 56
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "getInstrumentation"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 58
    :cond_0
    sget-object v1, Lnet/bytebuddy/agent/Installer;->instrumentation:Ljava/lang/instrument/Instrumentation;

    .line 59
    .local v1, "instrumentation":Ljava/lang/instrument/Instrumentation;
    if-eqz v1, :cond_1

    .line 62
    return-object v1

    .line 60
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The Byte Buddy agent is not loaded or this method is not called via the system class loader"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static premain(Ljava/lang/String;Ljava/lang/instrument/Instrumentation;)V
    .locals 0
    .param p0, "arguments"    # Ljava/lang/String;
    .param p1, "instrumentation"    # Ljava/lang/instrument/Instrumentation;

    .line 72
    sput-object p1, Lnet/bytebuddy/agent/Installer;->instrumentation:Ljava/lang/instrument/Instrumentation;

    .line 73
    return-void
.end method
