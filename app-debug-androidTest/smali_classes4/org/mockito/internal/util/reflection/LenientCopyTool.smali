.class public Lorg/mockito/internal/util/reflection/LenientCopyTool;
.super Ljava/lang/Object;
.source "LenientCopyTool.java"


# instance fields
.field accessor:Lorg/mockito/plugins/MemberAccessor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Lorg/mockito/internal/configuration/plugins/Plugins;->getMemberAccessor()Lorg/mockito/plugins/MemberAccessor;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/util/reflection/LenientCopyTool;->accessor:Lorg/mockito/plugins/MemberAccessor;

    return-void
.end method

.method private copy(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 26
    .local p1, "from":Ljava/lang/Object;, "TT;"
    .local p2, "to":Ljava/lang/Object;, "TT;"
    .local p3, "fromClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    :goto_0
    const-class v0, Ljava/lang/Object;

    if-eq p3, v0, :cond_0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lorg/mockito/internal/util/reflection/LenientCopyTool;->copyValues(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 28
    invoke-virtual {p3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p3

    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method private copyValues(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 33
    .local p1, "from":Ljava/lang/Object;, "TT;"
    .local p2, "mock":Ljava/lang/Object;, "TT;"
    .local p3, "classFrom":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 35
    .local v0, "fields":[Ljava/lang/reflect/Field;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 37
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 38
    goto :goto_1

    .line 41
    :cond_0
    :try_start_0
    iget-object v4, p0, Lorg/mockito/internal/util/reflection/LenientCopyTool;->accessor:Lorg/mockito/plugins/MemberAccessor;

    invoke-interface {v4, v3, p1}, Lorg/mockito/plugins/MemberAccessor;->get(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 42
    .local v4, "value":Ljava/lang/Object;
    iget-object v5, p0, Lorg/mockito/internal/util/reflection/LenientCopyTool;->accessor:Lorg/mockito/plugins/MemberAccessor;

    invoke-interface {v5, v3, p2, v4}, Lorg/mockito/plugins/MemberAccessor;->set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .end local v4    # "value":Ljava/lang/Object;
    goto :goto_1

    .line 43
    :catchall_0
    move-exception v4

    .line 35
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 47
    :cond_1
    return-void
.end method


# virtual methods
.method public copyToMock(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)V"
        }
    .end annotation

    .line 18
    .local p1, "from":Ljava/lang/Object;, "TT;"
    .local p2, "mock":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/mockito/internal/util/reflection/LenientCopyTool;->copy(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 19
    return-void
.end method

.method public copyToRealObject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)V"
        }
    .end annotation

    .line 22
    .local p1, "from":Ljava/lang/Object;, "TT;"
    .local p2, "to":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/mockito/internal/util/reflection/LenientCopyTool;->copy(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 23
    return-void
.end method
