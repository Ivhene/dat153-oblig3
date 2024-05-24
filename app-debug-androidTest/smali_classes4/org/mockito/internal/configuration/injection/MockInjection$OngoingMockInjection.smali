.class public Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;
.super Ljava/lang/Object;
.source "MockInjection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/configuration/injection/MockInjection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OngoingMockInjection"
.end annotation


# instance fields
.field private final fieldOwner:Ljava/lang/Object;

.field private final fields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private final injectionStrategies:Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;

.field private final mocks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final postInjectionStrategies:Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "fieldOwner"    # Ljava/lang/Object;

    .line 58
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/reflect/Field;Ljava/lang/Object;Lorg/mockito/internal/configuration/injection/MockInjection$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/reflect/Field;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lorg/mockito/internal/configuration/injection/MockInjection$1;

    .line 50
    invoke-direct {p0, p1, p2}, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;-><init>(Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Set;Ljava/lang/Object;)V
    .locals 2
    .param p2, "fieldOwner"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 61
    .local p1, "fields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Field;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;->fields:Ljava/util/Set;

    .line 52
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v1}, Lorg/mockito/internal/util/collections/Sets;->newMockSafeHashSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;->mocks:Ljava/util/Set;

    .line 54
    invoke-static {}, Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;->nop()Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;

    move-result-object v1

    iput-object v1, p0, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;->injectionStrategies:Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;

    .line 55
    invoke-static {}, Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;->nop()Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;

    move-result-object v1

    iput-object v1, p0, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;->postInjectionStrategies:Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;

    .line 62
    const-string v1, "fieldOwner"

    invoke-static {p2, v1}, Lorg/mockito/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;->fieldOwner:Ljava/lang/Object;

    .line 63
    const-string v1, "fields"

    invoke-static {p1, v1}, Lorg/mockito/internal/util/Checks;->checkItemsNotNull(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Set;Ljava/lang/Object;Lorg/mockito/internal/configuration/injection/MockInjection$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Set;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lorg/mockito/internal/configuration/injection/MockInjection$1;

    .line 50
    invoke-direct {p0, p1, p2}, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 5

    .line 87
    iget-object v0, p0, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;->fields:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 88
    .local v1, "field":Ljava/lang/reflect/Field;
    iget-object v2, p0, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;->injectionStrategies:Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;

    iget-object v3, p0, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;->fieldOwner:Ljava/lang/Object;

    iget-object v4, p0, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;->mocks:Ljava/util/Set;

    invoke-virtual {v2, v1, v3, v4}, Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;->process(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set;)Z

    .line 89
    iget-object v2, p0, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;->postInjectionStrategies:Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;

    iget-object v3, p0, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;->fieldOwner:Ljava/lang/Object;

    iget-object v4, p0, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;->mocks:Ljava/util/Set;

    invoke-virtual {v2, v1, v3, v4}, Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;->process(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set;)Z

    .line 90
    .end local v1    # "field":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 91
    :cond_0
    return-void
.end method

.method public handleSpyAnnotation()Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;
    .locals 2

    .line 82
    iget-object v0, p0, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;->postInjectionStrategies:Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;

    new-instance v1, Lorg/mockito/internal/configuration/injection/SpyOnInjectedFieldsHandler;

    invoke-direct {v1}, Lorg/mockito/internal/configuration/injection/SpyOnInjectedFieldsHandler;-><init>()V

    invoke-virtual {v0, v1}, Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;->thenTry(Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;)Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;

    .line 83
    return-object p0
.end method

.method public tryConstructorInjection()Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;
    .locals 2

    .line 72
    iget-object v0, p0, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;->injectionStrategies:Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;

    new-instance v1, Lorg/mockito/internal/configuration/injection/ConstructorInjection;

    invoke-direct {v1}, Lorg/mockito/internal/configuration/injection/ConstructorInjection;-><init>()V

    invoke-virtual {v0, v1}, Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;->thenTry(Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;)Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;

    .line 73
    return-object p0
.end method

.method public tryPropertyOrFieldInjection()Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;
    .locals 2

    .line 77
    iget-object v0, p0, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;->injectionStrategies:Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;

    new-instance v1, Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;

    invoke-direct {v1}, Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;-><init>()V

    invoke-virtual {v0, v1}, Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;->thenTry(Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;)Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;

    .line 78
    return-object p0
.end method

.method public withMocks(Ljava/util/Set;)Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;"
        }
    .end annotation

    .line 67
    .local p1, "mocks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;->mocks:Ljava/util/Set;

    const-string v1, "mocks"

    invoke-static {p1, v1}, Lorg/mockito/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 68
    return-object p0
.end method
