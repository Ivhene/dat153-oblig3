.class public interface abstract Lorg/mockito/plugins/MemberAccessor;
.super Ljava/lang/Object;
.source "MemberAccessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/plugins/MemberAccessor$ConstructionDispatcher;,
        Lorg/mockito/plugins/MemberAccessor$OnConstruction;
    }
.end annotation

.annotation runtime Lorg/mockito/Incubating;
.end annotation


# direct methods
.method public static synthetic lambda$newInstance$0(Lorg/mockito/plugins/MemberAccessor;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "_this"    # Lorg/mockito/plugins/MemberAccessor;
    .param p1, "constructor"    # Ljava/lang/reflect/Constructor;
    .param p2, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 27
    invoke-interface {p0, p1, p2}, Lorg/mockito/plugins/MemberAccessor;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract get(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method public varargs abstract invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
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

    .line 27
    .local p1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-instance v0, Lorg/mockito/plugins/MemberAccessor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p3}, Lorg/mockito/plugins/MemberAccessor$$ExternalSyntheticLambda0;-><init>(Lorg/mockito/plugins/MemberAccessor;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)V

    invoke-interface {p2, v0}, Lorg/mockito/plugins/MemberAccessor$OnConstruction;->invoke(Lorg/mockito/plugins/MemberAccessor$ConstructionDispatcher;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs abstract newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;
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
.end method

.method public abstract set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method
