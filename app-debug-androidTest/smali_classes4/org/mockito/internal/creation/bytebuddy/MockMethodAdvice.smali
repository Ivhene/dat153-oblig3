.class public Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;
.super Lorg/mockito/internal/creation/bytebuddy/inject/MockMethodDispatcher;
.source "MockMethodAdvice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ForReadObject;,
        Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ForStatic;,
        Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ForEquals;,
        Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ForHashCode;,
        Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$Identifier;,
        Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut;,
        Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;,
        Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ReturnValueWrapper;,
        Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$StaticMethodCall;,
        Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SerializableRealMethodCall;,
        Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$RealMethodCall;
    }
.end annotation


# instance fields
.field private final compiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

.field private final graphs:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/internal/util/concurrent/WeakConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/ref/SoftReference<",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph;",
            ">;>;"
        }
    .end annotation
.end field

.field private final identifier:Ljava/lang/String;

.field private final interceptors:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/internal/util/concurrent/WeakConcurrentMap<",
            "Ljava/lang/Object;",
            "Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final isMockConstruction:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mockedStatics:Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/internal/util/concurrent/DetachedThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;",
            ">;>;"
        }
    .end annotation
.end field

.field private final onConstruction:Lorg/mockito/internal/creation/bytebuddy/ConstructionCallback;

.field private final selfCallInfo:Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;


# direct methods
.method public constructor <init>(Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;Ljava/lang/String;Ljava/util/function/Predicate;Lorg/mockito/internal/creation/bytebuddy/ConstructionCallback;)V
    .locals 2
    .param p3, "identifier"    # Ljava/lang/String;
    .param p5, "onConstruction"    # Lorg/mockito/internal/creation/bytebuddy/ConstructionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/internal/util/concurrent/WeakConcurrentMap<",
            "Ljava/lang/Object;",
            "Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;",
            ">;",
            "Lorg/mockito/internal/util/concurrent/DetachedThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Lorg/mockito/internal/creation/bytebuddy/ConstructionCallback;",
            ")V"
        }
    .end annotation

    .line 80
    .local p1, "interceptors":Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;, "Lorg/mockito/internal/util/concurrent/WeakConcurrentMap<Ljava/lang/Object;Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;>;"
    .local p2, "mockedStatics":Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;, "Lorg/mockito/internal/util/concurrent/DetachedThreadLocal<Ljava/util/Map<Ljava/lang/Class<*>;Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;>;>;"
    .local p4, "isMockConstruction":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/Class<*>;>;"
    invoke-direct {p0}, Lorg/mockito/internal/creation/bytebuddy/inject/MockMethodDispatcher;-><init>()V

    .line 67
    new-instance v0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;-><init>(Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$1;)V

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->selfCallInfo:Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;

    .line 68
    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default;->forJavaHierarchy()Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->compiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    .line 69
    new-instance v0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WithInlinedExpunction;

    invoke-direct {v0}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WithInlinedExpunction;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->graphs:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    .line 81
    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->interceptors:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    .line 82
    iput-object p2, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->mockedStatics:Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;

    .line 83
    iput-object p5, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->onConstruction:Lorg/mockito/internal/creation/bytebuddy/ConstructionCallback;

    .line 84
    iput-object p3, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->identifier:Ljava/lang/String;

    .line 85
    iput-object p4, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->isMockConstruction:Ljava/util/function/Predicate;

    .line 86
    return-void
.end method

.method static synthetic access$500(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ljava/lang/reflect/Method;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 60
    invoke-static {p0, p1, p2}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->tryInvoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;)Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;
    .locals 1
    .param p0, "x0"    # Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;

    .line 60
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->selfCallInfo:Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;

    return-object v0
.end method

.method static synthetic access$900(Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;)Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;

    .line 60
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->interceptors:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    return-object v0
.end method

