.class public Lorg/mockito/internal/creation/instance/DefaultInstantiatorProvider;
.super Ljava/lang/Object;
.source "DefaultInstantiatorProvider.java"

# interfaces
.implements Lorg/mockito/plugins/InstantiatorProvider2;


# static fields
.field private static final INSTANCE:Lorg/mockito/creation/instance/Instantiator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lorg/mockito/internal/creation/instance/ObjenesisInstantiator;

    invoke-direct {v0}, Lorg/mockito/internal/creation/instance/ObjenesisInstantiator;-><init>()V

    sput-object v0, Lorg/mockito/internal/creation/instance/DefaultInstantiatorProvider;->INSTANCE:Lorg/mockito/creation/instance/Instantiator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstantiator(Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/creation/instance/Instantiator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/mock/MockCreationSettings<",
            "*>;)",
            "Lorg/mockito/creation/instance/Instantiator;"
        }
    .end annotation

    .line 17
    .local p1, "settings":Lorg/mockito/mock/MockCreationSettings;, "Lorg/mockito/mock/MockCreationSettings<*>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getConstructorArgs()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 18
    new-instance v0, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;

    .line 19
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getOuterClassInstance()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getConstructorArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;-><init>(Z[Ljava/lang/Object;)V

    .line 18
    return-object v0

    .line 21
    :cond_1
    sget-object v0, Lorg/mockito/internal/creation/instance/DefaultInstantiatorProvider;->INSTANCE:Lorg/mockito/creation/instance/Instantiator;

    return-object v0
.end method
