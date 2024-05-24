.class public Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;
.super Ljava/lang/Object;
.source "MockMethodInterceptor.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor$DispatcherDefaultingToRealMethod;,
        Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor$ForWriteReplace;,
        Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor$ForEquals;,
        Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor$ForHashCode;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x63445fa12f3038a3L


# instance fields
.field final handler:Lorg/mockito/invocation/MockHandler;

.field private final mockCreationSettings:Lorg/mockito/mock/MockCreationSettings;

.field private final serializationSupport:Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport;

.field private transient weakReferenceHatch:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/mockito/invocation/MockHandler;Lorg/mockito/mock/MockCreationSettings;)V
    .locals 1
    .param p1, "handler"    # Lorg/mockito/invocation/MockHandler;
    .param p2, "mockCreationSettings"    # Lorg/mockito/mock/MockCreationSettings;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;->weakReferenceHatch:Ljava/lang/ThreadLocal;

    .line 44
    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;->handler:Lorg/mockito/invocation/MockHandler;

    .line 45
    iput-object p2, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;->mockCreationSettings:Lorg/mockito/mock/MockCreationSettings;

    .line 46
    new-instance v0, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport;

    invoke-direct {v0}, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;->serializationSupport:Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport;

    .line 47
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 50
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 51
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;->weakReferenceHatch:Ljava/lang/ThreadLocal;

    .line 52
    return-void
.end method


# virtual methods
.method doIntercept(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lorg/mockito/internal/invocation/RealMethod;)Ljava/lang/Object;
    .locals 6
    .param p1, "mock"    # Ljava/lang/Object;
    .param p2, "invokedMethod"    # Ljava/lang/reflect/Method;
    .param p3, "arguments"    # [Ljava/lang/Object;
    .param p4, "realMethod"    # Lorg/mockito/internal/invocation/RealMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 56
    new-instance v5, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {v5}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;->doIntercept(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lorg/mockito/internal/invocation/RealMethod;Lorg/mockito/invocation/Location;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method doIntercept(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lorg/mockito/internal/invocation/RealMethod;Lorg/mockito/invocation/Location;)Ljava/lang/Object;
    .locals 7
    .param p1, "mock"    # Ljava/lang/Object;
    .param p2, "invokedMethod"    # Ljava/lang/reflect/Method;
    .param p3, "arguments"    # [Ljava/lang/Object;
    .param p4, "realMethod"    # Lorg/mockito/internal/invocation/RealMethod;
    .param p5, "location"    # Lorg/mockito/invocation/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;->weakReferenceHatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 82
    :try_start_0
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;->handler:Lorg/mockito/invocation/MockHandler;

    iget-object v5, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;->mockCreationSettings:Lorg/mockito/mock/MockCreationSettings;

    .line 83
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lorg/mockito/internal/invocation/DefaultInvocationFactory;->createInvocation(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lorg/mockito/internal/invocation/RealMethod;Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/invocation/Location;)Lorg/mockito/internal/invocation/InterceptedInvocation;

    move-result-object v1

    .line 82
    invoke-interface {v0, v1}, Lorg/mockito/invocation/MockHandler;->handle(Lorg/mockito/invocation/Invocation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;->weakReferenceHatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 82
    return-object v0

    .line 91
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;->weakReferenceHatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    throw v0
.end method

.method public getMockHandler()Lorg/mockito/invocation/MockHandler;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;->handler:Lorg/mockito/invocation/MockHandler;

    return-object v0
.end method

.method public getSerializationSupport()Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;->serializationSupport:Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport;

    return-object v0
.end method