.method private static enter(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/util/concurrent/Callable;
    .locals 2
    .param p0, "identifier"    # Ljava/lang/String;
        .annotation runtime Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$Identifier;
        .end annotation
    .end param
    .param p1, "mock"    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/asm/Advice$This;
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
            "Ljava/lang/Object;",
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

    .line 96
    invoke-static {p0, p1}, Lorg/mockito/internal/creation/bytebuddy/inject/MockMethodDispatcher;->get(Ljava/lang/String;Ljava/lang/Object;)Lorg/mockito/internal/creation/bytebuddy/inject/MockMethodDispatcher;

    move-result-object v0

    .line 97
    .local v0, "dispatcher":Lorg/mockito/internal/creation/bytebuddy/inject/MockMethodDispatcher;
    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {v0, p1}, Lorg/mockito/internal/creation/bytebuddy/inject/MockMethodDispatcher;->isMocked(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    invoke-virtual {v0, p1, p2}, Lorg/mockito/internal/creation/bytebuddy/inject/MockMethodDispatcher;->isOverridden(Ljava/lang/Object;Ljava/lang/reflect/Method;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lorg/mockito/internal/creation/bytebuddy/inject/MockMethodDispatcher;->handle(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object v1

    return-object v1

    .line 100
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

    .line 112
    .local p1, "mocked":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<*>;"
    if-eqz p1, :cond_0

    .line 113
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    .line 115
    :cond_0
    return-void
.end method

.method static hideRecursiveCall(Ljava/lang/Throwable;ILjava/lang/Class;)Ljava/lang/Throwable;
    .locals 6
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "current"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "I",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 119
    .local p2, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 120
    .local v0, "stack":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x0

    .line 123
    .local v1, "skip":I
    :cond_0
    array-length v2, v0

    sub-int/2addr v2, p1

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v2, v1

    aget-object v2, v0, v2

    .line 124
    .local v2, "next":Ljava/lang/StackTraceElement;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    array-length v3, v0

    sub-int/2addr v3, p1

    sub-int/2addr v3, v1

    .line 126
    .local v3, "top":I
    array-length v4, v0

    sub-int/2addr v4, v1

    new-array v4, v4, [Ljava/lang/StackTraceElement;

    .line 127
    .local v4, "cleared":[Ljava/lang/StackTraceElement;
    const/4 v5, 0x0

    invoke-static {v0, v5, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    add-int v5, v3, v1

    invoke-static {v0, v5, v4, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    invoke-virtual {p0, v4}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    return-object p0

    .line 131
    .end local v0    # "stack":[Ljava/lang/StackTraceElement;
    .end local v1    # "skip":I
    .end local v2    # "next":Ljava/lang/StackTraceElement;
    .end local v3    # "top":I
    .end local v4    # "cleared":[Ljava/lang/StackTraceElement;
    :catch_0
    move-exception v0

    .line 134
    .local v0, "ignored":Ljava/lang/RuntimeException;
    return-object p0
.end method

.method private static tryInvoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p0, "origin"    # Ljava/lang/reflect/Method;
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 331
    invoke-static {}, Lorg/mockito/internal/configuration/plugins/Plugins;->getMemberAccessor()Lorg/mockito/plugins/MemberAccessor;

    move-result-object v0

    .line 333
    .local v0, "accessor":Lorg/mockito/plugins/MemberAccessor;
    :try_start_0
    invoke-interface {v0, p0, p1, p2}, Lorg/mockito/plugins/MemberAccessor;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 334
    :catch_0
    move-exception v1

    .line 335
    .local v1, "exception":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 336
    .local v2, "cause":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 338
    .local v3, "tmpStack":[Ljava/lang/StackTraceElement;
    array-length v4, v3

    .line 340
    .local v4, "skip":I
    if-eqz p1, :cond_0

    .line 341
    const/4 v4, 0x0

    .line 342
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 345
    .local v5, "causingClassName":Ljava/lang/String;
    :goto_0
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "skip":I
    .local v6, "skip":I
    aget-object v4, v3, v4

    .line 346
    .local v4, "stackFrame":Ljava/lang/StackTraceElement;
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    move v4, v6

    if-eqz v7, :cond_0

    goto :goto_0

    .line 349
    .end local v5    # "causingClassName":Ljava/lang/String;
    .end local v6    # "skip":I
    .local v4, "skip":I
    :cond_0
    new-instance v5, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;

    invoke-direct {v5}, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;-><init>()V

    .line 350
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v2, v4, v6}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->hideRecursiveCall(Ljava/lang/Throwable;ILjava/lang/Class;)Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;->filter(Ljava/lang/Throwable;)V

    .line 351
    throw v2
.end method


# virtual methods
.method public handle(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/util/concurrent/Callable;
    .locals 10
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "origin"    # Ljava/lang/reflect/Method;
    .param p3, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
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

    .line 140
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->interceptors:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;

    .line 141
    .local v6, "interceptor":Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;
    const/4 v7, 0x0

    if-nez v6, :cond_0

    .line 142
    return-object v7

    .line 145
    :cond_0
    instance-of v0, p1, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    .line 146
    new-instance v8, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SerializableRealMethodCall;

    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->identifier:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, v8

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SerializableRealMethodCall;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$1;)V

    .local v0, "realMethod":Lorg/mockito/internal/invocation/RealMethod;
    goto :goto_0

    .line 148
    .end local v0    # "realMethod":Lorg/mockito/internal/invocation/RealMethod;
    :cond_1
    new-instance v8, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$RealMethodCall;

    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->selfCallInfo:Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;

    const/4 v5, 0x0

    move-object v0, v8

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$RealMethodCall;-><init>(Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$1;)V

    .line 150
    .local v8, "realMethod":Lorg/mockito/internal/invocation/RealMethod;
    :goto_0
    new-instance v9, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ReturnValueWrapper;

    new-instance v5, Lorg/mockito/internal/debugging/LocationImpl;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const/4 v1, 0x1

    invoke-direct {v5, v0, v1}, Lorg/mockito/internal/debugging/LocationImpl;-><init>(Ljava/lang/Throwable;Z)V

    .line 151
    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v8

    invoke-virtual/range {v0 .. v5}, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;->doIntercept(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lorg/mockito/internal/invocation/RealMethod;Lorg/mockito/invocation/Location;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v9, v0, v7}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ReturnValueWrapper;-><init>(Ljava/lang/Object;Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$1;)V

    .line 150
    return-object v9
.end method

.method public handleConstruction(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "arguments"    # [Ljava/lang/Object;
    .param p4, "parameterTypeNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 180
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->onConstruction:Lorg/mockito/internal/creation/bytebuddy/ConstructionCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/mockito/internal/creation/bytebuddy/ConstructionCallback;->apply(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public handleStatic(Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/util/concurrent/Callable;
    .locals 11
    .param p2, "origin"    # Ljava/lang/reflect/Method;
    .param p3, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 162
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->mockedStatics:Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;

    invoke-virtual {v0}, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 163
    .local v0, "interceptors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    new-instance v2, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ReturnValueWrapper;

    .line 168
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;

    new-instance v3, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$StaticMethodCall;

    iget-object v6, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->selfCallInfo:Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;

    const/4 v10, 0x0

    move-object v5, v3

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v5 .. v10}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$StaticMethodCall;-><init>(Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$1;)V

    new-instance v9, Lorg/mockito/internal/debugging/LocationImpl;

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    const/4 v6, 0x1

    invoke-direct {v9, v5, v6}, Lorg/mockito/internal/debugging/LocationImpl;-><init>(Ljava/lang/Throwable;Z)V

    .line 169
    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, v3

    invoke-virtual/range {v4 .. v9}, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;->doIntercept(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lorg/mockito/internal/invocation/RealMethod;Lorg/mockito/invocation/Location;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ReturnValueWrapper;-><init>(Ljava/lang/Object;Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$1;)V

    .line 166
    return-object v2

    .line 164
    :cond_1
    :goto_0
    return-object v1
.end method

.method public isConstructorMock(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 224
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->isMockConstruction:Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMock(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;

    .line 187
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->interceptors:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    iget-object v0, v0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->target:Ljava/util/concurrent/ConcurrentMap;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->interceptors:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMocked(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;

    .line 192
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->selfCallInfo:Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;->checkSelfCall(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->isMock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMockedStatic(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 197
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->selfCallInfo:Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;->checkSelfCall(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 198
    return v1

    .line 200
    :cond_0
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->mockedStatics:Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;

    invoke-virtual {v0}, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 201
    .local v0, "interceptors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;*>;"
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isOverridden(Ljava/lang/Object;Ljava/lang/reflect/Method;)Z
    .locals 5
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "origin"    # Ljava/lang/reflect/Method;

    .line 206
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->graphs:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 207
    .local v0, "reference":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lnet/bytebuddy/dynamic/scaffold/MethodGraph;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph;

    .line 208
    .local v1, "methodGraph":Lnet/bytebuddy/dynamic/scaffold/MethodGraph;
    :goto_0
    if-nez v1, :cond_1

    .line 209
    iget-object v2, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->compiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    new-instance v3, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, v4}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v2, v3}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;->compile(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;

    move-result-object v1

    .line 210
    iget-object v2, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->graphs:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_1
    new-instance v2, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    invoke-direct {v2, p2}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    .line 214
    invoke-virtual {v2}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;->asSignatureToken()Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    move-result-object v2

    .line 213
    invoke-interface {v1, v2}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph;->locate(Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;

    move-result-object v2

    .line 215
    .local v2, "node":Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;
    invoke-interface {v2}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;->getSort()Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

    move-result-object v3

    invoke-virtual {v3}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;->isResolved()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 216
    invoke-interface {v2}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;->getRepresentative()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object v3

    .line 217
    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodDescription;->asDefined()Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 218
    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    .line 219
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v3, 0x1

    .line 215
    :goto_2
    return v3
.end method
