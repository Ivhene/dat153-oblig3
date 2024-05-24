.class public Lorg/mockito/internal/session/DefaultMockitoSessionBuilder;
.super Ljava/lang/Object;
.source "DefaultMockitoSessionBuilder.java"

# interfaces
.implements Lorg/mockito/session/MockitoSessionBuilder;


# instance fields
.field private logger:Lorg/mockito/session/MockitoSessionLogger;

.field private name:Ljava/lang/String;

.field private strictness:Lorg/mockito/quality/Strictness;

.field private final testClassInstances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/session/DefaultMockitoSessionBuilder;->testClassInstances:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public initMocks(Ljava/lang/Object;)Lorg/mockito/session/MockitoSessionBuilder;
    .locals 1
    .param p1, "testClassInstance"    # Ljava/lang/Object;

    .line 29
    if-eqz p1, :cond_0

    .line 30
    iget-object v0, p0, Lorg/mockito/internal/session/DefaultMockitoSessionBuilder;->testClassInstances:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_0
    return-object p0
.end method

.method public varargs initMocks([Ljava/lang/Object;)Lorg/mockito/session/MockitoSessionBuilder;
    .locals 3
    .param p1, "testClassInstances"    # [Ljava/lang/Object;

    .line 37
    if-eqz p1, :cond_0

    .line 38
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 39
    .local v2, "instance":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/mockito/internal/session/DefaultMockitoSessionBuilder;->initMocks(Ljava/lang/Object;)Lorg/mockito/session/MockitoSessionBuilder;

    .line 38
    .end local v2    # "instance":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    :cond_0
    return-object p0
.end method

.method public logger(Lorg/mockito/session/MockitoSessionLogger;)Lorg/mockito/session/MockitoSessionBuilder;
    .locals 0
    .param p1, "logger"    # Lorg/mockito/session/MockitoSessionLogger;

    .line 59
    iput-object p1, p0, Lorg/mockito/internal/session/DefaultMockitoSessionBuilder;->logger:Lorg/mockito/session/MockitoSessionLogger;

    .line 60
    return-object p0
.end method

.method public name(Ljava/lang/String;)Lorg/mockito/session/MockitoSessionBuilder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lorg/mockito/internal/session/DefaultMockitoSessionBuilder;->name:Ljava/lang/String;

    .line 48
    return-object p0
.end method

.method public startMocking()Lorg/mockito/MockitoSession;
    .locals 5

    .line 68
    iget-object v0, p0, Lorg/mockito/internal/session/DefaultMockitoSessionBuilder;->testClassInstances:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 70
    .local v0, "effectiveTestClassInstances":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v1, p0, Lorg/mockito/internal/session/DefaultMockitoSessionBuilder;->name:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "<Unnamed Session>"

    .local v1, "effectiveName":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 72
    .end local v0    # "effectiveTestClassInstances":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v1    # "effectiveName":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/mockito/internal/session/DefaultMockitoSessionBuilder;->testClassInstances:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 73
    .restart local v0    # "effectiveTestClassInstances":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v1, p0, Lorg/mockito/internal/session/DefaultMockitoSessionBuilder;->testClassInstances:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 75
    .local v1, "lastTestClassInstance":Ljava/lang/Object;
    iget-object v2, p0, Lorg/mockito/internal/session/DefaultMockitoSessionBuilder;->name:Ljava/lang/String;

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    :cond_2
    move-object v1, v2

    .line 78
    .local v1, "effectiveName":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lorg/mockito/internal/session/DefaultMockitoSessionBuilder;->strictness:Lorg/mockito/quality/Strictness;

    if-nez v2, :cond_3

    sget-object v2, Lorg/mockito/quality/Strictness;->STRICT_STUBS:Lorg/mockito/quality/Strictness;

    .line 80
    .local v2, "effectiveStrictness":Lorg/mockito/quality/Strictness;
    :cond_3
    iget-object v3, p0, Lorg/mockito/internal/session/DefaultMockitoSessionBuilder;->logger:Lorg/mockito/session/MockitoSessionLogger;

    if-nez v3, :cond_4

    .line 81
    invoke-static {}, Lorg/mockito/internal/configuration/plugins/Plugins;->getMockitoLogger()Lorg/mockito/plugins/MockitoLogger;

    move-result-object v3

    goto :goto_1

    .line 82
    :cond_4
    new-instance v3, Lorg/mockito/internal/session/MockitoLoggerAdapter;

    iget-object v4, p0, Lorg/mockito/internal/session/DefaultMockitoSessionBuilder;->logger:Lorg/mockito/session/MockitoSessionLogger;

    invoke-direct {v3, v4}, Lorg/mockito/internal/session/MockitoLoggerAdapter;-><init>(Lorg/mockito/session/MockitoSessionLogger;)V

    :goto_1
    nop

    .line 83
    .local v3, "logger":Lorg/mockito/plugins/MockitoLogger;
    new-instance v4, Lorg/mockito/internal/framework/DefaultMockitoSession;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/mockito/internal/framework/DefaultMockitoSession;-><init>(Ljava/util/List;Ljava/lang/String;Lorg/mockito/quality/Strictness;Lorg/mockito/plugins/MockitoLogger;)V

    return-object v4
.end method

.method public strictness(Lorg/mockito/quality/Strictness;)Lorg/mockito/session/MockitoSessionBuilder;
    .locals 0
    .param p1, "strictness"    # Lorg/mockito/quality/Strictness;

    .line 53
    iput-object p1, p0, Lorg/mockito/internal/session/DefaultMockitoSessionBuilder;->strictness:Lorg/mockito/quality/Strictness;

    .line 54
    return-object p0
.end method
