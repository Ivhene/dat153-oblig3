.class public Lorg/mockito/internal/configuration/injection/scanner/MockScanner;
.super Ljava/lang/Object;
.source "MockScanner.java"


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final instance:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0
    .param p1, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 30
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/mockito/internal/configuration/injection/scanner/MockScanner;->instance:Ljava/lang/Object;

    .line 32
    iput-object p2, p0, Lorg/mockito/internal/configuration/injection/scanner/MockScanner;->clazz:Ljava/lang/Class;

    .line 33
    return-void
.end method

.method private isAnnotatedByMockOrSpy(Ljava/lang/reflect/Field;)Z
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 79
    const-class v0, Lorg/mockito/Spy;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lorg/mockito/Mock;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isMockOrSpy(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;

    .line 83
    invoke-static {p1}, Lorg/mockito/internal/util/MockUtil;->isMock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/mockito/internal/util/MockUtil;->isSpy(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private preparedMock(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "field"    # Ljava/lang/reflect/Field;

    .line 68
    invoke-direct {p0, p2}, Lorg/mockito/internal/configuration/injection/scanner/MockScanner;->isAnnotatedByMockOrSpy(Ljava/lang/reflect/Field;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    return-object p1

    .line 71
    :cond_0
    invoke-direct {p0, p1}, Lorg/mockito/internal/configuration/injection/scanner/MockScanner;->isMockOrSpy(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/mockito/internal/util/MockUtil;->maybeRedefineMockName(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    return-object p1

    .line 75
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private scan()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 54
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v1}, Lorg/mockito/internal/util/collections/Sets;->newMockSafeHashSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 55
    .local v1, "mocks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    iget-object v2, p0, Lorg/mockito/internal/configuration/injection/scanner/MockScanner;->clazz:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 57
    .local v4, "field":Ljava/lang/reflect/Field;
    new-instance v5, Lorg/mockito/internal/util/reflection/FieldReader;

    iget-object v6, p0, Lorg/mockito/internal/configuration/injection/scanner/MockScanner;->instance:Ljava/lang/Object;

    invoke-direct {v5, v6, v4}, Lorg/mockito/internal/util/reflection/FieldReader;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V

    .line 59
    .local v5, "fieldReader":Lorg/mockito/internal/util/reflection/FieldReader;
    invoke-virtual {v5}, Lorg/mockito/internal/util/reflection/FieldReader;->read()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v6, v4}, Lorg/mockito/internal/configuration/injection/scanner/MockScanner;->preparedMock(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v6

    .line 60
    .local v6, "mockInstance":Ljava/lang/Object;
    if-eqz v6, :cond_0

    .line 61
    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "fieldReader":Lorg/mockito/internal/util/reflection/FieldReader;
    .end local v6    # "mockInstance":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_1
    return-object v1
.end method


# virtual methods
.method public addPreparedMocks(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 45
    .local p1, "mocks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-direct {p0}, Lorg/mockito/internal/configuration/injection/scanner/MockScanner;->scan()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 46
    return-void
.end method
