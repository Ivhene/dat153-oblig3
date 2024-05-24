.class Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;
.super Ljava/lang/Object;
.source "SubclassBytecodeGenerator.java"

# interfaces
.implements Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;


# static fields
.field private static final CODEGEN_PACKAGE:Ljava/lang/String; = "org.mockito.codegen."


# instance fields
.field private final byteBuddy:Lnet/bytebuddy/ByteBuddy;

.field private final dispatcher:Lnet/bytebuddy/implementation/Implementation;

.field private final equals:Lnet/bytebuddy/implementation/Implementation;

.field private final handler:Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;

.field private final hashCode:Lnet/bytebuddy/implementation/Implementation;

.field private final loader:Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;

.field private final matcher:Lnet/bytebuddy/matcher/ElementMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final random:Ljava/util/Random;

.field private final readReplace:Lnet/bytebuddy/implementation/Implementation;

.field private final writeReplace:Lnet/bytebuddy/implementation/Implementation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    new-instance v0, Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader;

    invoke-direct {v0}, Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader;-><init>()V

    invoke-direct {p0, v0}, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;-><init>(Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/implementation/Implementation;Lnet/bytebuddy/matcher/ElementMatcher;)V
    .locals 1
    .param p1, "readReplace"    # Lnet/bytebuddy/implementation/Implementation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/Implementation;",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;)V"
        }
    .end annotation

    .line 79
    .local p2, "matcher":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-Lnet/bytebuddy/description/method/MethodDescription;>;"
    new-instance v0, Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader;

    invoke-direct {v0}, Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;-><init>(Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;Lnet/bytebuddy/implementation/Implementation;Lnet/bytebuddy/matcher/ElementMatcher;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;)V
    .locals 2
    .param p1, "loader"    # Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;

    .line 74
    const/4 v0, 0x0

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->any()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;-><init>(Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;Lnet/bytebuddy/implementation/Implementation;Lnet/bytebuddy/matcher/ElementMatcher;)V

    .line 75
    return-void
.end method

