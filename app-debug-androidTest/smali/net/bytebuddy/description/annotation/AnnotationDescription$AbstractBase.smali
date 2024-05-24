.class public abstract Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase;
.super Ljava/lang/Object;
.source "AnnotationDescription.java"

# interfaces
.implements Lnet/bytebuddy/description/annotation/AnnotationDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBase"
.end annotation


# static fields
.field private static final DEFAULT_TARGET:[Ljava/lang/annotation/ElementType;


# instance fields
.field private transient synthetic hashCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 404
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/annotation/ElementType;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/annotation/ElementType;->LOCAL_VARIABLE:Ljava/lang/annotation/ElementType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Ljava/lang/annotation/ElementType;->PACKAGE:Ljava/lang/annotation/ElementType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase;->DEFAULT_TARGET:[Ljava/lang/annotation/ElementType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "other"    # Ljava/lang/Object;

    .line 454
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 455
    return v0

    .line 456
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/description/annotation/AnnotationDescription;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 457
    return v2

    .line 459
    :cond_1
    move-object v1, p1

    check-cast v1, Lnet/bytebuddy/description/annotation/AnnotationDescription;

    .line 460
    .local v1, "annotationDescription":Lnet/bytebuddy/description/annotation/AnnotationDescription;
    invoke-virtual {p0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    .line 461
    .local v3, "annotationType":Lnet/bytebuddy/description/type/TypeDescription;
    invoke-interface {v1}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 462
    return v2

    .line 464
    :cond_2
    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v4

    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 465
    .local v5, "methodDescription":Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    invoke-virtual {p0, v5}, Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v6

    invoke-interface {v1, v5}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 466
    return v2

    .line 468
    .end local v5    # "methodDescription":Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    :cond_3
    goto :goto_0

    .line 469
    :cond_4
    return v0
.end method

.method public getElementTypes()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/annotation/ElementType;",
            ">;"
        }
    .end annotation

    .line 422
    invoke-virtual {p0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    const-class v1, Ljava/lang/annotation/Target;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationList;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;

    move-result-object v0

    .line 423
    .local v0, "target":Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;, "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<Ljava/lang/annotation/Target;>;"
    new-instance v1, Ljava/util/HashSet;

    if-nez v0, :cond_0

    sget-object v2, Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase;->DEFAULT_TARGET:[Ljava/lang/annotation/ElementType;

    goto :goto_0

    .line 425
    :cond_0
    invoke-interface {v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;->load()Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Ljava/lang/annotation/Target;

    invoke-interface {v2}, Ljava/lang/annotation/Target;->value()[Ljava/lang/annotation/ElementType;

    move-result-object v2

    .line 423
    :goto_0
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public getRetention()Ljava/lang/annotation/RetentionPolicy;
    .locals 2

    .line 412
    invoke-virtual {p0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    const-class v1, Ljava/lang/annotation/Retention;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationList;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;

    move-result-object v0

    .line 413
    .local v0, "retention":Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;, "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<Ljava/lang/annotation/Retention;>;"
    if-nez v0, :cond_0

    sget-object v1, Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;

    goto :goto_0

    .line 415
    :cond_0
    invoke-interface {v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;->load()Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Ljava/lang/annotation/Retention;

    invoke-interface {v1}, Ljava/lang/annotation/Retention;->value()Ljava/lang/annotation/RetentionPolicy;

    move-result-object v1

    .line 413
    :goto_0
    return-object v1
.end method

.method public hashCode()I
    .locals 6
    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "hashCode"
    .end annotation

    .line 445
    iget v0, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase;->hashCode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v1, p0

    goto :goto_1

    :cond_0
    move-object v0, p0

    .local v0, "this":Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase;
    const/4 v1, 0x0

    .line 446
    .local v1, "hashCode":I
    invoke-virtual {p0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/method/MethodList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 447
    .local v3, "methodDescription":Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    invoke-virtual {p0, v3}, Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1f

    add-int/2addr v1, v4

    .line 448
    .end local v3    # "methodDescription":Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    goto :goto_0

    .line 449
    :cond_1
    move v5, v1

    move-object v1, v0

    move v0, v5

    .end local v0    # "this":Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase;
    .end local v1    # "hashCode":I
    :goto_1
    if-nez v0, :cond_2

    iget v0, v1, Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase;->hashCode:I

    goto :goto_2

    :cond_2
    iput v0, v1, Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase;->hashCode:I

    :goto_2
    return v0
.end method

.method public isDocumented()Z
    .locals 2

    .line 439
    invoke-virtual {p0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    const-class v1, Ljava/lang/annotation/Documented;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationList;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isInherited()Z
    .locals 2

    .line 432
    invoke-virtual {p0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    const-class v1, Ljava/lang/annotation/Inherited;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationList;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 474
    invoke-virtual {p0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    .line 475
    .local v0, "annotationType":Lnet/bytebuddy/description/type/TypeDescription;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 476
    .local v1, "toString":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 477
    .local v2, "firstMember":Z
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 478
    .local v4, "methodDescription":Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    invoke-virtual {p0, v4}, Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v5

    .line 479
    .local v5, "value":Lnet/bytebuddy/description/annotation/AnnotationValue;, "Lnet/bytebuddy/description/annotation/AnnotationValue<**>;"
    invoke-interface {v5}, Lnet/bytebuddy/description/annotation/AnnotationValue;->getState()Lnet/bytebuddy/description/annotation/AnnotationValue$State;

    move-result-object v6

    sget-object v7, Lnet/bytebuddy/description/annotation/AnnotationValue$State;->UNDEFINED:Lnet/bytebuddy/description/annotation/AnnotationValue$State;

    if-ne v6, v7, :cond_0

    .line 480
    goto :goto_0

    .line 481
    :cond_0
    if-eqz v2, :cond_1

    .line 482
    const/4 v2, 0x0

    goto :goto_1

    .line 484
    :cond_1
    const-string v6, ", "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    :goto_1
    sget-object v6, Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher;->CURRENT:Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher;

    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v8

    invoke-interface {v8}, Lnet/bytebuddy/description/method/MethodList;->size()I

    move-result v8

    invoke-virtual {v6, v1, v7, v8}, Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher;->appendPrefix(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 487
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 488
    .end local v4    # "methodDescription":Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .end local v5    # "value":Lnet/bytebuddy/description/annotation/AnnotationValue;, "Lnet/bytebuddy/description/annotation/AnnotationValue<**>;"
    goto :goto_0

    .line 489
    :cond_2
    const/16 v3, 0x29

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
