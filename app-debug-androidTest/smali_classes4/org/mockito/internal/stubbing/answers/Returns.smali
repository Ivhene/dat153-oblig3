.class public Lorg/mockito/internal/stubbing/answers/Returns;
.super Ljava/lang/Object;
.source "Returns.java"

# interfaces
.implements Lorg/mockito/stubbing/Answer;
.implements Lorg/mockito/stubbing/ValidableAnswer;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mockito/stubbing/Answer<",
        "Ljava/lang/Object;",
        ">;",
        "Lorg/mockito/stubbing/ValidableAnswer;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x56acdb9db089f6e4L


# instance fields
.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/mockito/internal/stubbing/answers/Returns;->value:Ljava/lang/Object;

    .line 24
    return-void
.end method

.method private printReturnType()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/mockito/internal/stubbing/answers/Returns;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private returnType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lorg/mockito/internal/stubbing/answers/Returns;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private returnsNull()Z
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/mockito/internal/stubbing/answers/Returns;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;
    .locals 1
    .param p1, "invocation"    # Lorg/mockito/invocation/InvocationOnMock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lorg/mockito/internal/stubbing/answers/Returns;->value:Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/mockito/internal/util/KotlinInlineClassUtil;->unboxUnderlyingValueIfNeeded(Lorg/mockito/invocation/InvocationOnMock;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Returns: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/stubbing/answers/Returns;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validateFor(Lorg/mockito/invocation/InvocationOnMock;)V
    .locals 4
    .param p1, "invocation"    # Lorg/mockito/invocation/InvocationOnMock;

    .line 33
    new-instance v0, Lorg/mockito/internal/stubbing/answers/InvocationInfo;

    invoke-direct {v0, p1}, Lorg/mockito/internal/stubbing/answers/InvocationInfo;-><init>(Lorg/mockito/invocation/InvocationOnMock;)V

    .line 34
    .local v0, "invocationInfo":Lorg/mockito/internal/stubbing/answers/InvocationInfo;
    invoke-virtual {v0}, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->isVoid()Z

    move-result v1

    if-nez v1, :cond_4

    .line 38
    invoke-direct {p0}, Lorg/mockito/internal/stubbing/answers/Returns;->returnsNull()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->returnsPrimitive()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    nop

    .line 40
    invoke-virtual {v0}, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->printMethodReturnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->getMethodName()Ljava/lang/String;

    move-result-object v2

    .line 39
    const-string v3, "null"

    invoke-static {v1, v3, v2}, Lorg/mockito/internal/exceptions/Reporter;->wrongTypeOfReturnValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v1

    throw v1

    .line 43
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/mockito/internal/stubbing/answers/Returns;->returnsNull()Z

    move-result v1

    if-nez v1, :cond_3

    .line 44
    invoke-direct {p0}, Lorg/mockito/internal/stubbing/answers/Returns;->returnType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->isValidReturnType(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 46
    invoke-direct {p0}, Lorg/mockito/internal/stubbing/answers/Returns;->returnType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0}, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    .line 45
    invoke-static {v1, v2}, Lorg/mockito/internal/util/KotlinInlineClassUtil;->isInlineClassWithAssignableUnderlyingType(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 47
    :cond_2
    nop

    .line 48
    invoke-virtual {v0}, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->printMethodReturnType()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-direct {p0}, Lorg/mockito/internal/stubbing/answers/Returns;->printReturnType()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-virtual {v0}, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->getMethodName()Ljava/lang/String;

    move-result-object v3

    .line 47
    invoke-static {v1, v2, v3}, Lorg/mockito/internal/exceptions/Reporter;->wrongTypeOfReturnValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v1

    throw v1

    .line 52
    :cond_3
    :goto_1
    return-void

    .line 35
    :cond_4
    invoke-virtual {v0}, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mockito/internal/exceptions/Reporter;->cannotStubVoidMethodWithAReturnValue(Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v1

    throw v1
.end method
