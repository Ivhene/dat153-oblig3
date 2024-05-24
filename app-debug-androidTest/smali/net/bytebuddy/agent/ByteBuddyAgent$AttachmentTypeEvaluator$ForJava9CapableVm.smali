.class public Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$ForJava9CapableVm;
.super Ljava/lang/Object;
.source "ByteBuddyAgent.java"

# interfaces
.implements Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
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

    .line 1621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1622
    iput-object p1, p0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$ForJava9CapableVm;->current:Ljava/lang/reflect/Method;

    .line 1623
    iput-object p2, p0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$ForJava9CapableVm;->pid:Ljava/lang/reflect/Method;

    .line 1624
    return-void
.end method


# virtual methods
.method public requiresExternalAttachment(Ljava/lang/String;)Z
    .locals 5
    .param p1, "processId"    # Ljava/lang/String;

    .line 1631
    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$ForJava9CapableVm;->pid:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$ForJava9CapableVm;->current:Ljava/lang/reflect/Method;

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

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1634
    :catch_0
    move-exception v0

    .line 1635
    .local v0, "exception":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error when accessing Java 9 process API"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1632
    .end local v0    # "exception":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 1633
    .local v0, "exception":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot access Java 9 process API"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
