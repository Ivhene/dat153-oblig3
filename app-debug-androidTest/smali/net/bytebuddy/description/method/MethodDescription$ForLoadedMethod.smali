.class public Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;
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
    name = "ForLoadedMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase$ForLoadedExecutable<",
        "Ljava/lang/reflect/Method;",
        ">;",
        "Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;"
    }
.end annotation


# instance fields
.field private transient synthetic declaredAnnotations:Lnet/bytebuddy/description/annotation/AnnotationList;

.field private transient synthetic parameterAnnotations:[[Ljava/lang/annotation/Annotation;

.field private transient synthetic parameters:Lnet/bytebuddy/description/method/ParameterList;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .line 1151
    invoke-direct {p0, p1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase$ForLoadedExecutable;-><init>(Ljava/lang/reflect/AnnotatedElement;)V

    .line 1152
    return-void
.end method


# virtual methods
.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 4
    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "declaredAnnotations"
    .end annotation

    .line 1273
    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;->declaredAnnotations:Lnet/bytebuddy/description/annotation/AnnotationList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v1, p0

    goto :goto_0

    :cond_0
    move-object v0, p0

    .local v0, "this":Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;
    new-instance v1, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;

    iget-object v2, p0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;->executable:Ljava/lang/reflect/AnnotatedElement;

    check-cast v2, Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;-><init>([Ljava/lang/annotation/Annotation;)V

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .end local v0    # "this":Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;
    :goto_0
    if-nez v0, :cond_1

    iget-object v0, v1, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;->declaredAnnotations:Lnet/bytebuddy/description/annotation/AnnotationList;

    move-object v1, v0

    check-cast v1, Lnet/bytebuddy/description/annotation/AnnotationList;

    goto :goto_1

    :cond_1
    iput-object v0, v1, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;->declaredAnnotations:Lnet/bytebuddy/description/annotation/AnnotationList;

    :goto_1
    return-object v0
.end method

.method public bridge synthetic getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    .line 1143
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    .line 1158
    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;->executable:Ljava/lang/reflect/AnnotatedElement;

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue()Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;"
        }
    .end annotation

    .line 1280
    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;->executable:Ljava/lang/reflect/AnnotatedElement;

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    .line 1281
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    sget-object v1, Lnet/bytebuddy/description/annotation/AnnotationValue;->UNDEFINED:Lnet/bytebuddy/description/annotation/AnnotationValue;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;->executable:Ljava/lang/reflect/AnnotatedElement;

    check-cast v1, Ljava/lang/reflect/Method;

    .line 1283
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;->asValue(Ljava/lang/Object;Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v1

    .line 1281
    :goto_0
    return-object v1
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 1

    .line 1256
    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;->executable:Ljava/lang/reflect/AnnotatedElement;

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getMethodDescriptor(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExceptionTypes()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 2

    .line 1183
    sget-boolean v0, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->RAW_TYPES:Z

    if-eqz v0, :cond_0

    .line 1184
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Generic$ForLoadedTypes;

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;->executable:Ljava/lang/reflect/AnnotatedElement;

    check-cast v1, Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeList$Generic$ForLoadedTypes;-><init>([Ljava/lang/reflect/Type;)V

    return-object v0

    .line 1186
    :cond_0
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Generic$OfMethodExceptionTypes;

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;->executable:Ljava/lang/reflect/AnnotatedElement;

    check-cast v1, Ljava/lang/reflect/Method;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeList$Generic$OfMethodExceptionTypes;-><init>(Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method public getInternalName()Ljava/lang/String;
    .locals 1

    .line 1249
    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;->executable:Ljava/lang/reflect/AnnotatedElement;

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadedMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 1265
    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;->executable:Ljava/lang/reflect/AnnotatedElement;

    check-cast v0, Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    .line 1235
    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;->executable:Ljava/lang/reflect/AnnotatedElement;

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1228
    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;->executable:Ljava/lang/reflect/AnnotatedElement;

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterAnnotations()[[Ljava/lang/annotation/Annotation;
    .locals 3
    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "parameterAnnotations"
    .end annotation

    .line 1301
    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;->parameterAnnotations:[[Ljava/lang/annotation/Annotation;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v1, p0

    goto :goto_0

    :cond_0
    move-object v0, p0

    .local v0, "this":Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;
    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;->executable:Ljava/lang/reflect/AnnotatedElement;

    check-cast v1, Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    .end local v0    # "this":Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;
    :goto_0
    if-nez v0, :cond_1

    iget-object v0, v1, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;->parameterAnnotations:[[Ljava/lang/annotation/Annotation;

    check-cast v0, [[Ljava/lang/annotation/Annotation;

    goto :goto_1

    :cond_1
    iput-object v0, v1, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;->parameterAnnotations:[[Ljava/lang/annotation/Annotation;

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

    .line 1176
    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;->parameters:Lnet/bytebuddy/description/method/ParameterList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v1, p0

    goto :goto_0

    :cond_0
    move-object v0, p0

    .local v0, "this":Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;
    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;->executable:Ljava/lang/reflect/AnnotatedElement;

    check-cast v1, Ljava/lang/reflect/Method;

    invoke-static {v1, p0}, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable;->of(Ljava/lang/reflect/Method;Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;)Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    .end local v0    # "this":Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;
    :goto_0
    if-nez v0, :cond_1

    iget-object v0, v1, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;->parameters:Lnet/bytebuddy/description/method/ParameterList;

    move-object v1, v0

    check-cast v1, Lnet/bytebuddy/description/method/ParameterList;

    goto :goto_1

    :cond_1
    iput-object v0, v1, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;->parameters:Lnet/bytebuddy/description/method/ParameterList;

    :goto_1
    return-object v0
.end method

.method public bridge synthetic getReceiverType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1

    .line 1143
    invoke-super {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase$ForLoadedExecutable;->getReceiverType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    return-object v0
.end method

.method public getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 2

    .line 1165
    sget-boolean v0, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->RAW_TYPES:Z

    if-eqz v0, :cond_0

    .line 1166
    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;->executable:Ljava/lang/reflect/AnnotatedElement;

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfNonGenericType$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    return-object v0

    .line 1168
    :cond_0
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$ForLoadedReturnType;

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;->executable:Ljava/lang/reflect/AnnotatedElement;

    check-cast v1, Ljava/lang/reflect/Method;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$ForLoadedReturnType;-><init>(Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method public getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 1

    .line 1290
    sget-boolean v0, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->RAW_TYPES:Z

    if-eqz v0, :cond_0

    .line 1291
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Generic$Empty;

    invoke-direct {v0}, Lnet/bytebuddy/description/type/TypeList$Generic$Empty;-><init>()V

    return-object v0

    .line 1293
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;->executable:Ljava/lang/reflect/AnnotatedElement;

    check-cast v0, Ljava/lang/reflect/GenericDeclaration;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeList$Generic$ForLoadedTypes$OfTypeVariables;->of(Ljava/lang/reflect/GenericDeclaration;)Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    return-object v0
.end method

.method public isBridge()Z
    .locals 1

    .line 1207
    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;->executable:Ljava/lang/reflect/AnnotatedElement;

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isBridge()Z

    move-result v0

    return v0
.end method

.method public isConstructor()Z
    .locals 1

    .line 1193
    const/4 v0, 0x0

    return v0
.end method

.method public isSynthetic()Z
    .locals 1

    .line 1242
    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;->executable:Ljava/lang/reflect/AnnotatedElement;

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v0

    return v0
.end method

.method public isTypeInitializer()Z
    .locals 1

    .line 1200
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

    .line 1221
    .local p1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method public represents(Ljava/lang/reflect/Method;)Z
    .locals 1
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .line 1214
    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;->executable:Ljava/lang/reflect/AnnotatedElement;

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;->equals(Ljava/lang/Object;)Z

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
