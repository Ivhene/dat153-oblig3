.class public Lorg/mockito/internal/creation/DelegatingMethod;
.super Ljava/lang/Object;
.source "DelegatingMethod.java"

# interfaces
.implements Lorg/mockito/internal/invocation/MockitoMethod;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final method:Ljava/lang/reflect/Method;

.field private final parameterTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 2
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    if-eqz p1, :cond_0

    .line 19
    iput-object p1, p0, Lorg/mockito/internal/creation/DelegatingMethod;->method:Ljava/lang/reflect/Method;

    .line 20
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/internal/creation/SuspendMethod;->trimSuspendParameterTypes([Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/creation/DelegatingMethod;->parameterTypes:[Ljava/lang/Class;

    .line 21
    return-void

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Method cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 64
    if-ne p0, p1, :cond_0

    .line 65
    const/4 v0, 0x1

    return v0

    .line 67
    :cond_0
    instance-of v0, p1, Lorg/mockito/internal/creation/DelegatingMethod;

    if-eqz v0, :cond_1

    .line 68
    move-object v0, p1

    check-cast v0, Lorg/mockito/internal/creation/DelegatingMethod;

    .line 69
    .local v0, "that":Lorg/mockito/internal/creation/DelegatingMethod;
    iget-object v1, p0, Lorg/mockito/internal/creation/DelegatingMethod;->method:Ljava/lang/reflect/Method;

    iget-object v2, v0, Lorg/mockito/internal/creation/DelegatingMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 71
    .end local v0    # "that":Lorg/mockito/internal/creation/DelegatingMethod;
    :cond_1
    iget-object v0, p0, Lorg/mockito/internal/creation/DelegatingMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    .line 25
    iget-object v0, p0, Lorg/mockito/internal/creation/DelegatingMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getJavaMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/mockito/internal/creation/DelegatingMethod;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/mockito/internal/creation/DelegatingMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

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

    .line 40
    iget-object v0, p0, Lorg/mockito/internal/creation/DelegatingMethod;->parameterTypes:[Ljava/lang/Class;

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

    .line 45
    iget-object v0, p0, Lorg/mockito/internal/creation/DelegatingMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/mockito/internal/creation/DelegatingMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAbstract()Z
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/mockito/internal/creation/DelegatingMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVarArgs()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/mockito/internal/creation/DelegatingMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v0

    return v0
.end method
