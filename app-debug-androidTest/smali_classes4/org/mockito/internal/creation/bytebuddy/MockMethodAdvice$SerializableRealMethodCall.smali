.class Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SerializableRealMethodCall;
.super Ljava/lang/Object;
.source "MockMethodAdvice.java"

# interfaces
.implements Lorg/mockito/internal/invocation/RealMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializableRealMethodCall"
.end annotation


# instance fields
.field private final arguments:[Ljava/lang/Object;

.field private final identifier:Ljava/lang/String;

.field private final instanceRef:Lorg/mockito/internal/invocation/mockref/MockReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/internal/invocation/mockref/MockReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final origin:Lorg/mockito/internal/invocation/SerializableMethod;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "origin"    # Ljava/lang/reflect/Method;
    .param p3, "instance"    # Ljava/lang/Object;
    .param p4, "arguments"    # [Ljava/lang/Object;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    new-instance v0, Lorg/mockito/internal/invocation/SerializableMethod;

    invoke-direct {v0, p2}, Lorg/mockito/internal/invocation/SerializableMethod;-><init>(Ljava/lang/reflect/Method;)V

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SerializableRealMethodCall;->origin:Lorg/mockito/internal/invocation/SerializableMethod;

    .line 270
    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SerializableRealMethodCall;->identifier:Ljava/lang/String;

    .line 271
    new-instance v0, Lorg/mockito/internal/invocation/mockref/MockWeakReference;

    invoke-direct {v0, p3}, Lorg/mockito/internal/invocation/mockref/MockWeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SerializableRealMethodCall;->instanceRef:Lorg/mockito/internal/invocation/mockref/MockReference;

    .line 272
    iput-object p4, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SerializableRealMethodCall;->arguments:[Ljava/lang/Object;

    .line 273
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/reflect/Method;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # [Ljava/lang/Object;
    .param p5, "x4"    # Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$1;

    .line 257
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SerializableRealMethodCall;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SerializableRealMethodCall;->origin:Lorg/mockito/internal/invocation/SerializableMethod;

    invoke-virtual {v0}, Lorg/mockito/internal/invocation/SerializableMethod;->getJavaMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 283
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SerializableRealMethodCall;->identifier:Ljava/lang/String;

    iget-object v2, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SerializableRealMethodCall;->instanceRef:Lorg/mockito/internal/invocation/mockref/MockReference;

    .line 284
    invoke-interface {v2}, Lorg/mockito/internal/invocation/mockref/MockReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/mockito/internal/creation/bytebuddy/inject/MockMethodDispatcher;->get(Ljava/lang/String;Ljava/lang/Object;)Lorg/mockito/internal/creation/bytebuddy/inject/MockMethodDispatcher;

    move-result-object v1

    .line 285
    .local v1, "mockMethodDispatcher":Lorg/mockito/internal/creation/bytebuddy/inject/MockMethodDispatcher;
    instance-of v2, v1, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;

    if-eqz v2, :cond_0

    .line 288
    move-object v2, v1

    check-cast v2, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;

    .line 290
    invoke-static {v2}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->access$600(Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;)Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;

    move-result-object v2

    iget-object v3, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SerializableRealMethodCall;->instanceRef:Lorg/mockito/internal/invocation/mockref/MockReference;

    invoke-interface {v3}, Lorg/mockito/internal/invocation/mockref/MockReference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;->replace(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 292
    .local v2, "previous":Ljava/lang/Object;
    :try_start_0
    iget-object v3, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SerializableRealMethodCall;->instanceRef:Lorg/mockito/internal/invocation/mockref/MockReference;

    invoke-interface {v3}, Lorg/mockito/internal/invocation/mockref/MockReference;->get()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SerializableRealMethodCall;->arguments:[Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->access$500(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    move-object v4, v1

    check-cast v4, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;

    invoke-static {v4}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->access$600(Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;)Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;->set(Ljava/lang/Object;)V

    .line 292
    return-object v3

    .line 294
    :catchall_0
    move-exception v3

    move-object v4, v1

    check-cast v4, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;

    invoke-static {v4}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->access$600(Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;)Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;->set(Ljava/lang/Object;)V

    throw v3

    .line 286
    .end local v2    # "previous":Ljava/lang/Object;
    :cond_0
    new-instance v2, Lorg/mockito/exceptions/base/MockitoException;

    const-string v3, "Unexpected dispatcher for advice-based super call"

    invoke-direct {v2, v3}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public isInvokable()Z
    .locals 1

    .line 277
    const/4 v0, 0x1

    return v0
.end method
