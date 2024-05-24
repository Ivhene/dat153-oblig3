.class public Lorg/objenesis/instantiator/perc/PercSerializationInstantiator;
.super Ljava/lang/Object;
.source "PercSerializationInstantiator.java"

# interfaces
.implements Lorg/objenesis/instantiator/ObjectInstantiator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/objenesis/instantiator/ObjectInstantiator<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lorg/objenesis/instantiator/annotations/Instantiator;
    value = .enum Lorg/objenesis/instantiator/annotations/Typology;->SERIALIZATION:Lorg/objenesis/instantiator/annotations/Typology;
.end annotation


# instance fields
.field private final newInstanceMethod:Ljava/lang/reflect/Method;

.field private final typeArgs:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lorg/objenesis/instantiator/perc/PercSerializationInstantiator;, "Lorg/objenesis/instantiator/perc/PercSerializationInstantiator<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    move-object v0, p1

    .line 50
    .local v0, "unserializableType":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    :goto_0
    const-class v1, Ljava/io/Serializable;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 56
    :cond_0
    :try_start_0
    const-string v1, "COM.newmonics.PercClassLoader.Method"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 58
    .local v1, "percMethodClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/io/ObjectInputStream;

    const-string v3, "noArgConstruct"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/Object;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lorg/objenesis/instantiator/perc/PercSerializationInstantiator;->newInstanceMethod:Ljava/lang/reflect/Method;

    .line 60
    invoke-virtual {v2, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 63
    const-string v2, "COM.newmonics.PercClassLoader.PercClass"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 64
    .local v2, "percClassClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "getPercClass"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Class;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 65
    .local v3, "getPercClassMethod":Ljava/lang/reflect/Method;
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 66
    .local v4, "someObject":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v8, "findMethod"

    new-array v9, v7, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v6

    invoke-virtual {v5, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 68
    .local v5, "findMethodMethod":Ljava/lang/reflect/Method;
    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "<init>()V"

    aput-object v8, v7, v6

    invoke-virtual {v5, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 70
    .local v6, "percMethod":Ljava/lang/Object;
    filled-new-array {v0, p1, v6}, [Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Lorg/objenesis/instantiator/perc/PercSerializationInstantiator;->typeArgs:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v1    # "percMethodClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "percClassClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "getPercClassMethod":Ljava/lang/reflect/Method;
    .end local v4    # "someObject":Ljava/lang/Object;
    .end local v5    # "findMethodMethod":Ljava/lang/reflect/Method;
    .end local v6    # "percMethod":Ljava/lang/Object;
    nop

    .line 76
    return-void

    .line 73
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    new-instance v2, Lorg/objenesis/ObjenesisException;

    invoke-direct {v2, v1}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public newInstance()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 81
    .local p0, "this":Lorg/objenesis/instantiator/perc/PercSerializationInstantiator;, "Lorg/objenesis/instantiator/perc/PercSerializationInstantiator<TT;>;"
    :try_start_0
    iget-object v0, p0, Lorg/objenesis/instantiator/perc/PercSerializationInstantiator;->newInstanceMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/objenesis/instantiator/perc/PercSerializationInstantiator;->typeArgs:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 83
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v1, Lorg/objenesis/ObjenesisException;

    invoke-direct {v1, v0}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
