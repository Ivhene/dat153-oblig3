.class public final Lorg/mockito/MockitoAnnotations;
.super Ljava/lang/Object;
.source "MockitoAnnotations.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initMocks(Ljava/lang/Object;)V
    .locals 5
    .param p0, "testClass"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 100
    :try_start_0
    invoke-static {p0}, Lorg/mockito/MockitoAnnotations;->openMocks(Ljava/lang/Object;)Ljava/lang/AutoCloseable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    nop

    .line 109
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/mockito/exceptions/base/MockitoException;

    const-string v2, ""

    const-string v3, "This should not happen unless you are using a third-part mock maker"

    const-string v4, "Failed to release mocks"

    filled-new-array {v4, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 103
    invoke-static {v2}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static openMocks(Ljava/lang/Object;)Ljava/lang/AutoCloseable;
    .locals 2
    .param p0, "testClass"    # Ljava/lang/Object;

    .line 75
    if-eqz p0, :cond_0

    .line 80
    new-instance v0, Lorg/mockito/internal/configuration/GlobalConfiguration;

    invoke-direct {v0}, Lorg/mockito/internal/configuration/GlobalConfiguration;-><init>()V

    .line 81
    invoke-virtual {v0}, Lorg/mockito/internal/configuration/GlobalConfiguration;->tryGetPluginAnnotationEngine()Lorg/mockito/plugins/AnnotationEngine;

    move-result-object v0

    .line 82
    .local v0, "annotationEngine":Lorg/mockito/plugins/AnnotationEngine;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lorg/mockito/plugins/AnnotationEngine;->process(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/AutoCloseable;

    move-result-object v1

    return-object v1

    .line 76
    .end local v0    # "annotationEngine":Lorg/mockito/plugins/AnnotationEngine;
    :cond_0
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "testClass cannot be null. For info how to use @Mock annotations see examples in javadoc for MockitoAnnotations class"

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
