.class public Lorg/mockito/internal/stubbing/defaultanswers/ForwardsInvocations;
.super Ljava/lang/Object;
.source "ForwardsInvocations.java"

# interfaces
.implements Lorg/mockito/stubbing/Answer;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mockito/stubbing/Answer<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x73cabe17935ed07eL


# instance fields
.field private delegatedObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "delegatedObject"    # Ljava/lang/Object;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mockito/internal/stubbing/defaultanswers/ForwardsInvocations;->delegatedObject:Ljava/lang/Object;

    .line 31
    iput-object p1, p0, Lorg/mockito/internal/stubbing/defaultanswers/ForwardsInvocations;->delegatedObject:Ljava/lang/Object;

    .line 32
    return-void
.end method

.method private static compatibleReturnTypes(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 72
    .local p0, "superType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "subType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private getDelegateMethod(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 3
    .param p1, "mockMethod"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 60
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/stubbing/defaultanswers/ForwardsInvocations;->delegatedObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    return-object p1

    .line 65
    :cond_0
    iget-object v0, p0, Lorg/mockito/internal/stubbing/defaultanswers/ForwardsInvocations;->delegatedObject:Ljava/lang/Object;

    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 67
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 65
    return-object v0
.end method


# virtual methods
.method public answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;
    .locals 5
    .param p1, "invocation"    # Lorg/mockito/invocation/InvocationOnMock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 36
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 39
    .local v0, "mockMethod":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-direct {p0, v0}, Lorg/mockito/internal/stubbing/defaultanswers/ForwardsInvocations;->getDelegateMethod(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 41
    .local v1, "delegateMethod":Ljava/lang/reflect/Method;
    nop

    .line 42
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    .line 41
    invoke-static {v2, v3}, Lorg/mockito/internal/stubbing/defaultanswers/ForwardsInvocations;->compatibleReturnTypes(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    invoke-static {}, Lorg/mockito/internal/configuration/plugins/Plugins;->getMemberAccessor()Lorg/mockito/plugins/MemberAccessor;

    move-result-object v2

    .line 48
    .local v2, "accessor":Lorg/mockito/plugins/MemberAccessor;
    move-object v3, p1

    check-cast v3, Lorg/mockito/invocation/Invocation;

    invoke-interface {v3}, Lorg/mockito/invocation/Invocation;->getRawArguments()[Ljava/lang/Object;

    move-result-object v3

    .line 49
    .local v3, "rawArguments":[Ljava/lang/Object;
    iget-object v4, p0, Lorg/mockito/internal/stubbing/defaultanswers/ForwardsInvocations;->delegatedObject:Ljava/lang/Object;

    invoke-interface {v2, v1, v4, v3}, Lorg/mockito/plugins/MemberAccessor;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 43
    .end local v2    # "accessor":Lorg/mockito/plugins/MemberAccessor;
    .end local v3    # "rawArguments":[Ljava/lang/Object;
    :cond_0
    nop

    .line 44
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getMock()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/mockito/internal/stubbing/defaultanswers/ForwardsInvocations;->delegatedObject:Ljava/lang/Object;

    .line 43
    invoke-static {v0, v1, v2, v3}, Lorg/mockito/internal/exceptions/Reporter;->delegatedMethodHasWrongReturnType(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v2

    .end local v0    # "mockMethod":Ljava/lang/reflect/Method;
    .end local p1    # "invocation":Lorg/mockito/invocation/InvocationOnMock;
    throw v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v1    # "delegateMethod":Ljava/lang/reflect/Method;
    .restart local v0    # "mockMethod":Ljava/lang/reflect/Method;
    .restart local p1    # "invocation":Lorg/mockito/invocation/InvocationOnMock;
    :catch_0
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    throw v2

    .line 50
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    nop

    .line 52
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getMock()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/mockito/internal/stubbing/defaultanswers/ForwardsInvocations;->delegatedObject:Ljava/lang/Object;

    .line 51
    invoke-static {v0, v2, v3}, Lorg/mockito/internal/exceptions/Reporter;->delegatedMethodDoesNotExistOnDelegate(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v2

    throw v2
.end method
