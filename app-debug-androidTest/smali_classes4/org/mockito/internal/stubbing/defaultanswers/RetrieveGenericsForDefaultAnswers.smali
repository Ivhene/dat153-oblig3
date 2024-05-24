.class final Lorg/mockito/internal/stubbing/defaultanswers/RetrieveGenericsForDefaultAnswers;
.super Ljava/lang/Object;
.source "RetrieveGenericsForDefaultAnswers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/stubbing/defaultanswers/RetrieveGenericsForDefaultAnswers$AnswerCallback;
    }
.end annotation


# static fields
.field private static final MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lorg/mockito/internal/MockitoCore;

    invoke-direct {v0}, Lorg/mockito/internal/MockitoCore;-><init>()V

    sput-object v0, Lorg/mockito/internal/stubbing/defaultanswers/RetrieveGenericsForDefaultAnswers;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static delegateChains(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 60
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;

    invoke-direct {v0}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;-><init>()V

    .line 61
    .local v0, "returnsEmptyValues":Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;
    invoke-virtual {v0, p0}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;->returnValueFor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 63
    .local v1, "result":Ljava/lang/Object;
    if-nez v1, :cond_2

    .line 64
    move-object v2, p0

    .line 65
    .local v2, "emptyValueForClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    .line 66
    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    .line 67
    .local v3, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 68
    .local v6, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, v6}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;->returnValueFor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 69
    if-eqz v1, :cond_0

    .line 70
    goto :goto_2

    .line 67
    .end local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 73
    :cond_1
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    .line 74
    .end local v3    # "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    goto :goto_0

    .line 77
    .end local v2    # "emptyValueForClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    if-nez v1, :cond_3

    .line 78
    new-instance v2, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMoreEmptyValues;

    invoke-direct {v2}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMoreEmptyValues;-><init>()V

    invoke-virtual {v2, p0}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMoreEmptyValues;->returnValueFor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 81
    :cond_3
    return-object v1
.end method

