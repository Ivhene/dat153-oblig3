.class public Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm$ForJava9CapableVm;
.super Ljava/lang/Object;
.source "ByteBuddyAgent.java"

# interfaces
.implements Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ForJava9CapableVm"
.end annotation


# instance fields
.field private final current:Ljava/lang/reflect/Method;

.field private final pid:Ljava/lang/reflect/Method;


# direct methods
.method protected constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0
    .param p1, "current"    # Ljava/lang/reflect/Method;
    .param p2, "pid"    # Ljava/lang/reflect/Method;

    .line 1333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1334
    iput-object p1, p0, Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm$ForJava9CapableVm;->current:Ljava/lang/reflect/Method;

    .line 1335
    iput-object p2, p0, Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm$ForJava9CapableVm;->pid:Ljava/lang/reflect/Method;

    .line 1336
    return-void
.end method

.method public static make()Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;
    .locals 6

    .line 1347
    const-string v0, "java.lang.ProcessHandle"

    :try_start_0
    new-instance v1, Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm$ForJava9CapableVm;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "current"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1348
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "pid"

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm$ForJava9CapableVm;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1347
    return-object v1

    .line 1349
    :catch_0
    move-exception v0

    .line 1350
    .local v0, "ignored":Ljava/lang/Exception;
    sget-object v1, Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm$ForLegacyVm;->INSTANCE:Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm$ForLegacyVm;

    return-object v1
.end method


# virtual methods
.method public resolve()Ljava/lang/String;
    .locals 5

    .line 1359
    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm$ForJava9CapableVm;->pid:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm$ForJava9CapableVm;->current:Ljava/lang/reflect/Method;

    invoke-static {}, Lnet/bytebuddy/agent/ByteBuddyAgent;->access$100()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1362
    :catch_0
    move-exception v0

    .line 1363
    .local v0, "exception":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error when accessing Java 9 process API"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1360
    .end local v0    # "exception":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 1361
    .local v0, "exception":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot access Java 9 process API"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
