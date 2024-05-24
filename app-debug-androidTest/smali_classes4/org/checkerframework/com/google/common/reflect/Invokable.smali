.class public abstract Lorg/checkerframework/com/google/common/reflect/Invokable;
.super Lorg/checkerframework/com/google/common/reflect/Element;
.source "Invokable.java"

# interfaces
.implements Ljava/lang/reflect/GenericDeclaration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable;,
        Lorg/checkerframework/com/google/common/reflect/Invokable$MethodInvokable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/reflect/Element;",
        "Ljava/lang/reflect/GenericDeclaration;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/reflect/AccessibleObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Ljava/lang/reflect/AccessibleObject;",
            ":",
            "Ljava/lang/reflect/Member;",
            ">(TM;)V"
        }
    .end annotation

    .line 62
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/Invokable;, "Lorg/checkerframework/com/google/common/reflect/Invokable<TT;TR;>;"
    .local p1, "member":Ljava/lang/reflect/AccessibleObject;, "TM;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/reflect/Element;-><init>(Ljava/lang/reflect/AccessibleObject;)V

    .line 63
    return-void
.end method

.method public static from(Ljava/lang/reflect/Constructor;)Lorg/checkerframework/com/google/common/reflect/Invokable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;)",
            "Lorg/checkerframework/com/google/common/reflect/Invokable<",
            "TT;TT;>;"
        }
    .end annotation

    .line 72
    .local p0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable;-><init>(Ljava/lang/reflect/Constructor;)V

    return-object v0
.end method

.method public static from(Ljava/lang/reflect/Method;)Lorg/checkerframework/com/google/common/reflect/Invokable;
    .locals 1
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lorg/checkerframework/com/google/common/reflect/Invokable<",
            "*",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v0, Lorg/checkerframework/com/google/common/reflect/Invokable$MethodInvokable;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/reflect/Invokable$MethodInvokable;-><init>(Ljava/lang/reflect/Method;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    .line 58
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/Invokable;, "Lorg/checkerframework/com/google/common/reflect/Invokable<TT;TR;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/reflect/Element;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method abstract getAnnotatedParameterTypes()[Ljava/lang/reflect/AnnotatedType;
.end method

.method public abstract getAnnotatedReturnType()Ljava/lang/reflect/AnnotatedType;
.end method

.method public final getDeclaringClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "-TT;>;"
        }
    .end annotation

    .line 169
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/Invokable;, "Lorg/checkerframework/com/google/common/reflect/Invokable<TT;TR;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/reflect/Element;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final getExceptionTypes()Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "+",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation

    .line 132
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/Invokable;, "Lorg/checkerframework/com/google/common/reflect/Invokable<TT;TR;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->builder()Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 133
    .local v0, "builder":Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder<Lorg/checkerframework/com/google/common/reflect/TypeToken<+Ljava/lang/Throwable;>;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/Invokable;->getGenericExceptionTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 136
    .local v4, "type":Ljava/lang/reflect/Type;
    nop

    .line 137
    invoke-static {v4}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v5

    .line 138
    .local v5, "exceptionType":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<+Ljava/lang/Throwable;>;"
    invoke-virtual {v0, v5}, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;

    .line 133
    .end local v4    # "type":Ljava/lang/reflect/Type;
    .end local v5    # "exceptionType":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<+Ljava/lang/Throwable;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1
.end method

