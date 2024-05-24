.class public Lorg/mockito/internal/invocation/DefaultInvocationFactory;
.super Ljava/lang/Object;
.source "DefaultInvocationFactory.java"

# interfaces
.implements Lorg/mockito/invocation/InvocationFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createInvocation(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lorg/mockito/internal/invocation/RealMethod;Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/internal/invocation/InterceptedInvocation;
    .locals 6
    .param p0, "mock"    # Ljava/lang/Object;
    .param p1, "invokedMethod"    # Ljava/lang/reflect/Method;
    .param p2, "arguments"    # [Ljava/lang/Object;
    .param p3, "realMethod"    # Lorg/mockito/internal/invocation/RealMethod;
    .param p4, "settings"    # Lorg/mockito/mock/MockCreationSettings;

    .line 73
    new-instance v5, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {v5}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lorg/mockito/internal/invocation/DefaultInvocationFactory;->createInvocation(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lorg/mockito/internal/invocation/RealMethod;Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/invocation/Location;)Lorg/mockito/internal/invocation/InterceptedInvocation;

    move-result-object v0

    return-object v0
.end method

.method public static createInvocation(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lorg/mockito/internal/invocation/RealMethod;Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/invocation/Location;)Lorg/mockito/internal/invocation/InterceptedInvocation;
    .locals 8
    .param p0, "mock"    # Ljava/lang/Object;
    .param p1, "invokedMethod"    # Ljava/lang/reflect/Method;
    .param p2, "arguments"    # [Ljava/lang/Object;
    .param p3, "realMethod"    # Lorg/mockito/internal/invocation/RealMethod;
    .param p4, "settings"    # Lorg/mockito/mock/MockCreationSettings;
    .param p5, "location"    # Lorg/mockito/invocation/Location;

    .line 58
    new-instance v7, Lorg/mockito/internal/invocation/InterceptedInvocation;

    new-instance v1, Lorg/mockito/internal/invocation/mockref/MockWeakReference;

    invoke-direct {v1, p0}, Lorg/mockito/internal/invocation/mockref/MockWeakReference;-><init>(Ljava/lang/Object;)V

    .line 60
    invoke-static {p1, p4}, Lorg/mockito/internal/invocation/DefaultInvocationFactory;->createMockitoMethod(Ljava/lang/reflect/Method;Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/internal/invocation/MockitoMethod;

    move-result-object v2

    .line 64
    invoke-static {}, Lorg/mockito/internal/progress/SequenceNumber;->next()I

    move-result v6

    move-object v0, v7

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/mockito/internal/invocation/InterceptedInvocation;-><init>(Lorg/mockito/internal/invocation/mockref/MockReference;Lorg/mockito/internal/invocation/MockitoMethod;[Ljava/lang/Object;Lorg/mockito/internal/invocation/RealMethod;Lorg/mockito/invocation/Location;I)V

    .line 58
    return-object v7
.end method

.method private createInvocation(Ljava/lang/Object;Lorg/mockito/mock/MockCreationSettings;Ljava/lang/reflect/Method;Lorg/mockito/internal/invocation/RealMethod;[Ljava/lang/Object;)Lorg/mockito/invocation/Invocation;
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "settings"    # Lorg/mockito/mock/MockCreationSettings;
    .param p3, "method"    # Ljava/lang/reflect/Method;
    .param p4, "superMethod"    # Lorg/mockito/internal/invocation/RealMethod;
    .param p5, "args"    # [Ljava/lang/Object;

    .line 48
    invoke-static {p1, p3, p5, p4, p2}, Lorg/mockito/internal/invocation/DefaultInvocationFactory;->createInvocation(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lorg/mockito/internal/invocation/RealMethod;Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/internal/invocation/InterceptedInvocation;

    move-result-object v0

    return-object v0
.end method

.method private static createMockitoMethod(Ljava/lang/reflect/Method;Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/internal/invocation/MockitoMethod;
    .locals 1
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "settings"    # Lorg/mockito/mock/MockCreationSettings;

    .line 78
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->isSerializable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Lorg/mockito/internal/invocation/SerializableMethod;

    invoke-direct {v0, p0}, Lorg/mockito/internal/invocation/SerializableMethod;-><init>(Ljava/lang/reflect/Method;)V

    return-object v0

    .line 81
    :cond_0
    new-instance v0, Lorg/mockito/internal/creation/DelegatingMethod;

    invoke-direct {v0, p0}, Lorg/mockito/internal/creation/DelegatingMethod;-><init>(Ljava/lang/reflect/Method;)V

    return-object v0
.end method


# virtual methods
.method public varargs createInvocation(Ljava/lang/Object;Lorg/mockito/mock/MockCreationSettings;Ljava/lang/reflect/Method;Ljava/util/concurrent/Callable;[Ljava/lang/Object;)Lorg/mockito/invocation/Invocation;
    .locals 6
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "settings"    # Lorg/mockito/mock/MockCreationSettings;
    .param p3, "method"    # Ljava/lang/reflect/Method;
    .param p4, "realMethod"    # Ljava/util/concurrent/Callable;
    .param p5, "args"    # [Ljava/lang/Object;

    .line 27
    new-instance v4, Lorg/mockito/internal/invocation/RealMethod$FromCallable;

    invoke-direct {v4, p4}, Lorg/mockito/internal/invocation/RealMethod$FromCallable;-><init>(Ljava/util/concurrent/Callable;)V

    .line 28
    .local v4, "superMethod":Lorg/mockito/internal/invocation/RealMethod;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/mockito/internal/invocation/DefaultInvocationFactory;->createInvocation(Ljava/lang/Object;Lorg/mockito/mock/MockCreationSettings;Ljava/lang/reflect/Method;Lorg/mockito/internal/invocation/RealMethod;[Ljava/lang/Object;)Lorg/mockito/invocation/Invocation;

    move-result-object v0

    return-object v0
.end method

.method public varargs createInvocation(Ljava/lang/Object;Lorg/mockito/mock/MockCreationSettings;Ljava/lang/reflect/Method;Lorg/mockito/invocation/InvocationFactory$RealMethodBehavior;[Ljava/lang/Object;)Lorg/mockito/invocation/Invocation;
    .locals 6
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "settings"    # Lorg/mockito/mock/MockCreationSettings;
    .param p3, "method"    # Ljava/lang/reflect/Method;
    .param p4, "realMethod"    # Lorg/mockito/invocation/InvocationFactory$RealMethodBehavior;
    .param p5, "args"    # [Ljava/lang/Object;

    .line 38
    new-instance v4, Lorg/mockito/internal/invocation/RealMethod$FromBehavior;

    invoke-direct {v4, p4}, Lorg/mockito/internal/invocation/RealMethod$FromBehavior;-><init>(Lorg/mockito/invocation/InvocationFactory$RealMethodBehavior;)V

    .line 39
    .local v4, "superMethod":Lorg/mockito/internal/invocation/RealMethod;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/mockito/internal/invocation/DefaultInvocationFactory;->createInvocation(Ljava/lang/Object;Lorg/mockito/mock/MockCreationSettings;Ljava/lang/reflect/Method;Lorg/mockito/internal/invocation/RealMethod;[Ljava/lang/Object;)Lorg/mockito/invocation/Invocation;

    move-result-object v0

    return-object v0
.end method
