.class public Lorg/mockito/internal/util/reflection/ModuleMemberAccessor;
.super Ljava/lang/Object;
.source "ModuleMemberAccessor.java"

# interfaces
.implements Lorg/mockito/plugins/MemberAccessor;


# instance fields
.field private final delegate:Lorg/mockito/plugins/MemberAccessor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    :try_start_0
    invoke-static {}, Lorg/mockito/internal/util/reflection/ModuleMemberAccessor;->delegate()Lorg/mockito/plugins/MemberAccessor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .local v0, "delegate":Lorg/mockito/plugins/MemberAccessor;
    goto :goto_0

    .line 23
    .end local v0    # "delegate":Lorg/mockito/plugins/MemberAccessor;
    :catchall_0
    move-exception v0

    .line 26
    .local v0, "ignored":Ljava/lang/Throwable;
    new-instance v1, Lorg/mockito/internal/util/reflection/ReflectionMemberAccessor;

    invoke-direct {v1}, Lorg/mockito/internal/util/reflection/ReflectionMemberAccessor;-><init>()V

    move-object v0, v1

    .line 28
    .local v0, "delegate":Lorg/mockito/plugins/MemberAccessor;
    :goto_0
    iput-object v0, p0, Lorg/mockito/internal/util/reflection/ModuleMemberAccessor;->delegate:Lorg/mockito/plugins/MemberAccessor;

    .line 29
    return-void
.end method

.method private static delegate()Lorg/mockito/plugins/MemberAccessor;
    .locals 2

    .line 32
    invoke-static {}, Lnet/bytebuddy/ClassFileVersion;->ofThisVm()Lnet/bytebuddy/ClassFileVersion;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/ClassFileVersion;->JAVA_V9:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/ClassFileVersion;->isAtLeast(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    new-instance v0, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor;

    invoke-direct {v0}, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor;-><init>()V

    return-object v0

    .line 35
    :cond_0
    new-instance v0, Lorg/mockito/internal/util/reflection/ReflectionMemberAccessor;

    invoke-direct {v0}, Lorg/mockito/internal/util/reflection/ReflectionMemberAccessor;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/ModuleMemberAccessor;->delegate:Lorg/mockito/plugins/MemberAccessor;

    invoke-interface {v0, p1, p2}, Lorg/mockito/plugins/MemberAccessor;->get(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/ModuleMemberAccessor;->delegate:Lorg/mockito/plugins/MemberAccessor;

    invoke-interface {v0, p1, p2, p3}, Lorg/mockito/plugins/MemberAccessor;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs newInstance(Ljava/lang/reflect/Constructor;Lorg/mockito/plugins/MemberAccessor$OnConstruction;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p2, "onConstruction"    # Lorg/mockito/plugins/MemberAccessor$OnConstruction;
    .param p3, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Lorg/mockito/plugins/MemberAccessor$OnConstruction;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 49
    .local p1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/ModuleMemberAccessor;->delegate:Lorg/mockito/plugins/MemberAccessor;

    invoke-interface {v0, p1, p2, p3}, Lorg/mockito/plugins/MemberAccessor;->newInstance(Ljava/lang/reflect/Constructor;Lorg/mockito/plugins/MemberAccessor$OnConstruction;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p2, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 42
    .local p1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/ModuleMemberAccessor;->delegate:Lorg/mockito/plugins/MemberAccessor;

    invoke-interface {v0, p1, p2}, Lorg/mockito/plugins/MemberAccessor;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/ModuleMemberAccessor;->delegate:Lorg/mockito/plugins/MemberAccessor;

    invoke-interface {v0, p1, p2, p3}, Lorg/mockito/plugins/MemberAccessor;->set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    return-void
.end method
