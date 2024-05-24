.class public Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;
.super Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase$ForLoadedExecutable;
.source "MethodDescription.java"

# interfaces
.implements Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/MethodDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForLoadedConstructor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase$ForLoadedExecutable<",
        "Ljava/lang/reflect/Constructor<",
        "*>;>;",
        "Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;"
    }
.end annotation


# instance fields
.field private transient synthetic declaredAnnotations:Lnet/bytebuddy/description/annotation/AnnotationList;

.field private transient synthetic parameterAnnotations:[[Ljava/lang/annotation/Annotation;

.field private transient synthetic parameters:Lnet/bytebuddy/description/method/ParameterList;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)V"
        }
    .end annotation

    .line 1014
    .local p1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-direct {p0, p1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase$ForLoadedExecutable;-><init>(Ljava/lang/reflect/AnnotatedElement;)V

    .line 1015
    return-void
.end method


# virtual methods
.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 4
    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "declaredAnnotations"
    .end annotation

    .line 1121
    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;->declaredAnnotations:Lnet/bytebuddy/description/annotation/AnnotationList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v1, p0

    goto :goto_0

    :cond_0
    move-object v0, p0

    .local v0, "this":Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;
    new-instance v1, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;

    iget-object v2, p0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;->executable:Ljava/lang/reflect/AnnotatedElement;

    check-cast v2, Ljava/lang/reflect/Constructor;

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;-><init>([Ljava/lang/annotation/Annotation;)V

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .end local v0    # "this":Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;
    :goto_0
    if-nez v0, :cond_1

    iget-object v0, v1, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;->declaredAnnotations:Lnet/bytebuddy/description/annotation/AnnotationList;

    move-object v1, v0

    check-cast v1, Lnet/bytebuddy/description/annotation/AnnotationList;

    goto :goto_1

    :cond_1
    iput-object v0, v1, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;->declaredAnnotations:Lnet/bytebuddy/description/annotation/AnnotationList;

    :goto_1
    return-object v0
.end method

.method public bridge synthetic getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    .line 1006
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    .line 1021
    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;->executable:Ljava/lang/reflect/AnnotatedElement;

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue()Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;"
        }
    .end annotation

    .line 1113
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue;->UNDEFINED:Lnet/bytebuddy/description/annotation/AnnotationValue;

    return-object v0
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 1

    .line 1106
    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;->executable:Ljava/lang/reflect/AnnotatedElement;

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getConstructorDescriptor(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExceptionTypes()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 2

    .line 1043
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Generic$OfConstructorExceptionTypes;

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;->executable:Ljava/lang/reflect/AnnotatedElement;

    check-cast v1, Ljava/lang/reflect/Constructor;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeList$Generic$OfConstructorExceptionTypes;-><init>(Ljava/lang/reflect/Constructor;)V

    return-object v0
.end method

.method public getInternalName()Ljava/lang/String;
    .locals 1

    .line 1099
    const-string v0, "<init>"

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    .line 1085
    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;->executable:Ljava/lang/reflect/AnnotatedElement;

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1078
    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;->executable:Ljava/lang/reflect/AnnotatedElement;

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterAnnotations()[[Ljava/lang/annotation/Annotation;
    .locals 3
    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "parameterAnnotations"
    .end annotation

    .line 1136
    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;->parameterAnnotations:[[Ljava/lang/annotation/Annotation;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v1, p0

    goto :goto_0

    :cond_0
    move-object v0, p0

    .local v0, "this":Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;
    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;->executable:Ljava/lang/reflect/AnnotatedElement;

    check-cast v1, Ljava/lang/reflect/Constructor;

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    .end local v0    # "this":Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;
    :goto_0
    if-nez v0, :cond_1

    iget-object v0, v1, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;->parameterAnnotations:[[Ljava/lang/annotation/Annotation;

    check-cast v0, [[Ljava/lang/annotation/Annotation;

    goto :goto_1

    :cond_1
    iput-object v0, v1, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;->parameterAnnotations:[[Ljava/lang/annotation/Annotation;

    :goto_1
    return-object v0
.end method

.method public getParameters()Lnet/bytebuddy/description/method/ParameterList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/method/ParameterList<",
            "Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "parameters"
    .end annotation

    .line 1036
    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;->parameters:Lnet/bytebuddy/description/method/ParameterList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v1, p0

    goto :goto_0

    :cond_0
    move-object v0, p0

    .local v0, "this":Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;
    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;->executable:Ljava/lang/reflect/AnnotatedElement;

    check-cast v1, Ljava/lang/reflect/Constructor;

    invoke-static {v1, p0}, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable;->of(Ljava/lang/reflect/Constructor;Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;)Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    .end local v0    # "this":Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;
    :goto_0
    if-nez v0, :cond_1

    iget-object v0, v1, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;->parameters:Lnet/bytebuddy/description/method/ParameterList;

    move-object v1, v0

    check-cast v1, Lnet/bytebuddy/description/method/ParameterList;

    goto :goto_1

    :cond_1
    iput-object v0, v1, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;->parameters:Lnet/bytebuddy/description/method/ParameterList;

    :goto_1
    return-object v0
.end method

.method public bridge synthetic getReceiverType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1

    .line 1006
    invoke-super {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase$ForLoadedExecutable;->getReceiverType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    return-object v0
.end method

.method public getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1

    .line 1028
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;->VOID:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-object v0
.end method

.method public getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 1

    .line 1128
    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;->executable:Ljava/lang/reflect/AnnotatedElement;

    check-cast v0, Ljava/lang/reflect/GenericDeclaration;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeList$Generic$ForLoadedTypes$OfTypeVariables;->of(Ljava/lang/reflect/GenericDeclaration;)Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    return-object v0
.end method

.method public isConstructor()Z
    .locals 1

    .line 1050
    const/4 v0, 0x1

    return v0
.end method

.method public isSynthetic()Z
    .locals 1

    .line 1092
    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;->executable:Ljava/lang/reflect/AnnotatedElement;

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->isSynthetic()Z

    move-result v0

    return v0
.end method

.method public isTypeInitializer()Z
    .locals 1

    .line 1057
    const/4 v0, 0x0

    return v0
.end method

.method public represents(Ljava/lang/reflect/Constructor;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)Z"
        }
    .end annotation

    .line 1071
    .local p1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;->executable:Ljava/lang/reflect/AnnotatedElement;

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;-><init>(Ljava/lang/reflect/Constructor;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public represents(Ljava/lang/reflect/Method;)Z
    .locals 1
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .line 1064
    const/4 v0, 0x0

    return v0
.end method
