.class public Lorg/mockito/internal/invocation/SerializableMethod;
.super Ljava/lang/Object;
.source "SerializableMethod.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/mockito/internal/invocation/MockitoMethod;


# static fields
.field private static final serialVersionUID:J = 0x5358375a84605cbdL


# instance fields
.field private final declaringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final exceptionTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final isAbstract:Z

.field private final isVarArgs:Z

.field private volatile transient method:Ljava/lang/reflect/Method;

.field private final methodName:Ljava/lang/String;

.field private final parameterTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final returnType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/mockito/internal/invocation/SerializableMethod;->method:Ljava/lang/reflect/Method;

    .line 31
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->declaringClass:Ljava/lang/Class;

    .line 32
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->methodName:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/internal/creation/SuspendMethod;->trimSuspendParameterTypes([Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->parameterTypes:[Ljava/lang/Class;

    .line 34
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->returnType:Ljava/lang/Class;

    .line 35
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->exceptionTypes:[Ljava/lang/Class;

    .line 36
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v0

    iput-boolean v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->isVarArgs:Z

    .line 37
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->isAbstract:Z

    .line 38
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 102
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 103
    return v0

    .line 105
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 106
    return v1

    .line 108
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 109
    return v1

    .line 111
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/mockito/internal/invocation/SerializableMethod;

    .line 112
    .local v2, "other":Lorg/mockito/internal/invocation/SerializableMethod;
    iget-object v3, p0, Lorg/mockito/internal/invocation/SerializableMethod;->declaringClass:Ljava/lang/Class;

    if-nez v3, :cond_3

    .line 113
    iget-object v3, v2, Lorg/mockito/internal/invocation/SerializableMethod;->declaringClass:Ljava/lang/Class;

    if-eqz v3, :cond_4

    .line 114
    return v1

    .line 116
    :cond_3
    iget-object v4, v2, Lorg/mockito/internal/invocation/SerializableMethod;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 117
    return v1

    .line 119
    :cond_4
    iget-object v3, p0, Lorg/mockito/internal/invocation/SerializableMethod;->methodName:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 120
    iget-object v3, v2, Lorg/mockito/internal/invocation/SerializableMethod;->methodName:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 121
    return v1

    .line 123
    :cond_5
    iget-object v4, v2, Lorg/mockito/internal/invocation/SerializableMethod;->methodName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 124
    return v1

    .line 126
    :cond_6
    iget-object v3, p0, Lorg/mockito/internal/invocation/SerializableMethod;->parameterTypes:[Ljava/lang/Class;

    iget-object v4, v2, Lorg/mockito/internal/invocation/SerializableMethod;->parameterTypes:[Ljava/lang/Class;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 127
    return v1

    .line 129
    :cond_7
    iget-object v3, p0, Lorg/mockito/internal/invocation/SerializableMethod;->returnType:Ljava/lang/Class;

    if-nez v3, :cond_8

    .line 130
    iget-object v3, v2, Lorg/mockito/internal/invocation/SerializableMethod;->returnType:Ljava/lang/Class;

    if-eqz v3, :cond_9

    .line 131
    return v1

    .line 133
    :cond_8
    iget-object v4, v2, Lorg/mockito/internal/invocation/SerializableMethod;->returnType:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 134
    return v1

    .line 136
    :cond_9
    return v0
.end method

.method public getExceptionTypes()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->exceptionTypes:[Ljava/lang/Class;

    return-object v0
.end method

.method public getJavaMethod()Ljava/lang/reflect/Method;
    .locals 3

    .line 72
    iget-object v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->method:Ljava/lang/reflect/Method;

    return-object v0

    .line 76
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->declaringClass:Ljava/lang/Class;

    iget-object v1, p0, Lorg/mockito/internal/invocation/SerializableMethod;->methodName:Ljava/lang/String;

    iget-object v2, p0, Lorg/mockito/internal/invocation/SerializableMethod;->parameterTypes:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->method:Ljava/lang/reflect/Method;

    .line 77
    iget-object v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->method:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    iget-object v1, p0, Lorg/mockito/internal/invocation/SerializableMethod;->declaringClass:Ljava/lang/Class;

    iget-object v2, p0, Lorg/mockito/internal/invocation/SerializableMethod;->methodName:Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 87
    const-string v2, "The method %1$s.%2$s does not exists and you should not get to this point.\nPlease report this as a defect with an example of how to reproduce it."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Lorg/mockito/exceptions/base/MockitoException;

    invoke-direct {v2, v1, v0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 78
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    .end local v1    # "message":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v1, p0, Lorg/mockito/internal/invocation/SerializableMethod;->declaringClass:Ljava/lang/Class;

    iget-object v2, p0, Lorg/mockito/internal/invocation/SerializableMethod;->methodName:Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 80
    const-string v2, "The method %1$s.%2$s is probably private or protected and cannot be mocked.\nPlease report this as a defect with an example of how to reproduce it."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .restart local v1    # "message":Ljava/lang/String;
    new-instance v2, Lorg/mockito/exceptions/base/MockitoException;

    invoke-direct {v2, v1, v0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->methodName:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterTypes()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->parameterTypes:[Ljava/lang/Class;

    return-object v0
.end method

.method public getReturnType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->returnType:Ljava/lang/Class;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public isAbstract()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->isAbstract:Z

    return v0
.end method

.method public isVarArgs()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->isVarArgs:Z

    return v0
.end method
