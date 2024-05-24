.class public Lorg/mockito/internal/configuration/injection/ConstructorInjection;
.super Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;
.source "ConstructorInjection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/configuration/injection/ConstructorInjection$SimpleArgumentResolver;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public processInjection(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set;)Z
    .locals 3
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "fieldOwner"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Object;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 45
    .local p3, "mockCandidates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    :try_start_0
    new-instance v0, Lorg/mockito/internal/configuration/injection/ConstructorInjection$SimpleArgumentResolver;

    invoke-direct {v0, p3}, Lorg/mockito/internal/configuration/injection/ConstructorInjection$SimpleArgumentResolver;-><init>(Ljava/util/Set;)V

    .line 47
    .local v0, "simpleArgumentResolver":Lorg/mockito/internal/configuration/injection/ConstructorInjection$SimpleArgumentResolver;
    new-instance v1, Lorg/mockito/internal/util/reflection/FieldInitializer;

    invoke-direct {v1, p2, p1, v0}, Lorg/mockito/internal/util/reflection/FieldInitializer;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;Lorg/mockito/internal/util/reflection/FieldInitializer$ConstructorArgumentResolver;)V

    .line 48
    invoke-virtual {v1}, Lorg/mockito/internal/util/reflection/FieldInitializer;->initialize()Lorg/mockito/internal/util/reflection/FieldInitializationReport;

    move-result-object v1

    .line 50
    .local v1, "report":Lorg/mockito/internal/util/reflection/FieldInitializationReport;
    invoke-virtual {v1}, Lorg/mockito/internal/util/reflection/FieldInitializationReport;->fieldWasInitializedUsingContructorArgs()Z

    move-result v2
    :try_end_0
    .catch Lorg/mockito/exceptions/base/MockitoException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 51
    .end local v0    # "simpleArgumentResolver":Lorg/mockito/internal/configuration/injection/ConstructorInjection$SimpleArgumentResolver;
    .end local v1    # "report":Lorg/mockito/internal/util/reflection/FieldInitializationReport;
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Lorg/mockito/exceptions/base/MockitoException;
    invoke-virtual {v0}, Lorg/mockito/exceptions/base/MockitoException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/reflect/InvocationTargetException;

    if-nez v1, :cond_0

    .line 57
    const/4 v1, 0x0

    return v1

    .line 53
    :cond_0
    invoke-virtual {v0}, Lorg/mockito/exceptions/base/MockitoException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 54
    .local v1, "realCause":Ljava/lang/Throwable;
    invoke-static {p1, v1}, Lorg/mockito/internal/exceptions/Reporter;->fieldInitialisationThrewException(Ljava/lang/reflect/Field;Ljava/lang/Throwable;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v2

    throw v2
.end method
