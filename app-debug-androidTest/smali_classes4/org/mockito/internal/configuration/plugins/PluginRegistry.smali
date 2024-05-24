.class Lorg/mockito/internal/configuration/plugins/PluginRegistry;
.super Ljava/lang/Object;
.source "PluginRegistry.java"


# instance fields
.field private final annotationEngine:Lorg/mockito/plugins/AnnotationEngine;

.field private final instantiatorProvider:Lorg/mockito/plugins/InstantiatorProvider2;

.field private final memberAccessor:Lorg/mockito/plugins/MemberAccessor;

.field private final mockMaker:Lorg/mockito/plugins/MockMaker;

.field private final mockResolvers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mockito/plugins/MockResolver;",
            ">;"
        }
    .end annotation
.end field

.field private final mockitoLogger:Lorg/mockito/plugins/MockitoLogger;

.field private final pluginSwitch:Lorg/mockito/plugins/PluginSwitch;

.field private final stackTraceCleanerProvider:Lorg/mockito/plugins/StackTraceCleanerProvider;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lorg/mockito/internal/configuration/plugins/PluginLoader;

    new-instance v1, Lorg/mockito/internal/configuration/plugins/DefaultPluginSwitch;

    invoke-direct {v1}, Lorg/mockito/internal/configuration/plugins/DefaultPluginSwitch;-><init>()V

    invoke-direct {v0, v1}, Lorg/mockito/internal/configuration/plugins/PluginLoader;-><init>(Lorg/mockito/plugins/PluginSwitch;)V

    const-class v1, Lorg/mockito/plugins/PluginSwitch;

    .line 22
    invoke-virtual {v0, v1}, Lorg/mockito/internal/configuration/plugins/PluginLoader;->loadPlugin(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mockito/plugins/PluginSwitch;

    iput-object v0, p0, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->pluginSwitch:Lorg/mockito/plugins/PluginSwitch;

    .line 24
    new-instance v1, Lorg/mockito/internal/configuration/plugins/PluginLoader;

    const-string v2, "mock-maker-inline"

    invoke-direct {v1, v0, v2}, Lorg/mockito/internal/configuration/plugins/PluginLoader;-><init>(Lorg/mockito/plugins/PluginSwitch;Ljava/lang/String;)V

    const-class v2, Lorg/mockito/plugins/MockMaker;

    .line 26
    invoke-virtual {v1, v2}, Lorg/mockito/internal/configuration/plugins/PluginLoader;->loadPlugin(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/plugins/MockMaker;

    iput-object v1, p0, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->mockMaker:Lorg/mockito/plugins/MockMaker;

    .line 28
    new-instance v1, Lorg/mockito/internal/configuration/plugins/PluginLoader;

    const-string v2, "member-accessor-module"

    invoke-direct {v1, v0, v2}, Lorg/mockito/internal/configuration/plugins/PluginLoader;-><init>(Lorg/mockito/plugins/PluginSwitch;Ljava/lang/String;)V

    const-class v2, Lorg/mockito/plugins/MemberAccessor;

    .line 30
    invoke-virtual {v1, v2}, Lorg/mockito/internal/configuration/plugins/PluginLoader;->loadPlugin(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/plugins/MemberAccessor;

    iput-object v1, p0, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->memberAccessor:Lorg/mockito/plugins/MemberAccessor;

    .line 32
    new-instance v1, Lorg/mockito/internal/configuration/plugins/PluginLoader;

    invoke-direct {v1, v0}, Lorg/mockito/internal/configuration/plugins/PluginLoader;-><init>(Lorg/mockito/plugins/PluginSwitch;)V

    const-class v2, Lorg/mockito/plugins/StackTraceCleanerProvider;

    .line 33
    invoke-virtual {v1, v2}, Lorg/mockito/internal/configuration/plugins/PluginLoader;->loadPlugin(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/plugins/StackTraceCleanerProvider;

    iput-object v1, p0, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->stackTraceCleanerProvider:Lorg/mockito/plugins/StackTraceCleanerProvider;

    .line 37
    new-instance v1, Lorg/mockito/internal/configuration/plugins/PluginLoader;

    invoke-direct {v1, v0}, Lorg/mockito/internal/configuration/plugins/PluginLoader;-><init>(Lorg/mockito/plugins/PluginSwitch;)V

    const-class v2, Lorg/mockito/plugins/AnnotationEngine;

    .line 38
    invoke-virtual {v1, v2}, Lorg/mockito/internal/configuration/plugins/PluginLoader;->loadPlugin(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/plugins/AnnotationEngine;

    iput-object v1, p0, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->annotationEngine:Lorg/mockito/plugins/AnnotationEngine;

    .line 40
    new-instance v1, Lorg/mockito/internal/configuration/plugins/PluginLoader;

    invoke-direct {v1, v0}, Lorg/mockito/internal/configuration/plugins/PluginLoader;-><init>(Lorg/mockito/plugins/PluginSwitch;)V

    const-class v2, Lorg/mockito/plugins/MockitoLogger;

    .line 41
    invoke-virtual {v1, v2}, Lorg/mockito/internal/configuration/plugins/PluginLoader;->loadPlugin(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/plugins/MockitoLogger;

    iput-object v1, p0, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->mockitoLogger:Lorg/mockito/plugins/MockitoLogger;

    .line 43
    new-instance v1, Lorg/mockito/internal/configuration/plugins/PluginLoader;

    invoke-direct {v1, v0}, Lorg/mockito/internal/configuration/plugins/PluginLoader;-><init>(Lorg/mockito/plugins/PluginSwitch;)V

    const-class v2, Lorg/mockito/plugins/MockResolver;

    .line 44
    invoke-virtual {v1, v2}, Lorg/mockito/internal/configuration/plugins/PluginLoader;->loadPlugins(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->mockResolvers:Ljava/util/List;

    .line 47
    new-instance v1, Lorg/mockito/internal/configuration/plugins/PluginLoader;

    invoke-direct {v1, v0}, Lorg/mockito/internal/configuration/plugins/PluginLoader;-><init>(Lorg/mockito/plugins/PluginSwitch;)V

    const-class v0, Lorg/mockito/plugins/InstantiatorProvider2;

    const-class v2, Lorg/mockito/plugins/InstantiatorProvider;

    .line 49
    invoke-virtual {v1, v0, v2}, Lorg/mockito/internal/configuration/plugins/PluginLoader;->loadPlugin(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 50
    .local v0, "impl":Ljava/lang/Object;
    instance-of v1, v0, Lorg/mockito/plugins/InstantiatorProvider;

    if-eqz v1, :cond_0

    .line 51
    new-instance v1, Lorg/mockito/internal/creation/instance/InstantiatorProviderAdapter;

    move-object v2, v0

    check-cast v2, Lorg/mockito/plugins/InstantiatorProvider;

    invoke-direct {v1, v2}, Lorg/mockito/internal/creation/instance/InstantiatorProviderAdapter;-><init>(Lorg/mockito/plugins/InstantiatorProvider;)V

    iput-object v1, p0, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->instantiatorProvider:Lorg/mockito/plugins/InstantiatorProvider2;

    goto :goto_0

    .line 53
    :cond_0
    move-object v1, v0

    check-cast v1, Lorg/mockito/plugins/InstantiatorProvider2;

    iput-object v1, p0, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->instantiatorProvider:Lorg/mockito/plugins/InstantiatorProvider2;

    .line 55
    :goto_0
    return-void
.end method


# virtual methods
.method getAnnotationEngine()Lorg/mockito/plugins/AnnotationEngine;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->annotationEngine:Lorg/mockito/plugins/AnnotationEngine;

    return-object v0
.end method

.method getInstantiatorProvider()Lorg/mockito/plugins/InstantiatorProvider2;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->instantiatorProvider:Lorg/mockito/plugins/InstantiatorProvider2;

    return-object v0
.end method

.method getMemberAccessor()Lorg/mockito/plugins/MemberAccessor;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->memberAccessor:Lorg/mockito/plugins/MemberAccessor;

    return-object v0
.end method

.method getMockMaker()Lorg/mockito/plugins/MockMaker;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->mockMaker:Lorg/mockito/plugins/MockMaker;

    return-object v0
.end method

.method getMockResolvers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mockito/plugins/MockResolver;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->mockResolvers:Ljava/util/List;

    return-object v0
.end method

.method getMockitoLogger()Lorg/mockito/plugins/MockitoLogger;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->mockitoLogger:Lorg/mockito/plugins/MockitoLogger;

    return-object v0
.end method

.method getStackTraceCleanerProvider()Lorg/mockito/plugins/StackTraceCleanerProvider;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->stackTraceCleanerProvider:Lorg/mockito/plugins/StackTraceCleanerProvider;

    return-object v0
.end method