.method abstract getGenericExceptionTypes()[Ljava/lang/reflect/Type;
.end method

.method abstract getGenericParameterTypes()[Ljava/lang/reflect/Type;
.end method

.method abstract getGenericReturnType()Ljava/lang/reflect/Type;
.end method

.method public getOwnerType()Lorg/checkerframework/com/google/common/reflect/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "TT;>;"
        }
    .end annotation

    .line 177
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/Invokable;, "Lorg/checkerframework/com/google/common/reflect/Invokable<TT;TR;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/Invokable;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v0

    return-object v0
.end method

.method abstract getParameterAnnotations()[[Ljava/lang/annotation/Annotation;
.end method

.method public final getParameters()Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "Lorg/checkerframework/com/google/common/reflect/Parameter;",
            ">;"
        }
    .end annotation

    .line 118
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/Invokable;, "Lorg/checkerframework/com/google/common/reflect/Invokable<TT;TR;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/Invokable;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 119
    .local v0, "parameterTypes":[Ljava/lang/reflect/Type;
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/Invokable;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 120
    .local v1, "annotations":[[Ljava/lang/annotation/Annotation;
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/Invokable;->getAnnotatedParameterTypes()[Ljava/lang/reflect/AnnotatedType;

    move-result-object v2

    .line 121
    .local v2, "annotatedTypes":[Ljava/lang/reflect/AnnotatedType;
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->builder()Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;

    move-result-object v3

    .line 122
    .local v3, "builder":Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder<Lorg/checkerframework/com/google/common/reflect/Parameter;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_0

    .line 123
    new-instance v11, Lorg/checkerframework/com/google/common/reflect/Parameter;

    aget-object v5, v0, v4

    .line 125
    invoke-static {v5}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v8

    aget-object v9, v1, v4

    aget-object v10, v2, v4

    move-object v5, v11

    move-object v6, p0

    move v7, v4

    invoke-direct/range {v5 .. v10}, Lorg/checkerframework/com/google/common/reflect/Parameter;-><init>(Lorg/checkerframework/com/google/common/reflect/Invokable;ILorg/checkerframework/com/google/common/reflect/TypeToken;[Ljava/lang/annotation/Annotation;Ljava/lang/reflect/AnnotatedType;)V

    .line 123
    invoke-virtual {v3, v11}, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;

    .line 122
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 127
    .end local v4    # "i":I
    :cond_0
    invoke-virtual {v3}, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v4

    return-object v4
.end method

.method public final getReturnType()Lorg/checkerframework/com/google/common/reflect/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "+TR;>;"
        }
    .end annotation

    .line 109
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/Invokable;, "Lorg/checkerframework/com/google/common/reflect/Invokable<TT;TR;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/Invokable;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .line 58
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/Invokable;, "Lorg/checkerframework/com/google/common/reflect/Invokable<TT;TR;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/reflect/Element;->hashCode()I

    move-result v0

    return v0
.end method

.method public final varargs invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 102
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/Invokable;, "Lorg/checkerframework/com/google/common/reflect/Invokable<TT;TR;>;"
    .local p1, "receiver":Ljava/lang/Object;, "TT;"
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/google/common/reflect/Invokable;->invokeInternal(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method abstract invokeInternal(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method public abstract isOverridable()Z
.end method

.method public abstract isVarArgs()Z
.end method

.method public final returning(Ljava/lang/Class;)Lorg/checkerframework/com/google/common/reflect/Invokable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R1:TR;>(",
            "Ljava/lang/Class<",
            "TR1;>;)",
            "Lorg/checkerframework/com/google/common/reflect/Invokable<",
            "TT;TR1;>;"
        }
    .end annotation

    .line 152
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/Invokable;, "Lorg/checkerframework/com/google/common/reflect/Invokable<TT;TR;>;"
    .local p1, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<TR1;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/reflect/Invokable;->returning(Lorg/checkerframework/com/google/common/reflect/TypeToken;)Lorg/checkerframework/com/google/common/reflect/Invokable;

    move-result-object v0

    return-object v0
.end method

.method public final returning(Lorg/checkerframework/com/google/common/reflect/TypeToken;)Lorg/checkerframework/com/google/common/reflect/Invokable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R1:TR;>(",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "TR1;>;)",
            "Lorg/checkerframework/com/google/common/reflect/Invokable<",
            "TT;TR1;>;"
        }
    .end annotation

    .line 157
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/Invokable;, "Lorg/checkerframework/com/google/common/reflect/Invokable<TT;TR;>;"
    .local p1, "returnType":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<TR1;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/Invokable;->getReturnType()Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->isSupertypeOf(Lorg/checkerframework/com/google/common/reflect/TypeToken;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    move-object v0, p0

    .line 163
    .local v0, "specialized":Lorg/checkerframework/com/google/common/reflect/Invokable;, "Lorg/checkerframework/com/google/common/reflect/Invokable<TT;TR1;>;"
    return-object v0

    .line 158
    .end local v0    # "specialized":Lorg/checkerframework/com/google/common/reflect/Invokable;, "Lorg/checkerframework/com/google/common/reflect/Invokable<TT;TR1;>;"
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invokable is known to return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 159
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/Invokable;->getReturnType()Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 58
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/Invokable;, "Lorg/checkerframework/com/google/common/reflect/Invokable<TT;TR;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/reflect/Element;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