.method private static findTypeFromGeneric(Lorg/mockito/invocation/InvocationOnMock;Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;
    .locals 4
    .param p0, "invocation"    # Lorg/mockito/invocation/InvocationOnMock;
    .param p1, "returnType"    # Ljava/lang/reflect/TypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/InvocationOnMock;",
            "Ljava/lang/reflect/TypeVariable;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 94
    nop

    .line 95
    invoke-interface {p0}, Lorg/mockito/invocation/InvocationOnMock;->getMock()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/internal/util/MockUtil;->getMockHandler(Ljava/lang/Object;)Lorg/mockito/invocation/MockHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/invocation/MockHandler;->getMockSettings()Lorg/mockito/mock/MockCreationSettings;

    move-result-object v0

    .line 96
    .local v0, "mockSettings":Lorg/mockito/mock/MockCreationSettings;
    nop

    .line 97
    invoke-interface {v0}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->inferFrom(Ljava/lang/reflect/Type;)Lorg/mockito/internal/util/reflection/GenericMetadataSupport;

    move-result-object v1

    .line 98
    invoke-interface {p0}, Lorg/mockito/invocation/InvocationOnMock;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->resolveGenericReturnType(Ljava/lang/reflect/Method;)Lorg/mockito/internal/util/reflection/GenericMetadataSupport;

    move-result-object v1

    .line 99
    .local v1, "returnTypeSupport":Lorg/mockito/internal/util/reflection/GenericMetadataSupport;
    invoke-virtual {v1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->rawType()Ljava/lang/Class;

    move-result-object v2

    .line 102
    .local v2, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Ljava/lang/Object;

    if-ne v2, v3, :cond_0

    .line 103
    invoke-static {p0, p1}, Lorg/mockito/internal/stubbing/defaultanswers/RetrieveGenericsForDefaultAnswers;->findTypeFromGenericInArguments(Lorg/mockito/invocation/InvocationOnMock;Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;

    move-result-object v3

    return-object v3

    .line 105
    :cond_0
    return-object v2
.end method

.method private static findTypeFromGenericInArguments(Lorg/mockito/invocation/InvocationOnMock;Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;
    .locals 5
    .param p0, "invocation"    # Lorg/mockito/invocation/InvocationOnMock;
    .param p1, "returnType"    # Ljava/lang/reflect/TypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/InvocationOnMock;",
            "Ljava/lang/reflect/TypeVariable;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 117
    invoke-interface {p0}, Lorg/mockito/invocation/InvocationOnMock;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 118
    .local v0, "parameterTypes":[Ljava/lang/reflect/Type;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    const/4 v3, 0x0

    if-ge v1, v2, :cond_3

    .line 119
    aget-object v2, v0, v1

    .line 120
    .local v2, "argType":Ljava/lang/reflect/Type;
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 121
    invoke-interface {p0, v1}, Lorg/mockito/invocation/InvocationOnMock;->getArgument(I)Ljava/lang/Object;

    move-result-object v4

    .line 123
    .local v4, "argument":Ljava/lang/Object;
    if-nez v4, :cond_0

    .line 124
    return-object v3

    .line 127
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    return-object v3

    .line 129
    .end local v4    # "argument":Ljava/lang/Object;
    :cond_1
    instance-of v3, v2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v3, :cond_2

    .line 130
    move-object v3, v2

    check-cast v3, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v3}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 131
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 132
    invoke-interface {p0, v1}, Lorg/mockito/invocation/InvocationOnMock;->getArgument(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    return-object v3

    .line 118
    .end local v2    # "argType":Ljava/lang/reflect/Type;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v1    # "i":I
    :cond_3
    return-object v3
.end method

.method static returnTypeForMockWithCorrectGenerics(Lorg/mockito/invocation/InvocationOnMock;Lorg/mockito/internal/stubbing/defaultanswers/RetrieveGenericsForDefaultAnswers$AnswerCallback;)Ljava/lang/Object;
    .locals 5
    .param p0, "invocation"    # Lorg/mockito/invocation/InvocationOnMock;
    .param p1, "answerCallback"    # Lorg/mockito/internal/stubbing/defaultanswers/RetrieveGenericsForDefaultAnswers$AnswerCallback;

    .line 23
    invoke-interface {p0}, Lorg/mockito/invocation/InvocationOnMock;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 25
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p0}, Lorg/mockito/invocation/InvocationOnMock;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 27
    .local v1, "returnType":Ljava/lang/reflect/Type;
    const/4 v2, 0x0

    .line 29
    .local v2, "defaultReturnValue":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/reflect/TypeVariable;

    if-eqz v3, :cond_0

    .line 30
    move-object v3, v1

    check-cast v3, Ljava/lang/reflect/TypeVariable;

    invoke-static {p0, v3}, Lorg/mockito/internal/stubbing/defaultanswers/RetrieveGenericsForDefaultAnswers;->findTypeFromGeneric(Lorg/mockito/invocation/InvocationOnMock;Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;

    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    invoke-static {v0}, Lorg/mockito/internal/stubbing/defaultanswers/RetrieveGenericsForDefaultAnswers;->delegateChains(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 36
    :cond_0
    if-eqz v2, :cond_1

    .line 37
    return-object v2

    .line 40
    :cond_1
    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 41
    sget-object v4, Lorg/mockito/internal/stubbing/defaultanswers/RetrieveGenericsForDefaultAnswers;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    invoke-virtual {v4, v0}, Lorg/mockito/internal/MockitoCore;->isTypeMockable(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 42
    return-object v3

    .line 45
    :cond_2
    invoke-interface {p1, v0}, Lorg/mockito/internal/stubbing/defaultanswers/RetrieveGenericsForDefaultAnswers$AnswerCallback;->apply(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 48
    :cond_3
    invoke-interface {p1, v3}, Lorg/mockito/internal/stubbing/defaultanswers/RetrieveGenericsForDefaultAnswers$AnswerCallback;->apply(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method
