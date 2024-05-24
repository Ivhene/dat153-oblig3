.class public Lorg/mockito/internal/configuration/IndependentAnnotationEngine;
.super Ljava/lang/Object;
.source "IndependentAnnotationEngine.java"

# interfaces
.implements Lorg/mockito/plugins/AnnotationEngine;
.implements Lorg/mockito/configuration/AnnotationEngine;


# instance fields
.field private final annotationProcessorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lorg/mockito/internal/configuration/FieldAnnotationProcessor<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/configuration/IndependentAnnotationEngine;->annotationProcessorMap:Ljava/util/Map;

    .line 40
    const-class v0, Lorg/mockito/Mock;

    new-instance v1, Lorg/mockito/internal/configuration/MockAnnotationProcessor;

    invoke-direct {v1}, Lorg/mockito/internal/configuration/MockAnnotationProcessor;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/mockito/internal/configuration/IndependentAnnotationEngine;->registerAnnotationProcessor(Ljava/lang/Class;Lorg/mockito/internal/configuration/FieldAnnotationProcessor;)V

    .line 41
    const-class v0, Lorg/mockito/Captor;

    new-instance v1, Lorg/mockito/internal/configuration/CaptorAnnotationProcessor;

    invoke-direct {v1}, Lorg/mockito/internal/configuration/CaptorAnnotationProcessor;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/mockito/internal/configuration/IndependentAnnotationEngine;->registerAnnotationProcessor(Ljava/lang/Class;Lorg/mockito/internal/configuration/FieldAnnotationProcessor;)V

    .line 42
    return-void
.end method

.method private createMockFor(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 1
    .param p1, "annotation"    # Ljava/lang/annotation/Annotation;
    .param p2, "field"    # Ljava/lang/reflect/Field;

    .line 45
    invoke-direct {p0, p1}, Lorg/mockito/internal/configuration/IndependentAnnotationEngine;->forAnnotation(Ljava/lang/annotation/Annotation;)Lorg/mockito/internal/configuration/FieldAnnotationProcessor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/mockito/internal/configuration/FieldAnnotationProcessor;->process(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private forAnnotation(Ljava/lang/annotation/Annotation;)Lorg/mockito/internal/configuration/FieldAnnotationProcessor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(TA;)",
            "Lorg/mockito/internal/configuration/FieldAnnotationProcessor<",
            "TA;>;"
        }
    .end annotation

    .line 49
    .local p1, "annotation":Ljava/lang/annotation/Annotation;, "TA;"
    iget-object v0, p0, Lorg/mockito/internal/configuration/IndependentAnnotationEngine;->annotationProcessorMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lorg/mockito/internal/configuration/IndependentAnnotationEngine;->annotationProcessorMap:Ljava/util/Map;

    .line 51
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mockito/internal/configuration/FieldAnnotationProcessor;

    .line 50
    return-object v0

    .line 53
    :cond_0
    new-instance v0, Lorg/mockito/internal/configuration/IndependentAnnotationEngine$1;

    invoke-direct {v0, p0}, Lorg/mockito/internal/configuration/IndependentAnnotationEngine$1;-><init>(Lorg/mockito/internal/configuration/IndependentAnnotationEngine;)V

    return-object v0
.end method

.method static synthetic lambda$process$0(Ljava/util/List;)V
    .locals 2
    .param p0, "scopedMocks"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 98
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/ScopedMock;

    .line 99
    .local v1, "scopedMock":Lorg/mockito/ScopedMock;
    invoke-interface {v1}, Lorg/mockito/ScopedMock;->closeOnDemand()V

    .line 100
    .end local v1    # "scopedMock":Lorg/mockito/ScopedMock;
    goto :goto_0

    .line 101
    :cond_0
    return-void
.end method

.method private registerAnnotationProcessor(Ljava/lang/Class;Lorg/mockito/internal/configuration/FieldAnnotationProcessor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;",
            "Lorg/mockito/internal/configuration/FieldAnnotationProcessor<",
            "TA;>;)V"
        }
    .end annotation

    .line 63
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    .local p2, "fieldAnnotationProcessor":Lorg/mockito/internal/configuration/FieldAnnotationProcessor;, "Lorg/mockito/internal/configuration/FieldAnnotationProcessor<TA;>;"
    iget-object v0, p0, Lorg/mockito/internal/configuration/IndependentAnnotationEngine;->annotationProcessorMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method


# virtual methods
.method public process(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/AutoCloseable;
    .locals 13
    .param p2, "testInstance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/AutoCloseable;"
        }
    .end annotation

    .line 68
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v0, "scopedMocks":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/ScopedMock;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 70
    .local v1, "fields":[Ljava/lang/reflect/Field;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    .line 71
    .local v5, "field":Ljava/lang/reflect/Field;
    const/4 v6, 0x0

    .line 72
    .local v6, "alreadyAssigned":Z
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v7

    array-length v8, v7

    move v9, v3

    :goto_1
    if-ge v9, v8, :cond_3

    aget-object v10, v7, v9

    .line 73
    .local v10, "annotation":Ljava/lang/annotation/Annotation;
    invoke-direct {p0, v10, v5}, Lorg/mockito/internal/configuration/IndependentAnnotationEngine;->createMockFor(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v11

    .line 74
    .local v11, "mock":Ljava/lang/Object;
    instance-of v12, v11, Lorg/mockito/ScopedMock;

    if-eqz v12, :cond_0

    .line 75
    move-object v12, v11

    check-cast v12, Lorg/mockito/ScopedMock;

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_0
    if-eqz v11, :cond_2

    .line 78
    invoke-virtual {p0, v5, v6}, Lorg/mockito/internal/configuration/IndependentAnnotationEngine;->throwIfAlreadyAssigned(Ljava/lang/reflect/Field;Z)V

    .line 79
    const/4 v6, 0x1

    .line 80
    invoke-static {}, Lorg/mockito/internal/configuration/plugins/Plugins;->getMemberAccessor()Lorg/mockito/plugins/MemberAccessor;

    move-result-object v12

    .line 82
    .local v12, "accessor":Lorg/mockito/plugins/MemberAccessor;
    :try_start_0
    invoke-interface {v12, v5, p2, v11}, Lorg/mockito/plugins/MemberAccessor;->set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    goto :goto_3

    .line 83
    :catch_0
    move-exception v2

    .line 84
    .local v2, "e":Ljava/lang/Exception;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mockito/ScopedMock;

    .line 85
    .local v4, "scopedMock":Lorg/mockito/ScopedMock;
    invoke-interface {v4}, Lorg/mockito/ScopedMock;->close()V

    .line 86
    .end local v4    # "scopedMock":Lorg/mockito/ScopedMock;
    goto :goto_2

    .line 87
    :cond_1
    new-instance v3, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problems setting field "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 89
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " annotated with "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 72
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v10    # "annotation":Ljava/lang/annotation/Annotation;
    .end local v11    # "mock":Ljava/lang/Object;
    .end local v12    # "accessor":Lorg/mockito/plugins/MemberAccessor;
    :cond_2
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 70
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "alreadyAssigned":Z
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 97
    :cond_4
    new-instance v2, Lorg/mockito/internal/configuration/IndependentAnnotationEngine$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/mockito/internal/configuration/IndependentAnnotationEngine$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    return-object v2
.end method

.method throwIfAlreadyAssigned(Ljava/lang/reflect/Field;Z)V
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "alreadyAssigned"    # Z

    .line 105
    if-nez p2, :cond_0

    .line 108
    return-void

    .line 106
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/internal/exceptions/Reporter;->moreThanOneAnnotationNotAllowed(Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v0

    throw v0
.end method
