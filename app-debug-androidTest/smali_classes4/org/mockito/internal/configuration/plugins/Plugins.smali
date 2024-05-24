.class public final Lorg/mockito/internal/configuration/plugins/Plugins;
.super Ljava/lang/Object;
.source "Plugins.java"


# static fields
.field private static final registry:Lorg/mockito/internal/configuration/plugins/PluginRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lorg/mockito/internal/configuration/plugins/PluginRegistry;

    invoke-direct {v0}, Lorg/mockito/internal/configuration/plugins/PluginRegistry;-><init>()V

    sput-object v0, Lorg/mockito/internal/configuration/plugins/Plugins;->registry:Lorg/mockito/internal/configuration/plugins/PluginRegistry;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnnotationEngine()Lorg/mockito/plugins/AnnotationEngine;
    .locals 1

    .line 67
    sget-object v0, Lorg/mockito/internal/configuration/plugins/Plugins;->registry:Lorg/mockito/internal/configuration/plugins/PluginRegistry;

    invoke-virtual {v0}, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->getAnnotationEngine()Lorg/mockito/plugins/AnnotationEngine;

    move-result-object v0

    return-object v0
.end method

.method public static getInstantiatorProvider()Lorg/mockito/plugins/InstantiatorProvider2;
    .locals 1

    .line 57
    sget-object v0, Lorg/mockito/internal/configuration/plugins/Plugins;->registry:Lorg/mockito/internal/configuration/plugins/PluginRegistry;

    invoke-virtual {v0}, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->getInstantiatorProvider()Lorg/mockito/plugins/InstantiatorProvider2;

    move-result-object v0

    return-object v0
.end method

.method public static getMemberAccessor()Lorg/mockito/plugins/MemberAccessor;
    .locals 1

    .line 46
    sget-object v0, Lorg/mockito/internal/configuration/plugins/Plugins;->registry:Lorg/mockito/internal/configuration/plugins/PluginRegistry;

    invoke-virtual {v0}, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->getMemberAccessor()Lorg/mockito/plugins/MemberAccessor;

    move-result-object v0

    return-object v0
.end method

.method public static getMockMaker()Lorg/mockito/plugins/MockMaker;
    .locals 1

    .line 36
    sget-object v0, Lorg/mockito/internal/configuration/plugins/Plugins;->registry:Lorg/mockito/internal/configuration/plugins/PluginRegistry;

    invoke-virtual {v0}, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->getMockMaker()Lorg/mockito/plugins/MockMaker;

    move-result-object v0

    return-object v0
.end method

.method public static getMockResolvers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mockito/plugins/MockResolver;",
            ">;"
        }
    .end annotation

    .line 86
    sget-object v0, Lorg/mockito/internal/configuration/plugins/Plugins;->registry:Lorg/mockito/internal/configuration/plugins/PluginRegistry;

    invoke-virtual {v0}, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->getMockResolvers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getMockitoLogger()Lorg/mockito/plugins/MockitoLogger;
    .locals 1

    .line 77
    sget-object v0, Lorg/mockito/internal/configuration/plugins/Plugins;->registry:Lorg/mockito/internal/configuration/plugins/PluginRegistry;

    invoke-virtual {v0}, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->getMockitoLogger()Lorg/mockito/plugins/MockitoLogger;

    move-result-object v0

    return-object v0
.end method

.method public static getPlugins()Lorg/mockito/plugins/MockitoPlugins;
    .locals 1

    .line 93
    new-instance v0, Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;

    invoke-direct {v0}, Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;-><init>()V

    return-object v0
.end method

.method public static getStackTraceCleanerProvider()Lorg/mockito/plugins/StackTraceCleanerProvider;
    .locals 1

    .line 26
    sget-object v0, Lorg/mockito/internal/configuration/plugins/Plugins;->registry:Lorg/mockito/internal/configuration/plugins/PluginRegistry;

    invoke-virtual {v0}, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->getStackTraceCleanerProvider()Lorg/mockito/plugins/StackTraceCleanerProvider;

    move-result-object v0

    return-object v0
.end method
