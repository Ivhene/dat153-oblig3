.class public Lorg/mockito/internal/stubbing/answers/InvocationInfo;
.super Ljava/lang/Object;
.source "InvocationInfo.java"

# interfaces
.implements Lorg/mockito/internal/invocation/AbstractAwareMethod;


# instance fields
.field private final invocation:Lorg/mockito/invocation/InvocationOnMock;

.field private final method:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Lorg/mockito/invocation/InvocationOnMock;)V
    .locals 1
    .param p1, "theInvocation"    # Lorg/mockito/invocation/InvocationOnMock;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->method:Ljava/lang/reflect/Method;

    .line 24
    iput-object p1, p0, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->invocation:Lorg/mockito/invocation/InvocationOnMock;

    .line 25
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAbstract()Z
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDeclaredOnInterface()Z
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    return v0
.end method

.method public isValidException(Ljava/lang/Throwable;)Z
    .locals 7
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 28
    iget-object v0, p0, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 29
    .local v0, "exceptions":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 30
    .local v1, "throwableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 31
    .local v5, "exception":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 32
    const/4 v2, 0x1

    return v2

    .line 30
    .end local v5    # "exception":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 36
    :cond_1
    return v3
.end method

.method public isValidReturnType(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 40
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0

    .line 41
    :cond_1
    :goto_0
    invoke-static {p1}, Lorg/mockito/internal/util/Primitives;->primitiveTypeOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->method:Ljava/lang/reflect/Method;

    .line 42
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/mockito/internal/util/Primitives;->primitiveTypeOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 41
    :goto_1
    return v0
.end method

.method public isVoid()Z
    .locals 3

    .line 53
    iget-object v0, p0, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->invocation:Lorg/mockito/invocation/InvocationOnMock;

    .line 54
    invoke-interface {v0}, Lorg/mockito/invocation/InvocationOnMock;->getMock()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/internal/util/MockUtil;->getMockHandler(Ljava/lang/Object;)Lorg/mockito/invocation/MockHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/invocation/MockHandler;->getMockSettings()Lorg/mockito/mock/MockCreationSettings;

    move-result-object v0

    .line 55
    .local v0, "mockSettings":Lorg/mockito/mock/MockCreationSettings;
    nop

    .line 56
    invoke-interface {v0}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->inferFrom(Ljava/lang/reflect/Type;)Lorg/mockito/internal/util/reflection/GenericMetadataSupport;

    move-result-object v1

    iget-object v2, p0, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->method:Ljava/lang/reflect/Method;

    .line 57
    invoke-virtual {v1, v2}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->resolveGenericReturnType(Ljava/lang/reflect/Method;)Lorg/mockito/internal/util/reflection/GenericMetadataSupport;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->rawType()Ljava/lang/Class;

    move-result-object v1

    .line 59
    .local v1, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_1

    const-class v2, Ljava/lang/Void;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method public printMethodReturnType()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public returnsPrimitive()Z
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    return v0
.end method
