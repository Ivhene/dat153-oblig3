.class public Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$OfMethod;
.super Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;
.source "ParameterDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "OfMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter<",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/reflect/Method;ILnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "index"    # I
    .param p3, "parameterAnnotationSource"    # Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;

    .line 412
    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;-><init>(Ljava/lang/reflect/AccessibleObject;ILnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;)V

    .line 413
    return-void
.end method


# virtual methods
.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 3

    .line 439
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;

    iget-object v1, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$OfMethod;->parameterAnnotationSource:Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v1

    iget v2, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$OfMethod;->index:I

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;-><init>([Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method

.method public getDeclaringMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 2

    .line 420
    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    iget-object v1, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$OfMethod;->executable:Ljava/lang/reflect/AccessibleObject;

    check-cast v1, Ljava/lang/reflect/Method;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method public bridge synthetic getDeclaringMethod()Lnet/bytebuddy/description/method/MethodDescription;
    .locals 1

    .line 402
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$OfMethod;->getDeclaringMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 4

    .line 428
    sget-boolean v0, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->RAW_TYPES:Z

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$OfMethod;->executable:Ljava/lang/reflect/AccessibleObject;

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$OfMethod;->index:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfNonGenericType$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    return-object v0

    .line 431
    :cond_0
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$OfMethodParameter;

    iget-object v1, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$OfMethod;->executable:Ljava/lang/reflect/AccessibleObject;

    check-cast v1, Ljava/lang/reflect/Method;

    iget v2, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$OfMethod;->index:I

    iget-object v3, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$OfMethod;->executable:Ljava/lang/reflect/AccessibleObject;

    check-cast v3, Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$OfMethodParameter;-><init>(Ljava/lang/reflect/Method;I[Ljava/lang/Class;)V

    return-object v0
.end method
