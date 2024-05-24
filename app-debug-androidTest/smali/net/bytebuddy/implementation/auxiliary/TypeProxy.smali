.class public Lnet/bytebuddy/implementation/auxiliary/TypeProxy;
.super Ljava/lang/Object;
.source "TypeProxy.java"

# interfaces
.implements Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall;,
        Lnet/bytebuddy/implementation/auxiliary/TypeProxy$ForDefaultMethod;,
        Lnet/bytebuddy/implementation/auxiliary/TypeProxy$ForSuperMethodByReflectionFactory;,
        Lnet/bytebuddy/implementation/auxiliary/TypeProxy$ForSuperMethodByConstructor;,
        Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory;,
        Lnet/bytebuddy/implementation/auxiliary/TypeProxy$SilentConstruction;,
        Lnet/bytebuddy/implementation/auxiliary/TypeProxy$AbstractMethodErrorThrow;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field public static final INSTANCE_FIELD:Ljava/lang/String; = "target"

.field public static final REFLECTION_METHOD:Ljava/lang/String; = "make"


# instance fields
.field private final ignoreFinalizer:Z

.field private final implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

.field private final invocationFactory:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory;

.field private final proxiedType:Lnet/bytebuddy/description/type/TypeDescription;

.field private final serializableProxy:Z


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/Implementation$Target;Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory;ZZ)V
    .locals 0
    .param p1, "proxiedType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "implementationTarget"    # Lnet/bytebuddy/implementation/Implementation$Target;
    .param p3, "invocationFactory"    # Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory;
    .param p4, "ignoreFinalizer"    # Z
    .param p5, "serializableProxy"    # Z

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->proxiedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 106
    iput-object p2, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    .line 107
    iput-object p3, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->invocationFactory:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory;

    .line 108
    iput-boolean p4, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->ignoreFinalizer:Z

    .line 109
    iput-boolean p5, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->serializableProxy:Z

    .line 110
    return-void
.end method

.method static synthetic access$200(Lnet/bytebuddy/implementation/auxiliary/TypeProxy;)Lnet/bytebuddy/implementation/Implementation$Target;
    .locals 1
    .param p0, "x0"    # Lnet/bytebuddy/implementation/auxiliary/TypeProxy;

    .line 53
    iget-object v0, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    return-object v0
.end method

.method static synthetic access$300(Lnet/bytebuddy/implementation/auxiliary/TypeProxy;)Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1
    .param p0, "x0"    # Lnet/bytebuddy/implementation/auxiliary/TypeProxy;

    .line 53
    iget-object v0, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->proxiedType:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method

.method static synthetic access$400(Lnet/bytebuddy/implementation/auxiliary/TypeProxy;)Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory;
    .locals 1
    .param p0, "x0"    # Lnet/bytebuddy/implementation/auxiliary/TypeProxy;

    .line 53
    iget-object v0, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->invocationFactory:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-boolean v2, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->ignoreFinalizer:Z

    check-cast p1, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;

    iget-boolean v3, p1, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->ignoreFinalizer:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-boolean v2, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->serializableProxy:Z

    iget-boolean v3, p1, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->serializableProxy:Z

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->proxiedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v3, p1, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->proxiedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    iget-object v3, p1, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->invocationFactory:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory;

    iget-object p1, p1, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->invocationFactory:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->proxiedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->invocationFactory:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->ignoreFinalizer:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->serializableProxy:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public make(Ljava/lang/String;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/MethodAccessorFactory;)Lnet/bytebuddy/dynamic/DynamicType;
    .locals 5
    .param p1, "auxiliaryTypeName"    # Ljava/lang/String;
    .param p2, "classFileVersion"    # Lnet/bytebuddy/ClassFileVersion;
    .param p3, "methodAccessorFactory"    # Lnet/bytebuddy/implementation/MethodAccessorFactory;

    .line 118
    new-instance v0, Lnet/bytebuddy/ByteBuddy;

    invoke-direct {v0, p2}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;)V

    sget-object v1, Lnet/bytebuddy/dynamic/scaffold/TypeValidation;->DISABLED:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    .line 119
    invoke-virtual {v0, v1}, Lnet/bytebuddy/ByteBuddy;->with(Lnet/bytebuddy/dynamic/scaffold/TypeValidation;)Lnet/bytebuddy/ByteBuddy;

    move-result-object v0

    iget-boolean v1, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->ignoreFinalizer:Z

    if-eqz v1, :cond_0

    .line 120
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isFinalizer()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->none()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lnet/bytebuddy/ByteBuddy;->ignore(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/ByteBuddy;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->proxiedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 121
    invoke-virtual {v0, v1}, Lnet/bytebuddy/ByteBuddy;->subclass(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    .line 122
    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->name(Ljava/lang/String;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->DEFAULT_TYPE_MODIFIER:[Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;

    .line 123
    invoke-interface {v0, v1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->modifiers([Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->serializableProxy:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    new-array v1, v2, [Ljava/lang/Class;

    const-class v4, Ljava/io/Serializable;

    aput-object v4, v1, v3

    goto :goto_1

    :cond_1
    new-array v1, v3, [Ljava/lang/Class;

    .line 124
    :goto_1
    invoke-interface {v0, v1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->implement([Ljava/lang/reflect/Type;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition$Optional;

    move-result-object v0

    .line 125
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->any()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition$Optional;->method(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;

    move-result-object v0

    new-instance v1, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall;

    invoke-direct {v1, p0, p3}, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall;-><init>(Lnet/bytebuddy/implementation/auxiliary/TypeProxy;Lnet/bytebuddy/implementation/MethodAccessorFactory;)V

    invoke-interface {v0, v1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v0

    const-class v1, Lnet/bytebuddy/dynamic/TargetType;

    new-array v2, v2, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;

    sget-object v4, Lnet/bytebuddy/description/modifier/Ownership;->STATIC:Lnet/bytebuddy/description/modifier/Ownership;

    aput-object v4, v2, v3

    .line 126
    const-string v3, "make"

    invoke-interface {v0, v3, v1, v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;->defineMethod(Ljava/lang/String;Ljava/lang/reflect/Type;[Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$SilentConstruction;->INSTANCE:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$SilentConstruction;

    invoke-interface {v0, v1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v0

    .line 127
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;->make()Lnet/bytebuddy/dynamic/DynamicType$Unloaded;

    move-result-object v0

    .line 118
    return-object v0
.end method
