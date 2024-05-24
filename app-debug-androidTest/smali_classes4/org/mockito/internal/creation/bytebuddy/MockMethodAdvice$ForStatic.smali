.class Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ForStatic;
.super Ljava/lang/Object;
.source "MockMethodAdvice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ForStatic"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static enter(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/util/concurrent/Callable;
    .locals 2
    .param p0, "identifier"    # Ljava/lang/String;
        .annotation runtime Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$Identifier;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation runtime Lnet/bytebuddy/asm/Advice$Origin;
        .end annotation
    .end param
    .param p2, "origin"    # Ljava/lang/reflect/Method;
        .annotation runtime Lnet/bytebuddy/asm/Advice$Origin;
        .end annotation
    .end param
    .param p3, "arguments"    # [Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/asm/Advice$AllArguments;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/concurrent/Callable<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/asm/Advice$OnMethodEnter;
        skipOn = Lnet/bytebuddy/asm/Advice$OnNonDefaultValue;
    .end annotation

    .line 738
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Lorg/mockito/internal/creation/bytebuddy/inject/MockMethodDispatcher;->getStatic(Ljava/lang/String;Ljava/lang/Class;)Lorg/mockito/internal/creation/bytebuddy/inject/MockMethodDispatcher;

    move-result-object v0

    .line 739
    .local v0, "dispatcher":Lorg/mockito/internal/creation/bytebuddy/inject/MockMethodDispatcher;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/mockito/internal/creation/bytebuddy/inject/MockMethodDispatcher;->isMockedStatic(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 742
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lorg/mockito/internal/creation/bytebuddy/inject/MockMethodDispatcher;->handleStatic(Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object v1

    return-object v1

    .line 740
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private static exit(Ljava/lang/Object;Ljava/util/concurrent/Callable;)V
    .locals 0
    .param p0, "returned"    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/asm/Advice$Return;
            readOnly = false
            typing = .enum Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->DYNAMIC:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation runtime Lnet/bytebuddy/asm/Advice$Enter;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/Callable<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/asm/Advice$OnMethodExit;
    .end annotation

    .line 752
    .local p1, "mocked":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<*>;"
    if-eqz p1, :cond_0

    .line 753
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    .line 755
    :cond_0
    return-void
.end method
