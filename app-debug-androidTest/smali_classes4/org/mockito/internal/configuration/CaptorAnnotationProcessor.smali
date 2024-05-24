.class public Lorg/mockito/internal/configuration/CaptorAnnotationProcessor;
.super Ljava/lang/Object;
.source "CaptorAnnotationProcessor.java"

# interfaces
.implements Lorg/mockito/internal/configuration/FieldAnnotationProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mockito/internal/configuration/FieldAnnotationProcessor<",
        "Lorg/mockito/Captor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic process(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Lorg/mockito/Captor;

    invoke-virtual {p0, p1, p2}, Lorg/mockito/internal/configuration/CaptorAnnotationProcessor;->process(Lorg/mockito/Captor;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public process(Lorg/mockito/Captor;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 4
    .param p1, "annotation"    # Lorg/mockito/Captor;
    .param p2, "field"    # Ljava/lang/reflect/Field;

    .line 20
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 21
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Lorg/mockito/ArgumentCaptor;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    new-instance v1, Lorg/mockito/internal/util/reflection/GenericMaster;

    invoke-direct {v1}, Lorg/mockito/internal/util/reflection/GenericMaster;-><init>()V

    invoke-virtual {v1, p2}, Lorg/mockito/internal/util/reflection/GenericMaster;->getGenericType(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object v1

    .line 30
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1}, Lorg/mockito/ArgumentCaptor;->forClass(Ljava/lang/Class;)Lorg/mockito/ArgumentCaptor;

    move-result-object v2

    return-object v2

    .line 22
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    new-instance v1, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@Captor field must be of the type ArgumentCaptor.\nField: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 25
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' has wrong type\nFor info how to use @Captor annotations see examples in javadoc for MockitoAnnotations class."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
