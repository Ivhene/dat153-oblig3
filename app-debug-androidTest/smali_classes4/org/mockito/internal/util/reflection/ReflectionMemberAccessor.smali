.class public Lorg/mockito/internal/util/reflection/ReflectionMemberAccessor;
.super Ljava/lang/Object;
.source "ReflectionMemberAccessor.java"

# interfaces
.implements Lorg/mockito/plugins/MemberAccessor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$newInstance$0(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "constructor"    # Ljava/lang/reflect/Constructor;
    .param p1, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static silentSetAccessible(Ljava/lang/reflect/AccessibleObject;Z)V
    .locals 1
    .param p0, "object"    # Ljava/lang/reflect/AccessibleObject;
    .param p1, "value"    # Z

    .line 88
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 91
    :goto_0
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 60
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/mockito/internal/util/reflection/ReflectionMemberAccessor;->silentSetAccessible(Ljava/lang/reflect/AccessibleObject;Z)V

    .line 62
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-static {p1, v0}, Lorg/mockito/internal/util/reflection/ReflectionMemberAccessor;->silentSetAccessible(Ljava/lang/reflect/AccessibleObject;Z)V

    .line 62
    return-object v1

    .line 68
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 65
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not read "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p1    # "field":Ljava/lang/reflect/Field;
    .end local p2    # "target":Ljava/lang/Object;
    throw v2

    .line 63
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .restart local p1    # "field":Ljava/lang/reflect/Field;
    .restart local p2    # "target":Ljava/lang/Object;
    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    nop

    .end local p1    # "field":Ljava/lang/reflect/Field;
    .end local p2    # "target":Ljava/lang/Object;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local p1    # "field":Ljava/lang/reflect/Field;
    .restart local p2    # "target":Ljava/lang/Object;
    :goto_1
    invoke-static {p1, v0}, Lorg/mockito/internal/util/reflection/ReflectionMemberAccessor;->silentSetAccessible(Ljava/lang/reflect/AccessibleObject;Z)V

    throw v1
.end method

.method public varargs invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 46
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/mockito/internal/util/reflection/ReflectionMemberAccessor;->silentSetAccessible(Ljava/lang/reflect/AccessibleObject;Z)V

    .line 48
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    invoke-static {p1, v0}, Lorg/mockito/internal/util/reflection/ReflectionMemberAccessor;->silentSetAccessible(Ljava/lang/reflect/AccessibleObject;Z)V

    .line 48
    return-object v1

    .line 54
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not invoke "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p1    # "method":Ljava/lang/reflect/Method;
    .end local p2    # "target":Ljava/lang/Object;
    .end local p3    # "arguments":[Ljava/lang/Object;
    throw v2

    .line 49
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .restart local p1    # "method":Ljava/lang/reflect/Method;
    .restart local p2    # "target":Ljava/lang/Object;
    .restart local p3    # "arguments":[Ljava/lang/Object;
    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    .line 50
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    nop

    .end local p1    # "method":Ljava/lang/reflect/Method;
    .end local p2    # "target":Ljava/lang/Object;
    .end local p3    # "arguments":[Ljava/lang/Object;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local p1    # "method":Ljava/lang/reflect/Method;
    .restart local p2    # "target":Ljava/lang/Object;
    .restart local p3    # "arguments":[Ljava/lang/Object;
    :goto_1
    invoke-static {p1, v0}, Lorg/mockito/internal/util/reflection/ReflectionMemberAccessor;->silentSetAccessible(Ljava/lang/reflect/AccessibleObject;Z)V

    throw v1
.end method

.method public varargs newInstance(Ljava/lang/reflect/Constructor;Lorg/mockito/plugins/MemberAccessor$OnConstruction;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
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

    .line 27
    .local p1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/mockito/internal/util/reflection/ReflectionMemberAccessor;->silentSetAccessible(Ljava/lang/reflect/AccessibleObject;Z)V

    .line 29
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/mockito/internal/util/reflection/ReflectionMemberAccessor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p3}, Lorg/mockito/internal/util/reflection/ReflectionMemberAccessor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)V

    invoke-interface {p2, v1}, Lorg/mockito/plugins/MemberAccessor$OnConstruction;->invoke(Lorg/mockito/plugins/MemberAccessor$ConstructionDispatcher;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-static {p1, v0}, Lorg/mockito/internal/util/reflection/ReflectionMemberAccessor;->silentSetAccessible(Ljava/lang/reflect/AccessibleObject;Z)V

    .line 29
    return-object v1

    .line 39
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 35
    :catch_0
    move-exception v1

    .line 36
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to invoke "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 37
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local p2    # "onConstruction":Lorg/mockito/plugins/MemberAccessor$OnConstruction;
    .end local p3    # "arguments":[Ljava/lang/Object;
    throw v2

    .line 30
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .restart local p1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local p2    # "onConstruction":Lorg/mockito/plugins/MemberAccessor$OnConstruction;
    .restart local p3    # "arguments":[Ljava/lang/Object;
    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0

    :catch_4
    move-exception v1

    .line 34
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    nop

    .end local p1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local p2    # "onConstruction":Lorg/mockito/plugins/MemberAccessor$OnConstruction;
    .end local p3    # "arguments":[Ljava/lang/Object;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local p1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local p2    # "onConstruction":Lorg/mockito/plugins/MemberAccessor$OnConstruction;
    .restart local p3    # "arguments":[Ljava/lang/Object;
    :goto_1
    invoke-static {p1, v0}, Lorg/mockito/internal/util/reflection/ReflectionMemberAccessor;->silentSetAccessible(Ljava/lang/reflect/AccessibleObject;Z)V

    throw v1
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

    .line 20
    .local p1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-instance v0, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lorg/mockito/internal/util/reflection/ReflectionMemberAccessor;->newInstance(Ljava/lang/reflect/Constructor;Lorg/mockito/plugins/MemberAccessor$OnConstruction;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 74
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/mockito/internal/util/reflection/ReflectionMemberAccessor;->silentSetAccessible(Ljava/lang/reflect/AccessibleObject;Z)V

    .line 76
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-static {p1, v0}, Lorg/mockito/internal/util/reflection/ReflectionMemberAccessor;->silentSetAccessible(Ljava/lang/reflect/AccessibleObject;Z)V

    .line 83
    nop

    .line 84
    return-void

    .line 82
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not write "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p1    # "field":Ljava/lang/reflect/Field;
    .end local p2    # "target":Ljava/lang/Object;
    .end local p3    # "value":Ljava/lang/Object;
    throw v2

    .line 77
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .restart local p1    # "field":Ljava/lang/reflect/Field;
    .restart local p2    # "target":Ljava/lang/Object;
    .restart local p3    # "value":Ljava/lang/Object;
    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    nop

    .end local p1    # "field":Ljava/lang/reflect/Field;
    .end local p2    # "target":Ljava/lang/Object;
    .end local p3    # "value":Ljava/lang/Object;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local p1    # "field":Ljava/lang/reflect/Field;
    .restart local p2    # "target":Ljava/lang/Object;
    .restart local p3    # "value":Ljava/lang/Object;
    :goto_1
    invoke-static {p1, v0}, Lorg/mockito/internal/util/reflection/ReflectionMemberAccessor;->silentSetAccessible(Ljava/lang/reflect/AccessibleObject;Z)V

    throw v1
.end method
