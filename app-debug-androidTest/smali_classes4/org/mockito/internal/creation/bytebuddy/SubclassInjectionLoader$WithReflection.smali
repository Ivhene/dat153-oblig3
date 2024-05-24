.class Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader$WithReflection;
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
    name = "WithReflection"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader$1;

    .line 56
    invoke-direct {p0}, Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader$WithReflection;-><init>()V

    return-void
.end method


# virtual methods
.method public isDisrespectingOpenness()Z
    .locals 1

    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public resolveStrategy(Ljava/lang/Class;Ljava/lang/ClassLoader;Z)Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;
    .locals 2
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

    .line 66
    .local p1, "mockedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;->INJECTION:Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;

    .line 67
    if-eqz p3, :cond_0

    .line 68
    invoke-virtual {p1}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v1

    goto :goto_0

    .line 69
    :cond_0
    const-class v1, Lorg/mockito/codegen/InjectionBase;

    invoke-virtual {v1}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v1

    .line 66
    :goto_0
    invoke-virtual {v0, v1}, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;->with(Ljava/security/ProtectionDomain;)Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;

    move-result-object v0

    return-object v0
.end method
