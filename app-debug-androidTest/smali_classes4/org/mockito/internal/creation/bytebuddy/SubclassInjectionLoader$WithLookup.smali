.class Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader$WithLookup;
.super Ljava/lang/Object;
.source "SubclassInjectionLoader.java"

# interfaces
.implements Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WithLookup"
.end annotation


# instance fields
.field private final codegenLookup:Ljava/lang/Object;

.field private final lookup:Ljava/lang/Object;

.field private final privateLookupIn:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 0
    .param p1, "lookup"    # Ljava/lang/Object;
    .param p2, "codegenLookup"    # Ljava/lang/Object;
    .param p3, "privateLookupIn"    # Ljava/lang/reflect/Method;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader$WithLookup;->lookup:Ljava/lang/Object;

    .line 83
    iput-object p2, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader$WithLookup;->codegenLookup:Ljava/lang/Object;

    .line 84
    iput-object p3, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader$WithLookup;->privateLookupIn:Ljava/lang/reflect/Method;

    .line 85
    return-void
.end method


# virtual methods
.method public isDisrespectingOpenness()Z
    .locals 1

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public resolveStrategy(Ljava/lang/Class;Ljava/lang/ClassLoader;Z)Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;
    .locals 6
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p3, "localMock"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/ClassLoader;",
            "Z)",
            "Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation

    .line 95
    .local p1, "mockedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p3, :cond_1

    .line 99
    :try_start_0
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader$WithLookup;->privateLookupIn:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object v2, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader$WithLookup;->lookup:Ljava/lang/Object;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .local v0, "privateLookup":Ljava/lang/Object;
    nop

    .line 108
    :try_start_1
    invoke-static {v0}, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$UsingLookup;->of(Ljava/lang/Object;)Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;

    move-result-object v1

    return-object v1

    .line 109
    .end local v0    # "privateLookup":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "exception":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/IllegalAccessException;

    if-eqz v1, :cond_0

    .line 102
    sget-object v1, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;->WRAPPER:Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;

    .line 103
    invoke-virtual {p1}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v2

    .line 102
    invoke-virtual {v1, v2}, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;->with(Ljava/security/ProtectionDomain;)Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;

    move-result-object v1

    return-object v1

    .line 105
    :cond_0
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .end local p1    # "mockedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p2    # "classLoader":Ljava/lang/ClassLoader;
    .end local p3    # "localMock":Z
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    .local v0, "exception":Ljava/lang/Throwable;
    .restart local p1    # "mockedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p2    # "classLoader":Ljava/lang/ClassLoader;
    .restart local p3    # "localMock":Z
    :goto_0
    new-instance v1, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The Java module system prevents Mockito from defining a mock class in the same package as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "To overcome this, you must open and export the mocked type to Mockito."

    const-string v4, "Remember that you can also do so programmatically if the mocked class is defined by the same module as your test code"

    const-string v5, ""

    filled-new-array {v2, v5, v3, v4, v0}, [Ljava/lang/Object;

    move-result-object v2

    .line 111
    invoke-static {v2}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    .end local v0    # "exception":Ljava/lang/Throwable;
    :cond_1
    const-class v0, Lorg/mockito/codegen/InjectionBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-ne p2, v0, :cond_2

    .line 120
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader$WithLookup;->codegenLookup:Ljava/lang/Object;

    invoke-static {v0}, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$UsingLookup;->of(Ljava/lang/Object;)Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;

    move-result-object v0

    return-object v0

    .line 122
    :cond_2
    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;->WRAPPER:Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;

    invoke-virtual {p1}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;->with(Ljava/security/ProtectionDomain;)Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;

    move-result-object v0

    return-object v0
.end method
