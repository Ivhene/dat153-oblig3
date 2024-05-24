.class public Lorg/mockito/internal/util/reflection/FieldInitializer;
.super Ljava/lang/Object;
.source "FieldInitializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;,
        Lorg/mockito/internal/util/reflection/FieldInitializer$NoArgConstructorInstantiator;,
        Lorg/mockito/internal/util/reflection/FieldInitializer$ConstructorInstantiator;,
        Lorg/mockito/internal/util/reflection/FieldInitializer$ConstructorArgumentResolver;
    }
.end annotation


# instance fields
.field private final field:Ljava/lang/reflect/Field;

.field private final fieldOwner:Ljava/lang/Object;

.field private final instantiator:Lorg/mockito/internal/util/reflection/FieldInitializer$ConstructorInstantiator;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V
    .locals 1
    .param p1, "fieldOwner"    # Ljava/lang/Object;
    .param p2, "field"    # Ljava/lang/reflect/Field;

    .line 49
    new-instance v0, Lorg/mockito/internal/util/reflection/FieldInitializer$NoArgConstructorInstantiator;

    invoke-direct {v0, p1, p2}, Lorg/mockito/internal/util/reflection/FieldInitializer$NoArgConstructorInstantiator;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/mockito/internal/util/reflection/FieldInitializer;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;Lorg/mockito/internal/util/reflection/FieldInitializer$ConstructorInstantiator;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Field;Lorg/mockito/internal/util/reflection/FieldInitializer$ConstructorArgumentResolver;)V
    .locals 1
    .param p1, "fieldOwner"    # Ljava/lang/Object;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "argResolver"    # Lorg/mockito/internal/util/reflection/FieldInitializer$ConstructorArgumentResolver;

    .line 65
    new-instance v0, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;

    invoke-direct {v0, p1, p2, p3}, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;Lorg/mockito/internal/util/reflection/FieldInitializer$ConstructorArgumentResolver;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/mockito/internal/util/reflection/FieldInitializer;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;Lorg/mockito/internal/util/reflection/FieldInitializer$ConstructorInstantiator;)V

    .line 69
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Field;Lorg/mockito/internal/util/reflection/FieldInitializer$ConstructorInstantiator;)V
    .locals 1
    .param p1, "fieldOwner"    # Ljava/lang/Object;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "instantiator"    # Lorg/mockito/internal/util/reflection/FieldInitializer$ConstructorInstantiator;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lorg/mockito/internal/util/reflection/FieldReader;

    invoke-direct {v0, p1, p2}, Lorg/mockito/internal/util/reflection/FieldReader;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V

    invoke-virtual {v0}, Lorg/mockito/internal/util/reflection/FieldReader;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0, p2}, Lorg/mockito/internal/util/reflection/FieldInitializer;->checkNotLocal(Ljava/lang/reflect/Field;)V

    .line 74
    invoke-direct {p0, p2}, Lorg/mockito/internal/util/reflection/FieldInitializer;->checkNotInner(Ljava/lang/reflect/Field;)V

    .line 75
    invoke-direct {p0, p2}, Lorg/mockito/internal/util/reflection/FieldInitializer;->checkNotInterface(Ljava/lang/reflect/Field;)V

    .line 76
    invoke-direct {p0, p2}, Lorg/mockito/internal/util/reflection/FieldInitializer;->checkNotEnum(Ljava/lang/reflect/Field;)V

    .line 77
    invoke-direct {p0, p2}, Lorg/mockito/internal/util/reflection/FieldInitializer;->checkNotAbstract(Ljava/lang/reflect/Field;)V

    .line 79
    :cond_0
    iput-object p1, p0, Lorg/mockito/internal/util/reflection/FieldInitializer;->fieldOwner:Ljava/lang/Object;

    .line 80
    iput-object p2, p0, Lorg/mockito/internal/util/reflection/FieldInitializer;->field:Ljava/lang/reflect/Field;

    .line 81
    iput-object p3, p0, Lorg/mockito/internal/util/reflection/FieldInitializer;->instantiator:Lorg/mockito/internal/util/reflection/FieldInitializer$ConstructorInstantiator;

    .line 82
    return-void
.end method

.method private acquireFieldInstance()Lorg/mockito/internal/util/reflection/FieldInitializationReport;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 140
    invoke-static {}, Lorg/mockito/internal/configuration/plugins/Plugins;->getMemberAccessor()Lorg/mockito/plugins/MemberAccessor;

    move-result-object v0

    .line 141
    .local v0, "accessor":Lorg/mockito/plugins/MemberAccessor;
    iget-object v1, p0, Lorg/mockito/internal/util/reflection/FieldInitializer;->field:Ljava/lang/reflect/Field;

    iget-object v2, p0, Lorg/mockito/internal/util/reflection/FieldInitializer;->fieldOwner:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/mockito/plugins/MemberAccessor;->get(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 142
    .local v1, "fieldInstance":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 143
    new-instance v2, Lorg/mockito/internal/util/reflection/FieldInitializationReport;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v3}, Lorg/mockito/internal/util/reflection/FieldInitializationReport;-><init>(Ljava/lang/Object;ZZ)V

    return-object v2

    .line 146
    :cond_0
    iget-object v2, p0, Lorg/mockito/internal/util/reflection/FieldInitializer;->instantiator:Lorg/mockito/internal/util/reflection/FieldInitializer$ConstructorInstantiator;

    invoke-interface {v2}, Lorg/mockito/internal/util/reflection/FieldInitializer$ConstructorInstantiator;->instantiate()Lorg/mockito/internal/util/reflection/FieldInitializationReport;

    move-result-object v2

    return-object v2
.end method

.method private checkNotAbstract(Ljava/lang/reflect/Field;)V
    .locals 3
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 126
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    return-void

    .line 127
    :cond_0
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 128
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is an abstract class."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkNotEnum(Ljava/lang/reflect/Field;)V
    .locals 3
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 133
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    return-void

    .line 134
    :cond_0
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 135
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is an enum."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkNotInner(Ljava/lang/reflect/Field;)V
    .locals 4
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 111
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 112
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    new-instance v1, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 114
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is an inner non static class."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 116
    :cond_1
    :goto_0
    return-void
.end method

.method private checkNotInterface(Ljava/lang/reflect/Field;)V
    .locals 3
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 119
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    return-void

    .line 120
    :cond_0
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 121
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is an interface."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkNotLocal(Ljava/lang/reflect/Field;)V
    .locals 3
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 104
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isLocalClass()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    return-void

    .line 105
    :cond_0
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 106
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is a local class."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public initialize()Lorg/mockito/internal/util/reflection/FieldInitializationReport;
    .locals 4

    .line 91
    :try_start_0
    invoke-direct {p0}, Lorg/mockito/internal/util/reflection/FieldInitializer;->acquireFieldInstance()Lorg/mockito/internal/util/reflection/FieldInitializationReport;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problems initializing field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/mockito/internal/util/reflection/FieldInitializer;->field:Ljava/lang/reflect/Field;

    .line 95
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' of type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/mockito/internal/util/reflection/FieldInitializer;->field:Ljava/lang/reflect/Field;

    .line 97
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
