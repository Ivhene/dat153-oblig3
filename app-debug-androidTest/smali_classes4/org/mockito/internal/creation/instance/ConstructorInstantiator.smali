.class public Lorg/mockito/internal/creation/instance/ConstructorInstantiator;
.super Ljava/lang/Object;
.source "ConstructorInstantiator.java"

# interfaces
.implements Lorg/mockito/creation/instance/Instantiator;


# instance fields
.field private final constructorArgs:[Ljava/lang/Object;

.field private final hasOuterClassInstance:Z


# direct methods
.method public varargs constructor <init>(Z[Ljava/lang/Object;)V
    .locals 0
    .param p1, "hasOuterClassInstance"    # Z
    .param p2, "constructorArgs"    # [Ljava/lang/Object;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean p1, p0, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->hasOuterClassInstance:Z

    .line 34
    iput-object p2, p0, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->constructorArgs:[Ljava/lang/Object;

    .line 35
    return-void
.end method

.method private constructorArgTypes()Ljava/lang/String;
    .locals 5

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "argPos":I
    iget-boolean v1, p0, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->hasOuterClassInstance:Z

    if-eqz v1, :cond_0

    .line 86
    add-int/lit8 v0, v0, 0x1

    .line 88
    :cond_0
    iget-object v1, p0, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->constructorArgs:[Ljava/lang/Object;

    array-length v1, v1

    sub-int/2addr v1, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 89
    .local v1, "constructorArgTypes":[Ljava/lang/String;
    move v2, v0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->constructorArgs:[Ljava/lang/Object;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 90
    sub-int v4, v2, v0

    .line 91
    aget-object v3, v3, v2

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_1
    aput-object v3, v1, v4

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    .end local v2    # "i":I
    :cond_2
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private constructorArgsString()Ljava/lang/String;
    .locals 2

    .line 114
    iget-object v0, p0, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->constructorArgs:[Ljava/lang/Object;

    array-length v1, v0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->hasOuterClassInstance:Z

    if-eqz v1, :cond_0

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "a constructor that matches these argument types: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 118
    invoke-direct {p0}, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->constructorArgTypes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "constructorString":Ljava/lang/String;
    goto :goto_1

    .line 115
    .end local v0    # "constructorString":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v0, "a 0-arg constructor"

    .line 120
    .restart local v0    # "constructorString":Ljava/lang/String;
    :goto_1
    return-object v0
.end method

.method private evaluateConstructor(Ljava/util/List;Ljava/lang/reflect/Constructor;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Constructor<",
            "*>;>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;)V"
        }
    .end annotation

    .line 182
    .local p1, "matchingConstructors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Constructor<*>;>;"
    .local p2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v0, 0x0

    .line 183
    .local v0, "newHasBetterParam":Z
    const/4 v1, 0x0

    .line 185
    .local v1, "existingHasBetterParam":Z
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 186
    .local v2, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 187
    aget-object v4, v2, v3

    .line 188
    .local v4, "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_2

    .line 189
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Constructor;

    .line 190
    .local v6, "existingCtor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    aget-object v7, v7, v3

    .line 191
    .local v7, "existingParamType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v4, v7, :cond_1

    .line 192
    invoke-virtual {v4, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 193
    const/4 v1, 0x1

    goto :goto_2

    .line 195
    :cond_0
    const/4 v0, 0x1

    .line 198
    .end local v6    # "existingCtor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v7    # "existingParamType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_2
    goto :goto_1

    .line 186
    .end local v4    # "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 201
    .end local v3    # "i":I
    :cond_3
    if-nez v1, :cond_4

    .line 202
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 204
    :cond_4
    if-nez v0, :cond_5

    if-nez v1, :cond_6

    .line 205
    :cond_5
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_6
    return-void
.end method

.method private static varargs invokeConstructor(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Constructor<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 69
    .local p0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-static {}, Lorg/mockito/internal/configuration/plugins/Plugins;->getMemberAccessor()Lorg/mockito/plugins/MemberAccessor;

    move-result-object v0

    .line 70
    .local v0, "accessor":Lorg/mockito/plugins/MemberAccessor;
    invoke-interface {v0, p0, p1}, Lorg/mockito/plugins/MemberAccessor;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private multipleMatchingConstructors(Ljava/lang/Class;Ljava/util/List;)Lorg/mockito/creation/instance/InstantiationException;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Constructor<",
            "*>;>;)",
            "Lorg/mockito/creation/instance/InstantiationException;"
        }
    .end annotation

    .line 125
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "constructors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Constructor<*>;>;"
    new-instance v0, Lorg/mockito/creation/instance/InstantiationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create instance of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 127
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multiple constructors could be matched to arguments of types "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 129
    invoke-direct {p0}, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->constructorArgTypes()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 131
    const-string v1, ""

    const-string v4, " - "

    invoke-static {v1, v4, p2}, Lorg/mockito/internal/util/StringUtil;->join(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "If you believe that Mockito could do a better job deciding on which constructor to use, please let us know."

    const-string v6, "Ticket 685 contains the discussion and a workaround for ambiguous constructors using inner class."

    const-string v7, "See https://github.com/mockito/mockito/issues/685"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object v1

    .line 126
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mockito/creation/instance/InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    return-object v0
.end method

.method private noMatchingConstructor(Ljava/lang/Class;)Lorg/mockito/creation/instance/InstantiationException;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/mockito/creation/instance/InstantiationException;"
        }
    .end annotation

    .line 97
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->constructorArgsString()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "constructorString":Ljava/lang/String;
    const-string v1, ""

    .line 99
    .local v1, "outerInstanceHint":Ljava/lang/String;
    iget-boolean v2, p0, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->hasOuterClassInstance:Z

    if-eqz v2, :cond_0

    .line 100
    const-string v1, " and provided outer instance is correct"

    .line 102
    :cond_0
    new-instance v2, Lorg/mockito/creation/instance/InstantiationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create instance of \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 104
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Please ensure that the target class has "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 103
    invoke-static {v3}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/mockito/creation/instance/InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    return-object v2
.end method

.method private paramsException(Ljava/lang/Class;Ljava/lang/Exception;)Lorg/mockito/creation/instance/InstantiationException;
    .locals 4
    .param p2, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Exception;",
            ")",
            "Lorg/mockito/creation/instance/InstantiationException;"
        }
    .end annotation

    .line 74
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/mockito/creation/instance/InstantiationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create instance of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Please ensure the target class has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 78
    invoke-direct {p0}, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->constructorArgsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and executes cleanly."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 75
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/mockito/creation/instance/InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    return-object v0
.end method

.method private static paramsMatch([Ljava/lang/Class;[Ljava/lang/Object;)Z
    .locals 4
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 139
    .local p0, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v0, p1

    array-length v1, p0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 140
    return v2

    .line 142
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_5

    .line 143
    aget-object v1, p1, v0

    if-nez v1, :cond_1

    .line 144
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 145
    return v2

    .line 147
    :cond_1
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_2

    aget-object v1, p0, v0

    aget-object v3, p1, v0

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    aget-object v1, p0, v0

    .line 148
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_4

    aget-object v1, p0, v0

    aget-object v3, p1, v0

    .line 150
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lorg/mockito/internal/util/Primitives;->primitiveTypeOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    .line 149
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 151
    :cond_3
    return v2

    .line 142
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    .end local v0    # "i":I
    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method private varargs withParams(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 43
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 45
    .local v0, "matchingConstructors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Constructor<*>;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 46
    .local v5, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 47
    .local v6, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {v6, p2}, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->paramsMatch([Ljava/lang/Class;[Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 48
    invoke-direct {p0, v0, v5}, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->evaluateConstructor(Ljava/util/List;Ljava/lang/reflect/Constructor;)V

    .line 45
    .end local v5    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v6    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 52
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 53
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    invoke-static {v1, p2}, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->invokeConstructor(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 57
    :cond_2
    nop

    .line 58
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 59
    invoke-direct {p0, p1}, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->noMatchingConstructor(Ljava/lang/Class;)Lorg/mockito/creation/instance/InstantiationException;

    move-result-object v1

    throw v1

    .line 61
    :cond_3
    invoke-direct {p0, p1, v0}, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->multipleMatchingConstructors(Ljava/lang/Class;Ljava/util/List;)Lorg/mockito/creation/instance/InstantiationException;

    move-result-object v1

    throw v1

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, p1, v1}, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->paramsException(Ljava/lang/Class;Ljava/lang/Exception;)Lorg/mockito/creation/instance/InstantiationException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 39
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->constructorArgs:[Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->withParams(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
