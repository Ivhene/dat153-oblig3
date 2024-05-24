.class public Lorg/mockito/internal/stubbing/answers/ReturnsArgumentAt;
.super Ljava/lang/Object;
.source "ReturnsArgumentAt.java"

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
.field public static final LAST_ARGUMENT:I = -0x1

.field private static final serialVersionUID:J = -0x82daaf2981db83dL


# instance fields
.field private final wantedArgumentPosition:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "wantedArgumentPosition"    # I

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-ltz p1, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->invalidArgumentRangeAtIdentityAnswerCreationTime()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v0

    throw v0

    .line 50
    :cond_1
    :goto_0
    iput p1, p0, Lorg/mockito/internal/stubbing/answers/ReturnsArgumentAt;->wantedArgumentPosition:I

    .line 51
    return-void
.end method

.method private inferArgumentType(Lorg/mockito/invocation/Invocation;I)Ljava/lang/Class;
    .locals 4
    .param p1, "invocation"    # Lorg/mockito/invocation/Invocation;
    .param p2, "argumentIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/Invocation;",
            "I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 126
    invoke-interface {p1}, Lorg/mockito/invocation/Invocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 129
    .local v0, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-interface {p1}, Lorg/mockito/invocation/Invocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v1

    if-nez v1, :cond_2

    .line 130
    aget-object v1, v0, p2

    .line 131
    .local v1, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p1, p2}, Lorg/mockito/invocation/Invocation;->getArgument(I)Ljava/lang/Object;

    move-result-object v2

    .line 133
    .local v2, "argumentValue":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    return-object v3

    .line 134
    :cond_1
    :goto_0
    return-object v1

    .line 141
    .end local v1    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "argumentValue":Ljava/lang/Object;
    :cond_2
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 143
    .local v1, "varargIndex":I
    if-ge p2, v1, :cond_3

    .line 145
    aget-object v2, v0, p2

    return-object v2

    .line 148
    :cond_3
    invoke-interface {p1}, Lorg/mockito/invocation/Invocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/mockito/internal/stubbing/answers/ReturnsArgumentAt;->wantedArgIndexIsVarargAndSameTypeAsReturnType(Ljava/lang/reflect/Method;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 152
    aget-object v2, v0, p2

    return-object v2

    .line 155
    :cond_4
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    return-object v2
.end method

.method private inferWantedArgumentPosition(Lorg/mockito/invocation/InvocationOnMock;)I
    .locals 2
    .param p1, "invocation"    # Lorg/mockito/invocation/InvocationOnMock;

    .line 76
    iget v0, p0, Lorg/mockito/internal/stubbing/answers/ReturnsArgumentAt;->wantedArgumentPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 77
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getArguments()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 80
    :cond_0
    return v0
.end method

.method private validateArgumentTypeCompatibility(Lorg/mockito/invocation/Invocation;I)V
    .locals 4
    .param p1, "invocation"    # Lorg/mockito/invocation/Invocation;
    .param p2, "argumentPosition"    # I

    .line 92
    new-instance v0, Lorg/mockito/internal/stubbing/answers/InvocationInfo;

    invoke-direct {v0, p1}, Lorg/mockito/internal/stubbing/answers/InvocationInfo;-><init>(Lorg/mockito/invocation/InvocationOnMock;)V

    .line 94
    .local v0, "invocationInfo":Lorg/mockito/internal/stubbing/answers/InvocationInfo;
    invoke-direct {p0, p1, p2}, Lorg/mockito/internal/stubbing/answers/ReturnsArgumentAt;->inferArgumentType(Lorg/mockito/invocation/Invocation;I)Ljava/lang/Class;

    move-result-object v1

    .line 96
    .local v1, "inferredArgumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, v1}, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->isValidReturnType(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    return-void

    .line 97
    :cond_0
    nop

    .line 99
    invoke-virtual {v0}, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->printMethodReturnType()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/mockito/internal/stubbing/answers/ReturnsArgumentAt;->wantedArgumentPosition:I

    .line 97
    invoke-static {p1, v2, v1, v3}, Lorg/mockito/internal/exceptions/Reporter;->wrongTypeOfArgumentToReturn(Lorg/mockito/invocation/InvocationOnMock;Ljava/lang/String;Ljava/lang/Class;I)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v2

    throw v2
.end method

.method private validateIndexWithinInvocationRange(Lorg/mockito/invocation/InvocationOnMock;I)V
    .locals 2
    .param p1, "invocation"    # Lorg/mockito/invocation/InvocationOnMock;
    .param p2, "argumentPosition"    # I

    .line 85
    invoke-direct {p0, p1, p2}, Lorg/mockito/internal/stubbing/answers/ReturnsArgumentAt;->wantedArgumentPositionIsValidForInvocation(Lorg/mockito/invocation/InvocationOnMock;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    iget v0, p0, Lorg/mockito/internal/stubbing/answers/ReturnsArgumentAt;->wantedArgumentPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p1, v1, v0}, Lorg/mockito/internal/exceptions/Reporter;->invalidArgumentPositionRangeAtInvocationTime(Lorg/mockito/invocation/InvocationOnMock;ZI)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v0

    throw v0

    .line 89
    :cond_1
    return-void
.end method

.method private wantedArgIndexIsVarargAndSameTypeAsReturnType(Ljava/lang/reflect/Method;I)Z
    .locals 4
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "argumentPosition"    # I

    .line 107
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 108
    .local v0, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v1

    if-eqz v1, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne p2, v1, :cond_0

    .line 110
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    aget-object v3, v0, p2

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 108
    :goto_0
    return v2
.end method

.method private wantedArgumentPositionIsValidForInvocation(Lorg/mockito/invocation/InvocationOnMock;I)Z
    .locals 3
    .param p1, "invocation"    # Lorg/mockito/invocation/InvocationOnMock;
    .param p2, "argumentPosition"    # I

    .line 115
    const/4 v0, 0x0

    if-gez p2, :cond_0

    .line 116
    return v0

    .line 118
    :cond_0
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 119
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getArguments()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    if-le v1, p2, :cond_1

    move v0, v2

    :cond_1
    return v0

    .line 122
    :cond_2
    return v2
.end method


# virtual methods
.method public answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;
    .locals 2
    .param p1, "invocation"    # Lorg/mockito/invocation/InvocationOnMock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1}, Lorg/mockito/internal/stubbing/answers/ReturnsArgumentAt;->inferWantedArgumentPosition(Lorg/mockito/invocation/InvocationOnMock;)I

    move-result v0

    .line 56
    .local v0, "argumentPosition":I
    invoke-direct {p0, p1, v0}, Lorg/mockito/internal/stubbing/answers/ReturnsArgumentAt;->validateIndexWithinInvocationRange(Lorg/mockito/invocation/InvocationOnMock;I)V

    .line 58
    nop

    .line 59
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 58
    invoke-direct {p0, v1, v0}, Lorg/mockito/internal/stubbing/answers/ReturnsArgumentAt;->wantedArgIndexIsVarargAndSameTypeAsReturnType(Ljava/lang/reflect/Method;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    move-object v1, p1

    check-cast v1, Lorg/mockito/invocation/Invocation;

    invoke-interface {v1}, Lorg/mockito/invocation/Invocation;->getRawArguments()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v0

    return-object v1

    .line 65
    :cond_0
    invoke-interface {p1, v0}, Lorg/mockito/invocation/InvocationOnMock;->getArgument(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public validateFor(Lorg/mockito/invocation/InvocationOnMock;)V
    .locals 2
    .param p1, "invocation"    # Lorg/mockito/invocation/InvocationOnMock;

    .line 70
    invoke-direct {p0, p1}, Lorg/mockito/internal/stubbing/answers/ReturnsArgumentAt;->inferWantedArgumentPosition(Lorg/mockito/invocation/InvocationOnMock;)I

    move-result v0

    .line 71
    .local v0, "argumentPosition":I
    invoke-direct {p0, p1, v0}, Lorg/mockito/internal/stubbing/answers/ReturnsArgumentAt;->validateIndexWithinInvocationRange(Lorg/mockito/invocation/InvocationOnMock;I)V

    .line 72
    move-object v1, p1

    check-cast v1, Lorg/mockito/invocation/Invocation;

    invoke-direct {p0, v1, v0}, Lorg/mockito/internal/stubbing/answers/ReturnsArgumentAt;->validateArgumentTypeCompatibility(Lorg/mockito/invocation/Invocation;I)V

    .line 73
    return-void
.end method
