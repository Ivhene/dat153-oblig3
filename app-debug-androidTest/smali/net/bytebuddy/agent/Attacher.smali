.class public Lnet/bytebuddy/agent/Attacher;
.super Ljava/lang/Object;
.source "Attacher.java"


# static fields
.field private static final ATTACH_METHOD_NAME:Ljava/lang/String; = "attach"

.field private static final DETACH_METHOD_NAME:Ljava/lang/String; = "detach"

.field private static final LOAD_AGENT_METHOD_NAME:Ljava/lang/String; = "loadAgent"

.field private static final LOAD_AGENT_PATH_METHOD_NAME:Ljava/lang/String; = "loadAgentPath"

.field private static final STATIC_MEMBER:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lnet/bytebuddy/agent/Attacher;->STATIC_MEMBER:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This class is a utility class and not supposed to be instantiated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static install(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 7
    .param p1, "processId"    # Ljava/lang/String;
    .param p2, "agent"    # Ljava/lang/String;
    .param p3, "isNative"    # Z
    .param p4, "argument"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 104
    .local p0, "virtualMachineType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 105
    const-string v2, "attach"

    invoke-virtual {p0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lnet/bytebuddy/agent/Attacher;->STATIC_MEMBER:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v4

    .line 106
    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 108
    .local v1, "virtualMachineInstance":Ljava/lang/Object;
    const-string v2, "detach"

    if-eqz p3, :cond_0

    :try_start_0
    const-string v4, "loadAgentPath"

    goto :goto_0

    :cond_0
    const-string v4, "loadAgent"

    :goto_0
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v3

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v0

    .line 109
    invoke-virtual {p0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {p2, p4}, [Ljava/lang/Object;

    move-result-object v4

    .line 110
    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    new-array v0, v3, [Ljava/lang/Class;

    .line 113
    invoke-virtual {p0, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    .line 114
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    nop

    .line 116
    return-void

    .line 112
    :catchall_0
    move-exception v0

    new-array v4, v3, [Ljava/lang/Class;

    .line 113
    invoke-virtual {p0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    .line 114
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    throw v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;

    .line 72
    const/4 v0, 0x1

    :try_start_0
    array-length v1, p0

    const/4 v2, 0x5

    if-lt v1, v2, :cond_2

    const/4 v1, 0x4

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 75
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    aget-object v1, p0, v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 76
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v2, 0x5

    .local v2, "index":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 77
    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    .end local v2    # "index":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "argument":Ljava/lang/String;
    goto :goto_2

    .line 73
    .end local v1    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v2    # "argument":Ljava/lang/String;
    :cond_2
    :goto_1
    const/4 v2, 0x0

    .line 81
    .restart local v2    # "argument":Ljava/lang/String;
    :goto_2
    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    aget-object v3, p0, v0

    const/4 v4, 0x2

    aget-object v4, p0, v4

    const/4 v5, 0x3

    aget-object v5, p0, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v1, v3, v4, v5, v2}, Lnet/bytebuddy/agent/Attacher;->install(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .end local v2    # "argument":Ljava/lang/String;
    goto :goto_3

    .line 82
    :catchall_0
    move-exception v1

    .line 83
    .local v1, "ignored":Ljava/lang/Throwable;
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 85
    .end local v1    # "ignored":Ljava/lang/Throwable;
    :goto_3
    return-void
.end method
