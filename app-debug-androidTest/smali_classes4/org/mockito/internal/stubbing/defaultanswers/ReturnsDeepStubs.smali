.class public Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs;
.super Ljava/lang/Object;
.source "ReturnsDeepStubs.java"

# interfaces
.implements Lorg/mockito/stubbing/Answer;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs$LazyHolder;,
        Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs$DeeplyStubbedAnswer;,
        Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs$ReturnsDeepStubsSerializationFallback;
    }
.end annotation

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
.field private static final serialVersionUID:J = -0x629b3e6188dd2e07L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private deepStub(Lorg/mockito/invocation/InvocationOnMock;Lorg/mockito/internal/util/reflection/GenericMetadataSupport;)Ljava/lang/Object;
    .locals 5
    .param p1, "invocation"    # Lorg/mockito/invocation/InvocationOnMock;
    .param p2, "returnTypeGenericMetadata"    # Lorg/mockito/internal/util/reflection/GenericMetadataSupport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 81
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getMock()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/internal/util/MockUtil;->getInvocationContainer(Ljava/lang/Object;)Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    move-result-object v0

    .line 85
    .local v0, "container":Lorg/mockito/internal/stubbing/InvocationContainerImpl;
    invoke-virtual {v0}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->getStubbingsDescending()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mockito/stubbing/Stubbing;

    .line 86
    .local v2, "stubbing":Lorg/mockito/stubbing/Stubbing;
    invoke-virtual {v0}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->getInvocationForStubbing()Lorg/mockito/invocation/MatchableInvocation;

    move-result-object v3

    invoke-interface {v2}, Lorg/mockito/stubbing/Stubbing;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/mockito/invocation/MatchableInvocation;->matches(Lorg/mockito/invocation/Invocation;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    invoke-interface {v2, p1}, Lorg/mockito/stubbing/Stubbing;->answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 89
    .end local v2    # "stubbing":Lorg/mockito/stubbing/Stubbing;
    :cond_0
    goto :goto_0

    .line 92
    :cond_1
    nop

    .line 94
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getMock()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs;->newDeepStubMock(Lorg/mockito/internal/util/reflection/GenericMetadataSupport;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 93
    invoke-direct {p0, v1, v0}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs;->recordDeepStubAnswer(Ljava/lang/Object;Lorg/mockito/internal/stubbing/InvocationContainerImpl;)Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;

    move-result-object v1

    .line 99
    .local v1, "stubbing":Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;
    invoke-virtual {v1}, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->markStubUsed(Lorg/mockito/invocation/DescribedInvocation;)V

    .line 101
    invoke-virtual {v1, p1}, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method private static delegate()Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;
    .locals 1

    .line 207
    invoke-static {}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs$LazyHolder;->access$100()Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;

    move-result-object v0

    return-object v0
.end method

.method private static mockitoCore()Lorg/mockito/internal/MockitoCore;
    .locals 1

    .line 203
    invoke-static {}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs$LazyHolder;->access$000()Lorg/mockito/internal/MockitoCore;

    move-result-object v0

    return-object v0
.end method

.method private newDeepStubMock(Lorg/mockito/internal/util/reflection/GenericMetadataSupport;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "returnTypeGenericMetadata"    # Lorg/mockito/internal/util/reflection/GenericMetadataSupport;
    .param p2, "parentMock"    # Ljava/lang/Object;

    .line 117
    invoke-static {p2}, Lorg/mockito/internal/util/MockUtil;->getMockSettings(Ljava/lang/Object;)Lorg/mockito/mock/MockCreationSettings;

    move-result-object v0

    .line 118
    .local v0, "parentMockSettings":Lorg/mockito/mock/MockCreationSettings;
    invoke-static {}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs;->mockitoCore()Lorg/mockito/internal/MockitoCore;

    move-result-object v1

    .line 120
    invoke-virtual {p1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->rawType()Ljava/lang/Class;

    move-result-object v2

    .line 121
    invoke-direct {p0, p1, v0}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs;->withSettingsUsing(Lorg/mockito/internal/util/reflection/GenericMetadataSupport;Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/MockSettings;

    move-result-object v3

    .line 119
    invoke-virtual {v1, v2, v3}, Lorg/mockito/internal/MockitoCore;->mock(Ljava/lang/Class;Lorg/mockito/MockSettings;)Ljava/lang/Object;

    move-result-object v1

    .line 118
    return-object v1
.end method

.method private propagateSerializationSettings(Lorg/mockito/MockSettings;Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/MockSettings;
    .locals 1
    .param p1, "mockSettings"    # Lorg/mockito/MockSettings;
    .param p2, "parentMockSettings"    # Lorg/mockito/mock/MockCreationSettings;

    .line 139
    invoke-interface {p2}, Lorg/mockito/mock/MockCreationSettings;->getSerializableMode()Lorg/mockito/mock/SerializableMode;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/mockito/MockSettings;->serializable(Lorg/mockito/mock/SerializableMode;)Lorg/mockito/MockSettings;

    move-result-object v0

    return-object v0
.end method

.method private recordDeepStubAnswer(Ljava/lang/Object;Lorg/mockito/internal/stubbing/InvocationContainerImpl;)Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;
    .locals 3
    .param p1, "mock"    # Ljava/lang/Object;
    .param p2, "container"    # Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    .line 149
    new-instance v0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs$DeeplyStubbedAnswer;

    invoke-direct {v0, p1}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs$DeeplyStubbedAnswer;-><init>(Ljava/lang/Object;)V

    .line 150
    .local v0, "answer":Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs$DeeplyStubbedAnswer;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->addAnswer(Lorg/mockito/stubbing/Answer;ZLorg/mockito/quality/Strictness;)Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;

    move-result-object v1

    return-object v1
.end method

.method private returnsDeepStubsAnswerUsing(Lorg/mockito/internal/util/reflection/GenericMetadataSupport;)Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs;
    .locals 1
    .param p1, "returnTypeGenericMetadata"    # Lorg/mockito/internal/util/reflection/GenericMetadataSupport;

    .line 144
    new-instance v0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs$ReturnsDeepStubsSerializationFallback;

    invoke-direct {v0, p1}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs$ReturnsDeepStubsSerializationFallback;-><init>(Lorg/mockito/internal/util/reflection/GenericMetadataSupport;)V

    return-object v0
.end method

.method private withSettingsUsing(Lorg/mockito/internal/util/reflection/GenericMetadataSupport;Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/MockSettings;
    .locals 3
    .param p1, "returnTypeGenericMetadata"    # Lorg/mockito/internal/util/reflection/GenericMetadataSupport;
    .param p2, "parentMockSettings"    # Lorg/mockito/mock/MockCreationSettings;

    .line 128
    invoke-virtual {p1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->hasRawExtraInterfaces()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-static {}, Lorg/mockito/Mockito;->withSettings()Lorg/mockito/MockSettings;

    move-result-object v0

    .line 130
    invoke-virtual {p1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->rawExtraInterfaces()[Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/mockito/MockSettings;->extraInterfaces([Ljava/lang/Class;)Lorg/mockito/MockSettings;

    move-result-object v0

    goto :goto_0

    .line 131
    :cond_0
    invoke-static {}, Lorg/mockito/Mockito;->withSettings()Lorg/mockito/MockSettings;

    move-result-object v0

    :goto_0
    nop

    .line 133
    .local v0, "mockSettings":Lorg/mockito/MockSettings;
    invoke-direct {p0, v0, p2}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs;->propagateSerializationSettings(Lorg/mockito/MockSettings;Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/MockSettings;

    move-result-object v1

    .line 134
    invoke-direct {p0, p1}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs;->returnsDeepStubsAnswerUsing(Lorg/mockito/internal/util/reflection/GenericMetadataSupport;)Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/mockito/MockSettings;->defaultAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/MockSettings;

    move-result-object v1

    .line 133
    return-object v1
.end method


# virtual methods
.method protected actualParameterizedType(Ljava/lang/Object;)Lorg/mockito/internal/util/reflection/GenericMetadataSupport;
    .locals 2
    .param p1, "mock"    # Ljava/lang/Object;

    .line 154
    nop

    .line 155
    invoke-static {p1}, Lorg/mockito/internal/util/MockUtil;->getMockHandler(Ljava/lang/Object;)Lorg/mockito/invocation/MockHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/invocation/MockHandler;->getMockSettings()Lorg/mockito/mock/MockCreationSettings;

    move-result-object v0

    check-cast v0, Lorg/mockito/internal/creation/settings/CreationSettings;

    .line 156
    .local v0, "mockSettings":Lorg/mockito/internal/creation/settings/CreationSettings;
    invoke-virtual {v0}, Lorg/mockito/internal/creation/settings/CreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->inferFrom(Ljava/lang/reflect/Type;)Lorg/mockito/internal/util/reflection/GenericMetadataSupport;

    move-result-object v1

    return-object v1
.end method

.method public answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;
    .locals 3
    .param p1, "invocation"    # Lorg/mockito/invocation/InvocationOnMock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 51
    nop

    .line 52
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getMock()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs;->actualParameterizedType(Ljava/lang/Object;)Lorg/mockito/internal/util/reflection/GenericMetadataSupport;

    move-result-object v0

    .line 53
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->resolveGenericReturnType(Ljava/lang/reflect/Method;)Lorg/mockito/internal/util/reflection/GenericMetadataSupport;

    move-result-object v0

    .line 55
    .local v0, "returnTypeGenericMetadata":Lorg/mockito/internal/util/reflection/GenericMetadataSupport;
    invoke-virtual {v0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->rawType()Ljava/lang/Class;

    move-result-object v1

    .line 56
    .local v1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs;->mockitoCore()Lorg/mockito/internal/MockitoCore;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/mockito/internal/MockitoCore;->isTypeMockable(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 57
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    invoke-static {}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs;->delegate()Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;->answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 60
    :cond_0
    invoke-static {}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs;->delegate()Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;->returnValueFor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 71
    :cond_1
    const-class v2, Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->hasRawExtraInterfaces()Z

    move-result v2

    if-nez v2, :cond_2

    .line 72
    const/4 v2, 0x0

    return-object v2

    .line 75
    :cond_2
    invoke-direct {p0, p1, v0}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs;->deepStub(Lorg/mockito/invocation/InvocationOnMock;Lorg/mockito/internal/util/reflection/GenericMetadataSupport;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method
