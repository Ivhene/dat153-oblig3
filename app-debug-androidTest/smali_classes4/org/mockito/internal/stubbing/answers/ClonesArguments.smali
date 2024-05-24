.class public Lorg/mockito/internal/stubbing/answers/ClonesArguments;
.super Ljava/lang/Object;
.source "ClonesArguments.java"

# interfaces
.implements Lorg/mockito/stubbing/Answer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mockito/stubbing/Answer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;
    .locals 7
    .param p1, "invocation"    # Lorg/mockito/invocation/InvocationOnMock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 21
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getArguments()[Ljava/lang/Object;

    move-result-object v0

    .line 22
    .local v0, "arguments":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 23
    aget-object v2, v0, v1

    .line 24
    .local v2, "from":Ljava/lang/Object;
    if-eqz v2, :cond_2

    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 26
    invoke-static {v2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    .line 27
    .local v3, "len":I
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    .line 28
    .local v4, "newInstance":Ljava/lang/Object;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v3, :cond_0

    .line 29
    invoke-static {v2, v5}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 28
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 31
    .end local v5    # "j":I
    :cond_0
    aput-object v4, v0, v1

    .line 32
    .end local v3    # "len":I
    .end local v4    # "newInstance":Ljava/lang/Object;
    goto :goto_2

    .line 34
    :cond_1
    invoke-static {}, Lorg/mockito/internal/configuration/plugins/Plugins;->getInstantiatorProvider()Lorg/mockito/plugins/InstantiatorProvider2;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/mockito/plugins/InstantiatorProvider2;->getInstantiator(Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/creation/instance/Instantiator;

    move-result-object v3

    .line 35
    .local v3, "instantiator":Lorg/mockito/creation/instance/Instantiator;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/mockito/creation/instance/Instantiator;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 36
    .restart local v4    # "newInstance":Ljava/lang/Object;
    new-instance v5, Lorg/mockito/internal/util/reflection/LenientCopyTool;

    invoke-direct {v5}, Lorg/mockito/internal/util/reflection/LenientCopyTool;-><init>()V

    invoke-virtual {v5, v2, v4}, Lorg/mockito/internal/util/reflection/LenientCopyTool;->copyToRealObject(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    aput-object v4, v0, v1

    .line 22
    .end local v2    # "from":Ljava/lang/Object;
    .end local v3    # "instantiator":Lorg/mockito/creation/instance/Instantiator;
    .end local v4    # "newInstance":Ljava/lang/Object;
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    .end local v1    # "i":I
    :cond_3
    new-instance v1, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;

    invoke-direct {v1}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;-><init>()V

    invoke-virtual {v1, p1}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;->answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
