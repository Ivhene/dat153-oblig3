.class Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;
.super Ljava/lang/Object;
.source "FieldInitializer.java"

# interfaces
.implements Lorg/mockito/internal/util/reflection/FieldInitializer$ConstructorInstantiator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/util/reflection/FieldInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParameterizedConstructorInstantiator"
.end annotation


# instance fields
.field private final argResolver:Lorg/mockito/internal/util/reflection/FieldInitializer$ConstructorArgumentResolver;

.field private final byParameterNumber:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/reflect/Constructor<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final field:Ljava/lang/reflect/Field;

.field private final testClass:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Field;Lorg/mockito/internal/util/reflection/FieldInitializer$ConstructorArgumentResolver;)V
    .locals 1
    .param p1, "testClass"    # Ljava/lang/Object;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "argumentResolver"    # Lorg/mockito/internal/util/reflection/FieldInitializer$ConstructorArgumentResolver;

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    new-instance v0, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator$1;

    invoke-direct {v0, p0}, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator$1;-><init>(Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;)V

    iput-object v0, p0, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;->byParameterNumber:Ljava/util/Comparator;

    .line 276
    iput-object p1, p0, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;->testClass:Ljava/lang/Object;

    .line 277
    iput-object p2, p0, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;->field:Ljava/lang/reflect/Field;

    .line 278
    iput-object p3, p0, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;->argResolver:Lorg/mockito/internal/util/reflection/FieldInitializer$ConstructorArgumentResolver;

    .line 279
    return-void
.end method

.method private biggestConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 326
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 327
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 328
    .local v0, "constructors":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/reflect/Constructor<*>;>;"
    iget-object v1, p0, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;->byParameterNumber:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 330
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 331
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    iget-object v2, p0, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;->field:Ljava/lang/reflect/Field;

    invoke-direct {p0, v1, v2}, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;->checkParameterized(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Field;)V

    .line 332
    return-object v1
.end method

.method private checkParameterized(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Field;)V
    .locals 3
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .line 315
    .local p1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 323
    return-void

    .line 316
    :cond_0
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 318
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 320
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no parameterized constructor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public instantiate()Lorg/mockito/internal/util/reflection/FieldInitializationReport;
    .locals 8

    .line 283
    invoke-static {}, Lorg/mockito/internal/configuration/plugins/Plugins;->getMemberAccessor()Lorg/mockito/plugins/MemberAccessor;

    move-result-object v0

    .line 284
    .local v0, "accessor":Lorg/mockito/plugins/MemberAccessor;
    iget-object v1, p0, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;->biggestConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 285
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    iget-object v2, p0, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;->argResolver:Lorg/mockito/internal/util/reflection/FieldInitializer$ConstructorArgumentResolver;

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/mockito/internal/util/reflection/FieldInitializer$ConstructorArgumentResolver;->resolveTypeInstances([Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 287
    .local v2, "args":[Ljava/lang/Object;
    :try_start_0
    invoke-interface {v0, v1, v2}, Lorg/mockito/plugins/MemberAccessor;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 288
    .local v3, "newFieldInstance":Ljava/lang/Object;
    iget-object v4, p0, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;->field:Ljava/lang/reflect/Field;

    iget-object v5, p0, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;->testClass:Ljava/lang/Object;

    invoke-interface {v0, v4, v5, v3}, Lorg/mockito/plugins/MemberAccessor;->set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 290
    new-instance v4, Lorg/mockito/internal/util/reflection/FieldInitializationReport;

    iget-object v5, p0, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;->field:Ljava/lang/reflect/Field;

    iget-object v6, p0, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;->testClass:Ljava/lang/Object;

    invoke-interface {v0, v5, v6}, Lorg/mockito/plugins/MemberAccessor;->get(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Lorg/mockito/internal/util/reflection/FieldInitializationReport;-><init>(Ljava/lang/Object;ZZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 308
    .end local v3    # "newFieldInstance":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 309
    .local v3, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalAccessException (see the stack trace for cause): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 305
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v3

    .line 306
    .local v3, "e":Ljava/lang/InstantiationException;
    new-instance v4, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InstantiationException (see the stack trace for cause): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 298
    .end local v3    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v3

    .line 299
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v4, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "the constructor of type \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;->field:Ljava/lang/reflect/Field;

    .line 301
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' has raised an exception (see the stack trace for cause): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 303
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 291
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v3

    .line 292
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "internal error : argResolver provided incorrect types for constructor "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;->field:Ljava/lang/reflect/Field;

    .line 296
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method
