.class Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable;
.super Lorg/checkerframework/com/google/common/reflect/Invokable;
.source "Invokable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/reflect/Invokable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConstructorInvokable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/reflect/Invokable<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/reflect/Constructor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)V"
        }
    .end annotation

    .line 265
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable;, "Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable<TT;>;"
    .local p1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/reflect/Invokable;-><init>(Ljava/lang/reflect/AccessibleObject;)V

    .line 266
    iput-object p1, p0, Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable;->constructor:Ljava/lang/reflect/Constructor;

    .line 267
    return-void
.end method

.method private mayNeedHiddenThis()Z
    .locals 4

    .line 360
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable;, "Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 361
    .local v0, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 363
    return v2

    .line 365
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 366
    .local v1, "enclosingMethod":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_1

    .line 368
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    xor-int/2addr v2, v3

    return v2

    .line 376
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 377
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 376
    :goto_0
    return v2
.end method


# virtual methods
.method getAnnotatedParameterTypes()[Ljava/lang/reflect/AnnotatedType;
    .locals 1

    .line 310
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable;, "Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getAnnotatedParameterTypes()[Ljava/lang/reflect/AnnotatedType;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotatedReturnType()Ljava/lang/reflect/AnnotatedType;
    .locals 1

    .line 315
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable;, "Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getAnnotatedReturnType()Ljava/lang/reflect/AnnotatedType;

    move-result-object v0

    return-object v0
.end method

.method getGenericExceptionTypes()[Ljava/lang/reflect/Type;
    .locals 1

    .line 320
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable;, "Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getGenericExceptionTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method getGenericParameterTypes()[Ljava/lang/reflect/Type;
    .locals 4

    .line 296
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable;, "Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 297
    .local v0, "types":[Ljava/lang/reflect/Type;
    array-length v1, v0

    if-lez v1, :cond_0

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable;->mayNeedHiddenThis()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    iget-object v1, p0, Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 299
    .local v1, "rawParamTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v2, v0

    array-length v3, v1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 300
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 302
    const/4 v2, 0x1

    array-length v3, v0

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Type;

    return-object v2

    .line 305
    .end local v1    # "rawParamTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    return-object v0
.end method

.method getGenericReturnType()Ljava/lang/reflect/Type;
    .locals 3

    .line 285
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable;, "Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable<TT;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 286
    .local v0, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    .line 287
    .local v1, "typeParams":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    array-length v2, v1

    if-lez v2, :cond_0

    .line 288
    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/reflect/Types;->newParameterizedType(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v2

    return-object v2

    .line 290
    :cond_0
    return-object v0
.end method

.method final getParameterAnnotations()[[Ljava/lang/annotation/Annotation;
    .locals 1

    .line 325
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable;, "Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public final getTypeParameters()[Ljava/lang/reflect/TypeVariable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;"
        }
    .end annotation

    .line 339
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable;, "Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable<TT;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    .line 340
    .local v0, "declaredByClass":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    .line 341
    .local v1, "declaredByConstructor":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/reflect/TypeVariable;

    .line 343
    .local v2, "result":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 344
    array-length v3, v0

    array-length v5, v1

    invoke-static {v1, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    return-object v2
.end method

.method final invokeInternal(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 273
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable;, "Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable<TT;>;"
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final isOverridable()Z
    .locals 1

    .line 351
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable;, "Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final isVarArgs()Z
    .locals 1

    .line 356
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable;, "Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->isVarArgs()Z

    move-result v0

    return v0
.end method
