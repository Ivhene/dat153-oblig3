.class public Lorg/mockito/internal/configuration/GlobalConfiguration;
.super Ljava/lang/Object;
.source "GlobalConfiguration.java"

# interfaces
.implements Lorg/mockito/configuration/IMockitoConfiguration;
.implements Ljava/io/Serializable;


# static fields
.field private static final GLOBAL_CONFIGURATION:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/mockito/configuration/IMockitoConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x27b203f486ffe092L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/mockito/internal/configuration/GlobalConfiguration;->GLOBAL_CONFIGURATION:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lorg/mockito/internal/configuration/GlobalConfiguration;->GLOBAL_CONFIGURATION:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 32
    invoke-direct {p0}, Lorg/mockito/internal/configuration/GlobalConfiguration;->createConfig()Lorg/mockito/configuration/IMockitoConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 34
    :cond_0
    return-void
.end method

.method private createConfig()Lorg/mockito/configuration/IMockitoConfiguration;
    .locals 2

    .line 37
    new-instance v0, Lorg/mockito/configuration/DefaultMockitoConfiguration;

    invoke-direct {v0}, Lorg/mockito/configuration/DefaultMockitoConfiguration;-><init>()V

    .line 38
    .local v0, "defaultConfiguration":Lorg/mockito/configuration/IMockitoConfiguration;
    new-instance v1, Lorg/mockito/internal/configuration/ClassPathLoader;

    invoke-direct {v1}, Lorg/mockito/internal/configuration/ClassPathLoader;-><init>()V

    invoke-virtual {v1}, Lorg/mockito/internal/configuration/ClassPathLoader;->loadConfiguration()Lorg/mockito/configuration/IMockitoConfiguration;

    move-result-object v1

    .line 39
    .local v1, "config":Lorg/mockito/configuration/IMockitoConfiguration;
    if-eqz v1, :cond_0

    .line 40
    return-object v1

    .line 42
    :cond_0
    return-object v0
.end method

.method public static validate()V
    .locals 1

    .line 47
    new-instance v0, Lorg/mockito/internal/configuration/GlobalConfiguration;

    invoke-direct {v0}, Lorg/mockito/internal/configuration/GlobalConfiguration;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method public cleansStackTrace()Z
    .locals 1

    .line 64
    sget-object v0, Lorg/mockito/internal/configuration/GlobalConfiguration;->GLOBAL_CONFIGURATION:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mockito/configuration/IMockitoConfiguration;

    invoke-interface {v0}, Lorg/mockito/configuration/IMockitoConfiguration;->cleansStackTrace()Z

    move-result v0

    return v0
.end method

.method public enableClassCache()Z
    .locals 1

    .line 69
    sget-object v0, Lorg/mockito/internal/configuration/GlobalConfiguration;->GLOBAL_CONFIGURATION:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mockito/configuration/IMockitoConfiguration;

    invoke-interface {v0}, Lorg/mockito/configuration/IMockitoConfiguration;->enableClassCache()Z

    move-result v0

    return v0
.end method

.method public getAnnotationEngine()Lorg/mockito/configuration/AnnotationEngine;
    .locals 1

    .line 51
    sget-object v0, Lorg/mockito/internal/configuration/GlobalConfiguration;->GLOBAL_CONFIGURATION:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mockito/configuration/IMockitoConfiguration;

    invoke-interface {v0}, Lorg/mockito/configuration/IMockitoConfiguration;->getAnnotationEngine()Lorg/mockito/configuration/AnnotationEngine;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultAnswer()Lorg/mockito/stubbing/Answer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mockito/stubbing/Answer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 74
    sget-object v0, Lorg/mockito/internal/configuration/GlobalConfiguration;->GLOBAL_CONFIGURATION:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mockito/configuration/IMockitoConfiguration;

    invoke-interface {v0}, Lorg/mockito/configuration/IMockitoConfiguration;->getDefaultAnswer()Lorg/mockito/stubbing/Answer;

    move-result-object v0

    return-object v0
.end method

.method getIt()Lorg/mockito/configuration/IMockitoConfiguration;
    .locals 1

    .line 26
    sget-object v0, Lorg/mockito/internal/configuration/GlobalConfiguration;->GLOBAL_CONFIGURATION:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mockito/configuration/IMockitoConfiguration;

    return-object v0
.end method

.method public tryGetPluginAnnotationEngine()Lorg/mockito/plugins/AnnotationEngine;
    .locals 3

    .line 55
    sget-object v0, Lorg/mockito/internal/configuration/GlobalConfiguration;->GLOBAL_CONFIGURATION:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mockito/configuration/IMockitoConfiguration;

    .line 56
    .local v0, "configuration":Lorg/mockito/configuration/IMockitoConfiguration;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/mockito/configuration/DefaultMockitoConfiguration;

    if-ne v1, v2, :cond_0

    .line 57
    invoke-static {}, Lorg/mockito/internal/configuration/plugins/Plugins;->getAnnotationEngine()Lorg/mockito/plugins/AnnotationEngine;

    move-result-object v1

    return-object v1

    .line 59
    :cond_0
    invoke-interface {v0}, Lorg/mockito/configuration/IMockitoConfiguration;->getAnnotationEngine()Lorg/mockito/configuration/AnnotationEngine;

    move-result-object v1

    return-object v1
.end method