.method protected constructor <init>(Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;Lnet/bytebuddy/implementation/Implementation;Lnet/bytebuddy/matcher/ElementMatcher;)V
    .locals 2
    .param p1, "loader"    # Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;
    .param p2, "readReplace"    # Lnet/bytebuddy/implementation/Implementation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;",
            "Lnet/bytebuddy/implementation/Implementation;",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;)V"
        }
    .end annotation

    .line 85
    .local p3, "matcher":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-Lnet/bytebuddy/description/method/MethodDescription;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-class v0, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor$DispatcherDefaultingToRealMethod;

    invoke-static {v0}, Lnet/bytebuddy/implementation/MethodDelegation;->to(Ljava/lang/Class;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->dispatcher:Lnet/bytebuddy/implementation/Implementation;

    .line 65
    const-class v0, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor$ForHashCode;

    invoke-static {v0}, Lnet/bytebuddy/implementation/MethodDelegation;->to(Ljava/lang/Class;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->hashCode:Lnet/bytebuddy/implementation/Implementation;

    .line 66
    const-class v0, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor$ForEquals;

    invoke-static {v0}, Lnet/bytebuddy/implementation/MethodDelegation;->to(Ljava/lang/Class;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->equals:Lnet/bytebuddy/implementation/Implementation;

    .line 67
    const-class v0, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor$ForWriteReplace;

    invoke-static {v0}, Lnet/bytebuddy/implementation/MethodDelegation;->to(Ljava/lang/Class;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->writeReplace:Lnet/bytebuddy/implementation/Implementation;

    .line 86
    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->loader:Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;

    .line 87
    iput-object p2, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->readReplace:Lnet/bytebuddy/implementation/Implementation;

    .line 88
    iput-object p3, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    .line 89
    new-instance v0, Lnet/bytebuddy/ByteBuddy;

    invoke-direct {v0}, Lnet/bytebuddy/ByteBuddy;-><init>()V

    sget-object v1, Lnet/bytebuddy/dynamic/scaffold/TypeValidation;->DISABLED:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/ByteBuddy;->with(Lnet/bytebuddy/dynamic/scaffold/TypeValidation;)Lnet/bytebuddy/ByteBuddy;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->byteBuddy:Lnet/bytebuddy/ByteBuddy;

    .line 90
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->random:Ljava/util/Random;

    .line 91
    invoke-static {v0, p1, v1}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;->make(Lnet/bytebuddy/ByteBuddy;Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;Ljava/util/Random;)Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->handler:Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;

    .line 92
    return-void
.end method

.method private static assertVisibility(Ljava/lang/Class;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 313
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    return-void

    .line 314
    :cond_0
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create mock for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, "The type is not public and its mock class is loaded by a different class loader."

    const-string v5, "This can have multiple reasons:"

    const-string v6, " - You are mocking a class with additional interfaces of another class loader"

    const-string v7, " - Mockito is loaded by a different class loader than the mocked type (e.g. with OSGi)"

    const-string v8, " - The thread\'s context class loader is different than the mock\'s class loader"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object v1

    .line 315
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAllTypes(Ljava/lang/Class;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Collection<",
            "Ljava/lang/Class<",
            "-TT;>;>;"
        }
    .end annotation

    .line 286
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 287
    .local v0, "supertypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Class<-TT;>;>;"
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 288
    move-object v1, p1

    .line 289
    .local v1, "superType":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    :goto_0
    if-eqz v1, :cond_0

    .line 290
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 293
    :cond_0
    return-object v0
.end method

.method private static hasNonPublicTypeReference(Ljava/lang/Class;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 117
    .local p0, "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 118
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_0

    .line 119
    return v6

    .line 121
    :cond_0
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v7, v5

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_2

    aget-object v9, v5, v8

    .line 122
    .local v9, "param":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v9}, Ljava/lang/Class;->getModifiers()I

    move-result v10

    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v10

    if-nez v10, :cond_1

    .line 123
    return v6

    .line 121
    .end local v9    # "param":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 117
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 127
    :cond_3
    return v2
.end method

.method private isComingFromJDK(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 305
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getImplementationTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Java Runtime Environment"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 308
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 309
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "javax."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 305
    :goto_1
    return v0
.end method

.method private static isGroovyMethod()Lnet/bytebuddy/matcher/ElementMatcher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;"
        }
    .end annotation

    .line 297
    const-string v0, "groovy.lang.GroovyObjectSupport"

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->isDeclaredBy(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    .line 298
    const-string v1, "groovy.transform.Internal"

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->isAnnotatedWith(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    .line 297
    return-object v0
.end method

.method private static needsSamePackageClassLoader(Lorg/mockito/internal/creation/bytebuddy/MockFeatures;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/internal/creation/bytebuddy/MockFeatures<",
            "*>;)Z"
        }
    .end annotation

    .line 95
    .local p0, "features":Lorg/mockito/internal/creation/bytebuddy/MockFeatures;, "Lorg/mockito/internal/creation/bytebuddy/MockFeatures<*>;"
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    .line 96
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 101
    :cond_0
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    invoke-static {v0}, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->hasNonPublicTypeReference(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    return v1

    .line 105
    :cond_1
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->interfaces:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 106
    .local v2, "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 107
    return v1

    .line 109
    :cond_2
    invoke-static {v2}, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->hasNonPublicTypeReference(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 110
    return v1

    .line 112
    .end local v2    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    goto :goto_0

    .line 113
    :cond_4
    const/4 v0, 0x0

    return v0

    .line 99
    :cond_5
    :goto_1
    return v1
.end method


# virtual methods
.method public mockClass(Lorg/mockito/internal/creation/bytebuddy/MockFeatures;)Ljava/lang/Class;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/internal/creation/bytebuddy/MockFeatures<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "+TT;>;"
        }
    .end annotation

    .line 132
    .local p1, "features":Lorg/mockito/internal/creation/bytebuddy/MockFeatures;, "Lorg/mockito/internal/creation/bytebuddy/MockFeatures<TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    invoke-direct {v2}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;-><init>()V

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    iget-object v5, v1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 134
    invoke-virtual {v2, v4}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->appendMostSpecific([Ljava/lang/Class;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    move-result-object v2

    iget-object v4, v1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->interfaces:Ljava/util/Set;

    .line 135
    invoke-virtual {v2, v4}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->appendMostSpecific(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    move-result-object v2

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v7, Lorg/mockito/internal/creation/bytebuddy/MockAccess;

    aput-object v7, v5, v6

    const-class v7, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor$DispatcherDefaultingToRealMethod;

    aput-object v7, v5, v3

    .line 136
    invoke-virtual {v2, v5}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->appendMostSpecific([Ljava/lang/Class;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    move-result-object v2

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const-class v7, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;

    aput-object v7, v5, v6

    const-class v7, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor$ForHashCode;

    aput-object v7, v5, v3

    const-class v7, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor$ForEquals;

    aput-object v7, v5, v4

    .line 138
    invoke-virtual {v2, v5}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->appendMostSpecific([Ljava/lang/Class;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    move-result-object v2

    .line 142
    .local v2, "loaderBuilder":Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 143
    .local v5, "contextLoader":Ljava/lang/ClassLoader;
    const/4 v7, 0x1

    .line 144
    .local v7, "shouldIncludeContextLoader":Z
    invoke-static/range {p1 .. p1}, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->needsSamePackageClassLoader(Lorg/mockito/internal/creation/bytebuddy/MockFeatures;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 150
    invoke-virtual {v2}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->build()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 151
    .local v8, "candidateLoader":Ljava/lang/ClassLoader;
    move-object v9, v5

    .local v9, "parent":Ljava/lang/ClassLoader;
    :goto_0
    if-eqz v9, :cond_1

    .line 152
    if-ne v9, v8, :cond_0

    .line 153
    const/4 v7, 0x0

    .line 154
    goto :goto_1

    .line 151
    :cond_0
    invoke-virtual {v9}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v9

    goto :goto_0

    .line 158
    .end local v8    # "candidateLoader":Ljava/lang/ClassLoader;
    .end local v9    # "parent":Ljava/lang/ClassLoader;
    :cond_1
    :goto_1
    if-eqz v7, :cond_2

    .line 159
    new-array v8, v3, [Ljava/lang/ClassLoader;

    aput-object v5, v8, v6

    invoke-virtual {v2, v8}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->appendMostSpecific([Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    move-result-object v2

    .line 161
    :cond_2
    invoke-virtual {v2}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->build()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 170
    .local v8, "classLoader":Ljava/lang/ClassLoader;
    iget-object v9, v1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    .line 171
    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    if-ne v8, v9, :cond_4

    iget-object v9, v1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->serializableMode:Lorg/mockito/mock/SerializableMode;

    sget-object v10, Lorg/mockito/mock/SerializableMode;->ACROSS_CLASSLOADERS:Lorg/mockito/mock/SerializableMode;

    if-eq v9, v10, :cond_4

    iget-object v9, v1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    .line 173
    invoke-direct {v0, v9}, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->isComingFromJDK(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, v0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->loader:Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;

    .line 174
    invoke-interface {v9}, Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;->isDisrespectingOpenness()Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, v0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->handler:Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;

    iget-object v10, v1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    const-class v11, Lorg/mockito/internal/creation/bytebuddy/MockAccess;

    .line 175
    invoke-virtual {v9, v10, v11}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;->isOpened(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    move v9, v3

    goto :goto_2

    :cond_4
    move v9, v6

    .line 177
    .local v9, "localMock":Z
    :goto_2
    if-nez v9, :cond_6

    iget-object v10, v0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->loader:Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;

    instance-of v10, v10, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader;

    if-eqz v10, :cond_5

    iget-object v10, v1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    .line 179
    invoke-direct {v0, v10}, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->isComingFromJDK(Ljava/lang/Class;)Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_3

    .line 182
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-class v11, Lorg/mockito/codegen/InjectionBase;

    .line 183
    invoke-virtual {v11}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    .line 185
    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .local v10, "typeName":Ljava/lang/String;
    goto :goto_4

    .line 180
    .end local v10    # "typeName":Ljava/lang/String;
    :cond_6
    :goto_3
    iget-object v10, v1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    .line 187
    .restart local v10    # "typeName":Ljava/lang/String;
    :goto_4
    iget-object v11, v0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->random:Ljava/util/Random;

    .line 188
    invoke-virtual {v11}, Ljava/util/Random;->nextInt()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "MockitoMock"

    filled-new-array {v10, v12, v11}, [Ljava/lang/Object;

    move-result-object v11

    const-string v12, "%s$%s$%d"

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 190
    .local v11, "name":Ljava/lang/String;
    if-eqz v9, :cond_8

    .line 191
    iget-object v12, v0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->handler:Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;

    iget-object v13, v1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    const-class v14, Lorg/mockito/internal/creation/bytebuddy/MockAccess;

    invoke-virtual {v12, v13, v14, v6, v3}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;->adjustModuleGraph(Ljava/lang/Class;Ljava/lang/Class;ZZ)V

    .line 192
    iget-object v12, v1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->interfaces:Ljava/util/Set;

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Class;

    .line 193
    .local v13, "iFace":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v14, v0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->handler:Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;

    iget-object v15, v1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    invoke-virtual {v14, v13, v15, v3, v6}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;->adjustModuleGraph(Ljava/lang/Class;Ljava/lang/Class;ZZ)V

    .line 194
    iget-object v14, v0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->handler:Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;

    iget-object v15, v1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    invoke-virtual {v14, v15, v13, v6, v3}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;->adjustModuleGraph(Ljava/lang/Class;Ljava/lang/Class;ZZ)V

    .line 195
    .end local v13    # "iFace":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_5

    :cond_7
    move-object/from16 v16, v2

    goto/16 :goto_9

    .line 197
    :cond_8
    iget-object v12, v0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->handler:Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;

    iget-object v13, v1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    invoke-virtual {v12, v13}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;->isExported(Ljava/lang/Class;)Z

    move-result v12

    .line 198
    .local v12, "exported":Z
    iget-object v13, v1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->interfaces:Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 199
    .local v13, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Class<*>;>;"
    :goto_6
    if-eqz v12, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 200
    iget-object v14, v0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->handler:Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Class;

    invoke-virtual {v14, v15}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;->isExported(Ljava/lang/Class;)Z

    move-result v12

    goto :goto_6

    .line 207
    :cond_9
    if-eqz v12, :cond_b

    .line 208
    iget-object v14, v1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    invoke-static {v14}, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->assertVisibility(Ljava/lang/Class;)V

    .line 209
    iget-object v14, v1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->interfaces:Ljava/util/Set;

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Class;

    .line 210
    .local v15, "iFace":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v15}, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->assertVisibility(Ljava/lang/Class;)V

    .line 211
    .end local v15    # "iFace":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_7

    :cond_a
    move-object/from16 v16, v2

    goto :goto_9

    .line 213
    :cond_b
    iget-object v14, v0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->handler:Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;

    invoke-virtual {v14, v8, v10}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;->injectionBase(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    .line 214
    .local v14, "hook":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v15, v1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    invoke-static {v15}, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->assertVisibility(Ljava/lang/Class;)V

    .line 215
    iget-object v15, v0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->handler:Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;

    iget-object v4, v1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    invoke-virtual {v15, v4, v14, v3, v6}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;->adjustModuleGraph(Ljava/lang/Class;Ljava/lang/Class;ZZ)V

    .line 216
    iget-object v4, v1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->interfaces:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Class;

    .line 217
    .restart local v15    # "iFace":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v15}, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->assertVisibility(Ljava/lang/Class;)V

    .line 218
    move-object/from16 v16, v2

    .end local v2    # "loaderBuilder":Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;
    .local v16, "loaderBuilder":Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;
    iget-object v2, v0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->handler:Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;

    invoke-virtual {v2, v15, v14, v3, v6}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;->adjustModuleGraph(Ljava/lang/Class;Ljava/lang/Class;ZZ)V

    .line 219
    .end local v15    # "iFace":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v2, v16

    goto :goto_8

    .line 216
    .end local v16    # "loaderBuilder":Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;
    .restart local v2    # "loaderBuilder":Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;
    :cond_c
    move-object/from16 v16, v2

    .line 223
    .end local v2    # "loaderBuilder":Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;
    .end local v12    # "exported":Z
    .end local v13    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Class<*>;>;"
    .end local v14    # "hook":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v16    # "loaderBuilder":Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;
    :goto_9
    iget-object v2, v0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->byteBuddy:Lnet/bytebuddy/ByteBuddy;

    iget-object v4, v1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    .line 225
    invoke-virtual {v2, v4}, Lnet/bytebuddy/ByteBuddy;->subclass(Ljava/lang/Class;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v2

    .line 226
    invoke-interface {v2, v11}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->name(Ljava/lang/String;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v2

    .line 227
    invoke-static {}, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->isGroovyMethod()Lnet/bytebuddy/matcher/ElementMatcher;

    move-result-object v4

    invoke-interface {v2, v4}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->ignoreAlso(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v2

    .line 229
    iget-boolean v4, v1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->stripAnnotations:Z

    if-eqz v4, :cond_d

    .line 230
    new-array v4, v6, [Ljava/lang/annotation/Annotation;

    goto :goto_a

    .line 231
    :cond_d
    iget-object v4, v1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v4

    .line 228
    :goto_a
    invoke-interface {v2, v4}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->annotateType([Ljava/lang/annotation/Annotation;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    iget-object v12, v1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->interfaces:Ljava/util/Set;

    invoke-direct {v4, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 232
    invoke-interface {v2, v4}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->implement(Ljava/util/List;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition$Optional;

    move-result-object v2

    iget-object v4, v0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    .line 233
    invoke-interface {v2, v4}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition$Optional;->method(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;

    move-result-object v2

    iget-object v4, v0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->dispatcher:Lnet/bytebuddy/implementation/Implementation;

    .line 234
    invoke-interface {v2, v4}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v2

    new-array v4, v3, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;

    sget-object v12, Lnet/bytebuddy/description/modifier/SynchronizationState;->PLAIN:Lnet/bytebuddy/description/modifier/SynchronizationState;

    aput-object v12, v4, v6

    .line 235
    invoke-static {v4}, Lnet/bytebuddy/dynamic/Transformer$ForMethod;->withModifiers([Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;)Lnet/bytebuddy/dynamic/Transformer;

    move-result-object v4

    invoke-interface {v2, v4}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;->transform(Lnet/bytebuddy/dynamic/Transformer;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;

    move-result-object v2

    .line 237
    iget-boolean v4, v1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->stripAnnotations:Z

    if-eqz v4, :cond_e

    .line 238
    sget-object v4, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$NoOp;->INSTANCE:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$NoOp;

    goto :goto_b

    .line 239
    :cond_e
    sget-object v4, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$ForInstrumentedMethod;->INCLUDING_RECEIVER:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$ForInstrumentedMethod;

    .line 236
    :goto_b
    invoke-interface {v2, v4}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;->attribute(Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;

    move-result-object v2

    .line 240
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isHashCode()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    invoke-interface {v2, v4}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;->method(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;

    move-result-object v2

    iget-object v4, v0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->hashCode:Lnet/bytebuddy/implementation/Implementation;

    .line 241
    invoke-interface {v2, v4}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v2

    .line 242
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isEquals()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    invoke-interface {v2, v4}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;->method(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;

    move-result-object v2

    iget-object v4, v0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->equals:Lnet/bytebuddy/implementation/Implementation;

    .line 243
    invoke-interface {v2, v4}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v2

    .line 244
    const-wide/16 v12, 0x2a

    invoke-interface {v2, v12, v13}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;->serialVersionUid(J)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional;

    move-result-object v2

    const-class v4, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;

    new-array v12, v3, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;

    sget-object v13, Lnet/bytebuddy/description/modifier/Visibility;->PRIVATE:Lnet/bytebuddy/description/modifier/Visibility;

    aput-object v13, v12, v6

    .line 245
    const-string v13, "mockitoInterceptor"

    invoke-interface {v2, v13, v4, v12}, Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional;->defineField(Ljava/lang/String;Ljava/lang/reflect/Type;[Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/reflect/Type;

    const-class v12, Lorg/mockito/internal/creation/bytebuddy/MockAccess;

    aput-object v12, v4, v6

    .line 246
    invoke-interface {v2, v4}, Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable;->implement([Ljava/lang/reflect/Type;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition$Optional;

    move-result-object v2

    .line 247
    invoke-static {}, Lnet/bytebuddy/implementation/FieldAccessor;->ofBeanProperty()Lnet/bytebuddy/implementation/FieldAccessor$OwnerTypeLocatable;

    move-result-object v4

    invoke-interface {v2, v4}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition$Optional;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v2

    .line 248
    .local v2, "builder":Lnet/bytebuddy/dynamic/DynamicType$Builder;, "Lnet/bytebuddy/dynamic/DynamicType$Builder<TT;>;"
    iget-object v4, v1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->serializableMode:Lorg/mockito/mock/SerializableMode;

    sget-object v12, Lorg/mockito/mock/SerializableMode;->ACROSS_CLASSLOADERS:Lorg/mockito/mock/SerializableMode;

    if-ne v4, v12, :cond_f

    .line 249
    new-array v4, v3, [Ljava/lang/reflect/Type;

    const-class v12, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport$CrossClassLoaderSerializableMock;

    aput-object v12, v4, v6

    .line 250
    invoke-interface {v2, v4}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->implement([Ljava/lang/reflect/Type;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition$Optional;

    move-result-object v4

    iget-object v12, v0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->writeReplace:Lnet/bytebuddy/implementation/Implementation;

    .line 251
    invoke-interface {v4, v12}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition$Optional;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v2

    .line 253
    :cond_f
    iget-object v4, v0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->readReplace:Lnet/bytebuddy/implementation/Implementation;

    if-eqz v4, :cond_10

    .line 254
    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array v12, v3, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;

    sget-object v13, Lnet/bytebuddy/description/modifier/Visibility;->PRIVATE:Lnet/bytebuddy/description/modifier/Visibility;

    aput-object v13, v12, v6

    .line 255
    const-string v13, "readObject"

    invoke-interface {v2, v13, v4, v12}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->defineMethod(Ljava/lang/String;Ljava/lang/reflect/Type;[Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;

    move-result-object v4

    new-array v12, v3, [Ljava/lang/reflect/Type;

    const-class v13, Ljava/io/ObjectInputStream;

    aput-object v13, v12, v6

    .line 256
    invoke-interface {v4, v12}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;->withParameters([Ljava/lang/reflect/Type;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;

    move-result-object v4

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/reflect/Type;

    const-class v13, Ljava/lang/ClassNotFoundException;

    aput-object v13, v12, v6

    const-class v6, Ljava/io/IOException;

    aput-object v6, v12, v3

    .line 257
    invoke-interface {v4, v12}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;->throwing([Ljava/lang/reflect/Type;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;

    move-result-object v3

    iget-object v4, v0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->readReplace:Lnet/bytebuddy/implementation/Implementation;

    .line 258
    invoke-interface {v3, v4}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v2

    .line 260
    :cond_10
    const-string v3, "org.mockito.codegen."

    invoke-virtual {v11, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    instance-of v3, v8, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader;

    if-eqz v3, :cond_12

    .line 261
    :cond_11
    nop

    .line 263
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isPackagePrivate()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    .line 264
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isPackagePrivate()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    invoke-static {v4}, Lnet/bytebuddy/matcher/ElementMatchers;->returns(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    invoke-interface {v3, v4}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    .line 265
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isPackagePrivate()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    invoke-static {v4}, Lnet/bytebuddy/matcher/ElementMatchers;->hasType(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    invoke-static {v4}, Lnet/bytebuddy/matcher/ElementMatchers;->whereAny(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    invoke-static {v4}, Lnet/bytebuddy/matcher/ElementMatchers;->hasParameters(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    invoke-interface {v3, v4}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    .line 262
    invoke-interface {v2, v3}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->ignoreAlso(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v2

    .line 267
    :cond_12
    invoke-interface {v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->make()Lnet/bytebuddy/dynamic/DynamicType$Unloaded;

    move-result-object v3

    iget-object v4, v0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->loader:Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;

    iget-object v6, v1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    .line 270
    invoke-interface {v4, v6, v8, v9}, Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;->resolveStrategy(Ljava/lang/Class;Ljava/lang/ClassLoader;Z)Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;

    move-result-object v4

    .line 268
    invoke-interface {v3, v8, v4}, Lnet/bytebuddy/dynamic/DynamicType$Unloaded;->load(Ljava/lang/ClassLoader;Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Loaded;

    move-result-object v3

    .line 271
    invoke-interface {v3}, Lnet/bytebuddy/dynamic/DynamicType$Loaded;->getLoaded()Ljava/lang/Class;

    move-result-object v3

    .line 267
    return-object v3
.end method

.method public mockClassConstruction(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 281
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "The subclass byte code generator cannot create construction mocks"

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public mockClassStatic(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 276
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "The subclass byte code generator cannot create static mocks"

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
