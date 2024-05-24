.class public Lorg/mockito/internal/configuration/injection/SpyOnInjectedFieldsHandler;
.super Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;
.source "SpyOnInjectedFieldsHandler.java"


# instance fields
.field private final accessor:Lorg/mockito/plugins/MemberAccessor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;-><init>()V

    .line 30
    invoke-static {}, Lorg/mockito/internal/configuration/plugins/Plugins;->getMemberAccessor()Lorg/mockito/plugins/MemberAccessor;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/configuration/injection/SpyOnInjectedFieldsHandler;->accessor:Lorg/mockito/plugins/MemberAccessor;

    return-void
.end method


# virtual methods
.method protected processInjection(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set;)Z
    .locals 5
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "fieldOwner"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Object;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 34
    .local p3, "mockCandidates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    new-instance v0, Lorg/mockito/internal/util/reflection/FieldReader;

    invoke-direct {v0, p2, p1}, Lorg/mockito/internal/util/reflection/FieldReader;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V

    .line 37
    .local v0, "fieldReader":Lorg/mockito/internal/util/reflection/FieldReader;
    invoke-virtual {v0}, Lorg/mockito/internal/util/reflection/FieldReader;->isNull()Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Lorg/mockito/Spy;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    :try_start_0
    invoke-virtual {v0}, Lorg/mockito/internal/util/reflection/FieldReader;->read()Ljava/lang/Object;

    move-result-object v1

    .line 40
    .local v1, "instance":Ljava/lang/Object;
    invoke-static {v1}, Lorg/mockito/internal/util/MockUtil;->isMock(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/mockito/Mockito;->reset([Ljava/lang/Object;)V

    goto :goto_0

    .line 45
    :cond_0
    nop

    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 48
    invoke-static {}, Lorg/mockito/Mockito;->withSettings()Lorg/mockito/MockSettings;

    move-result-object v3

    .line 49
    invoke-interface {v3, v1}, Lorg/mockito/MockSettings;->spiedInstance(Ljava/lang/Object;)Lorg/mockito/MockSettings;

    move-result-object v3

    sget-object v4, Lorg/mockito/Mockito;->CALLS_REAL_METHODS:Lorg/mockito/stubbing/Answer;

    .line 50
    invoke-interface {v3, v4}, Lorg/mockito/MockSettings;->defaultAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/MockSettings;

    move-result-object v3

    .line 51
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/mockito/MockSettings;->name(Ljava/lang/String;)Lorg/mockito/MockSettings;

    move-result-object v3

    .line 46
    invoke-static {v2, v3}, Lorg/mockito/Mockito;->mock(Ljava/lang/Class;Lorg/mockito/MockSettings;)Ljava/lang/Object;

    move-result-object v2

    .line 52
    .local v2, "mock":Ljava/lang/Object;
    iget-object v3, p0, Lorg/mockito/internal/configuration/injection/SpyOnInjectedFieldsHandler;->accessor:Lorg/mockito/plugins/MemberAccessor;

    invoke-interface {v3, p1, p2, v2}, Lorg/mockito/plugins/MemberAccessor;->set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v1    # "instance":Ljava/lang/Object;
    .end local v2    # "mock":Ljava/lang/Object;
    :goto_0
    goto :goto_1

    .line 54
    :catch_0
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problems initiating spied field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 59
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    const/4 v1, 0x0

    return v1
.end method
