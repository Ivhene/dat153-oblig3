.class public Lorg/mockito/internal/configuration/MockAnnotationProcessor;
.super Ljava/lang/Object;
.source "MockAnnotationProcessor.java"

# interfaces
.implements Lorg/mockito/internal/configuration/FieldAnnotationProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mockito/internal/configuration/FieldAnnotationProcessor<",
        "Lorg/mockito/Mock;",
        ">;"
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$UA2MIRdu9tvALgHI_RqnpZlToMM(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Type;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static inferParameterizedType(Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 10
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sort"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 71
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    .line 72
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 73
    .local v0, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 74
    .local v1, "arguments":[Ljava/lang/reflect/Type;
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 75
    const/4 v2, 0x0

    aget-object v3, v1, v2

    instance-of v3, v3, Ljava/lang/Class;

    if-eqz v3, :cond_0

    .line 76
    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Class;

    return-object v2

    .line 80
    .end local v0    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v1    # "arguments":[Ljava/lang/reflect/Type;
    :cond_0
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mockito cannot infer a static mock from a raw type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Instead of @Mock "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " you need to specify a parameterized type"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "For example, if you would like to mock Sample.class, specify"

    const-string v6, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "@Mock "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "<Sample>"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    const-string v9, "as the type parameter. If the type is itself parameterized, it should be specified as raw type."

    filled-new-array/range {v2 .. v9}, [Ljava/lang/Object;

    move-result-object v1

    .line 81
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static processAnnotationForMock(Lorg/mockito/Mock;Ljava/lang/Class;Lorg/mockito/internal/util/Supplier;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "annotation"    # Lorg/mockito/Mock;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/Mock;",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/mockito/internal/util/Supplier<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 33
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "genericType":Lorg/mockito/internal/util/Supplier;, "Lorg/mockito/internal/util/Supplier<Ljava/lang/reflect/Type;>;"
    invoke-static {}, Lorg/mockito/Mockito;->withSettings()Lorg/mockito/MockSettings;

    move-result-object v0

    .line 34
    .local v0, "mockSettings":Lorg/mockito/MockSettings;
    invoke-interface {p0}, Lorg/mockito/Mock;->extraInterfaces()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 35
    invoke-interface {p0}, Lorg/mockito/Mock;->extraInterfaces()[Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/mockito/MockSettings;->extraInterfaces([Ljava/lang/Class;)Lorg/mockito/MockSettings;

    .line 37
    :cond_0
    const-string v1, ""

    invoke-interface {p0}, Lorg/mockito/Mock;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    invoke-interface {v0, p3}, Lorg/mockito/MockSettings;->name(Ljava/lang/String;)Lorg/mockito/MockSettings;

    goto :goto_0

    .line 40
    :cond_1
    invoke-interface {p0}, Lorg/mockito/Mock;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/mockito/MockSettings;->name(Ljava/lang/String;)Lorg/mockito/MockSettings;

    .line 42
    :goto_0
    invoke-interface {p0}, Lorg/mockito/Mock;->serializable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 43
    invoke-interface {v0}, Lorg/mockito/MockSettings;->serializable()Lorg/mockito/MockSettings;

    .line 45
    :cond_2
    invoke-interface {p0}, Lorg/mockito/Mock;->stubOnly()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 46
    invoke-interface {v0}, Lorg/mockito/MockSettings;->stubOnly()Lorg/mockito/MockSettings;

    .line 48
    :cond_3
    invoke-interface {p0}, Lorg/mockito/Mock;->lenient()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 49
    invoke-interface {v0}, Lorg/mockito/MockSettings;->lenient()Lorg/mockito/MockSettings;

    .line 53
    :cond_4
    invoke-interface {p0}, Lorg/mockito/Mock;->answer()Lorg/mockito/Answers;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/mockito/MockSettings;->defaultAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/MockSettings;

    .line 55
    const-class v1, Lorg/mockito/MockedStatic;

    if-ne p1, v1, :cond_5

    .line 56
    nop

    .line 58
    invoke-interface {p2}, Lorg/mockito/internal/util/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Type;

    const-class v2, Lorg/mockito/MockedStatic;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-static {v1, p3, v2}, Lorg/mockito/internal/configuration/MockAnnotationProcessor;->inferParameterizedType(Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 56
    invoke-static {v1, v0}, Lorg/mockito/Mockito;->mockStatic(Ljava/lang/Class;Lorg/mockito/MockSettings;)Lorg/mockito/MockedStatic;

    move-result-object v1

    return-object v1

    .line 60
    :cond_5
    const-class v1, Lorg/mockito/MockedConstruction;

    if-ne p1, v1, :cond_6

    .line 61
    nop

    .line 63
    invoke-interface {p2}, Lorg/mockito/internal/util/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Type;

    const-class v2, Lorg/mockito/MockedConstruction;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-static {v1, p3, v2}, Lorg/mockito/internal/configuration/MockAnnotationProcessor;->inferParameterizedType(Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 61
    invoke-static {v1, v0}, Lorg/mockito/Mockito;->mockConstruction(Ljava/lang/Class;Lorg/mockito/MockSettings;)Lorg/mockito/MockedConstruction;

    move-result-object v1

    return-object v1

    .line 66
    :cond_6
    invoke-static {p1, v0}, Lorg/mockito/Mockito;->mock(Ljava/lang/Class;Lorg/mockito/MockSettings;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic process(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p1, Lorg/mockito/Mock;

    invoke-virtual {p0, p1, p2}, Lorg/mockito/internal/configuration/MockAnnotationProcessor;->process(Lorg/mockito/Mock;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public process(Lorg/mockito/Mock;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 3
    .param p1, "annotation"    # Lorg/mockito/Mock;
    .param p2, "field"    # Ljava/lang/reflect/Field;

    .line 27
    nop

    .line 28
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/mockito/internal/configuration/MockAnnotationProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Lorg/mockito/internal/configuration/MockAnnotationProcessor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/reflect/Field;)V

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    .line 27
    invoke-static {p1, v0, v1, v2}, Lorg/mockito/internal/configuration/MockAnnotationProcessor;->processAnnotationForMock(Lorg/mockito/Mock;Ljava/lang/Class;Lorg/mockito/internal/util/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
