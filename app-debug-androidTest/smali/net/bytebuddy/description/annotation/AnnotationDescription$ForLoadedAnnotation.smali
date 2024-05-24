.class public Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;
.super Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase;
.source "AnnotationDescription.java"

# interfaces
.implements Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForLoadedAnnotation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase;",
        "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<",
        "TS;>;"
    }
.end annotation


# static fields
.field private static final NO_ARGUMENT:[Ljava/lang/Object;


# instance fields
.field private final annotation:Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private final annotationType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 503
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;->NO_ARGUMENT:[Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/annotation/Annotation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 523
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;, "Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation<TS;>;"
    .local p1, "annotation":Ljava/lang/annotation/Annotation;, "TS;"
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;-><init>(Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    .line 524
    return-void
.end method

.method private constructor <init>(Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/Class<",
            "TS;>;)V"
        }
    .end annotation

    .line 533
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;, "Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation<TS;>;"
    .local p1, "annotation":Ljava/lang/annotation/Annotation;, "TS;"
    .local p2, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    invoke-direct {p0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase;-><init>()V

    .line 534
    iput-object p1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;->annotation:Ljava/lang/annotation/Annotation;

    .line 535
    iput-object p2, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;->annotationType:Ljava/lang/Class;

    .line 536
    return-void
.end method

.method private static asValue(Ljava/lang/annotation/Annotation;)Ljava/util/Map;
    .locals 11
    .param p0, "annotation"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;>;"
        }
    .end annotation

    .line 566
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 567
    .local v0, "annotationValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue<**>;>;"
    invoke-interface {p0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 569
    .local v4, "property":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;->NO_ARGUMENT:[Ljava/lang/Object;

    invoke-virtual {v4, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;->asValue(Ljava/lang/Object;Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 585
    :catch_0
    move-exception v1

    .line 586
    .local v1, "exception":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot access "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 570
    .end local v1    # "exception":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v5

    .line 571
    .local v5, "exception":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    .line 572
    .local v6, "cause":Ljava/lang/Throwable;
    instance-of v7, v6, Ljava/lang/TypeNotPresentException;

    if-eqz v7, :cond_0

    .line 573
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingType;

    move-object v9, v6

    check-cast v9, Ljava/lang/TypeNotPresentException;

    invoke-virtual {v9}, Ljava/lang/TypeNotPresentException;->typeName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingType;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 574
    :cond_0
    instance-of v7, v6, Ljava/lang/EnumConstantNotPresentException;

    if-eqz v7, :cond_1

    .line 575
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription$WithUnknownConstant;

    new-instance v9, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    move-object v10, v6

    check-cast v10, Ljava/lang/EnumConstantNotPresentException;

    .line 576
    invoke-virtual {v10}, Ljava/lang/EnumConstantNotPresentException;->enumType()Ljava/lang/Class;

    move-result-object v10

    invoke-direct {v9, v10}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    move-object v10, v6

    check-cast v10, Ljava/lang/EnumConstantNotPresentException;

    .line 577
    invoke-virtual {v10}, Ljava/lang/EnumConstantNotPresentException;->constantName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription$WithUnknownConstant;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;)V

    .line 575
    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 578
    :cond_1
    instance-of v7, v6, Ljava/lang/annotation/AnnotationTypeMismatchException;

    if-eqz v7, :cond_2

    .line 579
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType;

    new-instance v9, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    move-object v10, v6

    check-cast v10, Ljava/lang/annotation/AnnotationTypeMismatchException;

    .line 580
    invoke-virtual {v10}, Ljava/lang/annotation/AnnotationTypeMismatchException;->element()Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-direct {v9, v10}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    move-object v10, v6

    check-cast v10, Ljava/lang/annotation/AnnotationTypeMismatchException;

    .line 581
    invoke-virtual {v10}, Ljava/lang/annotation/AnnotationTypeMismatchException;->foundType()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/lang/String;)V

    .line 579
    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 582
    :cond_2
    instance-of v7, v6, Ljava/lang/annotation/IncompleteAnnotationException;

    if-eqz v7, :cond_3

    .line 587
    .end local v5    # "exception":Ljava/lang/reflect/InvocationTargetException;
    .end local v6    # "cause":Ljava/lang/Throwable;
    :goto_1
    nop

    .line 567
    .end local v4    # "property":Ljava/lang/reflect/Method;
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 583
    .restart local v4    # "property":Ljava/lang/reflect/Method;
    .restart local v5    # "exception":Ljava/lang/reflect/InvocationTargetException;
    .restart local v6    # "cause":Ljava/lang/Throwable;
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 589
    .end local v4    # "property":Ljava/lang/reflect/Method;
    .end local v5    # "exception":Ljava/lang/reflect/InvocationTargetException;
    .end local v6    # "cause":Ljava/lang/Throwable;
    :cond_4
    return-object v0
.end method

.method public static asValue(Ljava/lang/Object;Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 10
    .param p0, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;"
        }
    .end annotation

    .line 602
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    new-instance v0, Lnet/bytebuddy/description/enumeration/EnumerationDescription$ForLoadedEnumeration;

    move-object v1, p0

    check-cast v1, Ljava/lang/Enum;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/enumeration/EnumerationDescription$ForLoadedEnumeration;-><init>(Ljava/lang/Enum;)V

    invoke-static {v0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription;->of(Lnet/bytebuddy/description/enumeration/EnumerationDescription;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v0

    return-object v0

    .line 604
    :cond_0
    const-class v0, [Ljava/lang/Enum;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 605
    move-object v0, p0

    check-cast v0, [Ljava/lang/Enum;

    check-cast v0, [Ljava/lang/Enum;

    .line 606
    .local v0, "element":[Ljava/lang/Enum;, "[Ljava/lang/Enum<*>;"
    array-length v2, v0

    new-array v2, v2, [Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    .line 607
    .local v2, "enumerationDescription":[Lnet/bytebuddy/description/enumeration/EnumerationDescription;
    const/4 v3, 0x0

    .line 608
    .local v3, "index":I
    array-length v4, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v0, v1

    .line 609
    .local v5, "anElement":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "index":I
    .local v6, "index":I
    new-instance v7, Lnet/bytebuddy/description/enumeration/EnumerationDescription$ForLoadedEnumeration;

    invoke-direct {v7, v5}, Lnet/bytebuddy/description/enumeration/EnumerationDescription$ForLoadedEnumeration;-><init>(Ljava/lang/Enum;)V

    aput-object v7, v2, v3

    .line 608
    .end local v5    # "anElement":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    add-int/lit8 v1, v1, 0x1

    move v3, v6

    goto :goto_0

    .line 611
    .end local v6    # "index":I
    .restart local v3    # "index":I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-static {v1, v2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;->of(Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/enumeration/EnumerationDescription;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v1

    return-object v1

    .line 612
    .end local v0    # "element":[Ljava/lang/Enum;, "[Ljava/lang/Enum<*>;"
    .end local v2    # "enumerationDescription":[Lnet/bytebuddy/description/enumeration/EnumerationDescription;
    .end local v3    # "index":I
    :cond_2
    const-class v0, Ljava/lang/annotation/Annotation;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 613
    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ljava/lang/annotation/Annotation;

    invoke-static {v1}, Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;->asValue(Ljava/lang/annotation/Annotation;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;->of(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/Map;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v0

    return-object v0

    .line 614
    :cond_3
    const-class v0, [Ljava/lang/annotation/Annotation;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 615
    move-object v0, p0

    check-cast v0, [Ljava/lang/annotation/Annotation;

    check-cast v0, [Ljava/lang/annotation/Annotation;

    .line 616
    .local v0, "element":[Ljava/lang/annotation/Annotation;
    array-length v2, v0

    new-array v2, v2, [Lnet/bytebuddy/description/annotation/AnnotationDescription;

    .line 617
    .local v2, "annotationDescription":[Lnet/bytebuddy/description/annotation/AnnotationDescription;
    const/4 v3, 0x0

    .line 618
    .restart local v3    # "index":I
    array-length v4, v0

    :goto_1
    if-ge v1, v4, :cond_4

    aget-object v5, v0, v1

    .line 619
    .local v5, "anElement":Ljava/lang/annotation/Annotation;
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "index":I
    .restart local v6    # "index":I
    new-instance v7, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v8

    invoke-static {v5}, Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;->asValue(Ljava/lang/annotation/Annotation;)Ljava/util/Map;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/Map;)V

    aput-object v7, v2, v3

    .line 618
    .end local v5    # "anElement":Ljava/lang/annotation/Annotation;
    add-int/lit8 v1, v1, 0x1

    move v3, v6

    goto :goto_1

    .line 621
    .end local v6    # "index":I
    .restart local v3    # "index":I
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-static {v1, v2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;->of(Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/annotation/AnnotationDescription;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v1

    return-object v1

    .line 622
    .end local v0    # "element":[Ljava/lang/annotation/Annotation;
    .end local v2    # "annotationDescription":[Lnet/bytebuddy/description/annotation/AnnotationDescription;
    .end local v3    # "index":I
    :cond_5
    const-class v0, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 623
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForTypeDescription;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v0

    return-object v0

    .line 624
    :cond_6
    const-class v0, [Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 625
    move-object v0, p0

    check-cast v0, [Ljava/lang/Class;

    check-cast v0, [Ljava/lang/Class;

    .line 626
    .local v0, "element":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v2, v0

    new-array v2, v2, [Lnet/bytebuddy/description/type/TypeDescription;

    .line 627
    .local v2, "typeDescription":[Lnet/bytebuddy/description/type/TypeDescription;
    const/4 v3, 0x0

    .line 628
    .restart local v3    # "index":I
    array-length v4, v0

    :goto_2
    if-ge v1, v4, :cond_7

    aget-object v5, v0, v1

    .line 629
    .local v5, "anElement":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "index":I
    .restart local v6    # "index":I
    invoke-static {v5}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v7

    aput-object v7, v2, v3

    .line 628
    .end local v5    # "anElement":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v1, v1, 0x1

    move v3, v6

    goto :goto_2

    .line 631
    .end local v6    # "index":I
    .restart local v3    # "index":I
    :cond_7
    invoke-static {v2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;->of([Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v1

    return-object v1

    .line 633
    .end local v0    # "element":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v2    # "typeDescription":[Lnet/bytebuddy/description/type/TypeDescription;
    .end local v3    # "index":I
    :cond_8
    invoke-static {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of(Ljava/lang/Object;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/annotation/Annotation;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/lang/annotation/Annotation;",
            ">(TU;)",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<",
            "TU;>;"
        }
    .end annotation

    .line 546
    .local p0, "annotation":Ljava/lang/annotation/Annotation;, "TU;"
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;-><init>(Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method


# virtual methods
.method public getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    .line 699
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;, "Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation<TS;>;"
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;->annotation:Ljava/lang/annotation/Annotation;

    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 5
    .param p1, "property"    # Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            ")",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;"
        }
    .end annotation

    .line 643
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;, "Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation<TS;>;"
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;->annotation:Ljava/lang/annotation/Annotation;

    invoke-interface {v1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 647
    :try_start_0
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->isPublic()Z

    move-result v0

    .line 648
    .local v0, "accessible":Z
    instance-of v1, p1, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    .line 649
    invoke-virtual {v1}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;->getLoadedMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 651
    .local v1, "method":Ljava/lang/reflect/Method;
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;->annotation:Ljava/lang/annotation/Annotation;

    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_1

    if-nez v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_2

    .line 652
    :cond_1
    iget-object v2, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;->annotation:Ljava/lang/annotation/Annotation;

    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v1, v2

    .line 653
    if-nez v0, :cond_2

    .line 654
    new-instance v2, Lnet/bytebuddy/utility/privilege/SetAccessibleAction;

    invoke-direct {v2, v1}, Lnet/bytebuddy/utility/privilege/SetAccessibleAction;-><init>(Ljava/lang/reflect/AccessibleObject;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 657
    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;->annotation:Ljava/lang/annotation/Annotation;

    sget-object v3, Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;->NO_ARGUMENT:[Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;->asValue(Ljava/lang/Object;Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v2

    invoke-interface {v2, p1}, Lnet/bytebuddy/description/annotation/AnnotationValue;->filter(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 677
    .end local v0    # "accessible":Z
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 678
    .local v0, "exception":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot access annotation property "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 658
    .end local v0    # "exception":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 659
    .local v0, "exception":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 660
    .local v1, "cause":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/TypeNotPresentException;

    if-eqz v2, :cond_3

    .line 661
    new-instance v2, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingType;

    move-object v3, v1

    check-cast v3, Ljava/lang/TypeNotPresentException;

    invoke-virtual {v3}, Ljava/lang/TypeNotPresentException;->typeName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingType;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 662
    :cond_3
    instance-of v2, v1, Ljava/lang/EnumConstantNotPresentException;

    if-eqz v2, :cond_4

    .line 663
    new-instance v2, Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription$WithUnknownConstant;

    new-instance v3, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    move-object v4, v1

    check-cast v4, Ljava/lang/EnumConstantNotPresentException;

    .line 664
    invoke-virtual {v4}, Ljava/lang/EnumConstantNotPresentException;->enumType()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, v4}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    move-object v4, v1

    check-cast v4, Ljava/lang/EnumConstantNotPresentException;

    .line 665
    invoke-virtual {v4}, Ljava/lang/EnumConstantNotPresentException;->constantName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription$WithUnknownConstant;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;)V

    .line 663
    return-object v2

    .line 666
    :cond_4
    instance-of v2, v1, Ljava/lang/annotation/AnnotationTypeMismatchException;

    if-eqz v2, :cond_5

    .line 667
    new-instance v2, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType;

    new-instance v3, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    move-object v4, v1

    check-cast v4, Ljava/lang/annotation/AnnotationTypeMismatchException;

    .line 668
    invoke-virtual {v4}, Ljava/lang/annotation/AnnotationTypeMismatchException;->element()Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-direct {v3, v4}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    move-object v4, v1

    check-cast v4, Ljava/lang/annotation/AnnotationTypeMismatchException;

    .line 669
    invoke-virtual {v4}, Ljava/lang/annotation/AnnotationTypeMismatchException;->foundType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/lang/String;)V

    .line 667
    return-object v2

    .line 670
    :cond_5
    instance-of v2, v1, Ljava/lang/annotation/IncompleteAnnotationException;

    if-eqz v2, :cond_6

    .line 671
    new-instance v2, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingValue;

    new-instance v3, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    move-object v4, v1

    check-cast v4, Ljava/lang/annotation/IncompleteAnnotationException;

    .line 672
    invoke-virtual {v4}, Ljava/lang/annotation/IncompleteAnnotationException;->annotationType()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, v4}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    move-object v4, v1

    check-cast v4, Ljava/lang/annotation/IncompleteAnnotationException;

    .line 673
    invoke-virtual {v4}, Ljava/lang/annotation/IncompleteAnnotationException;->elementName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingValue;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;)V

    .line 671
    return-object v2

    .line 675
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading annotation property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 644
    .end local v0    # "exception":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "cause":Ljava/lang/Throwable;
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not represent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;->annotation:Ljava/lang/annotation/Annotation;

    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public load()Ljava/lang/annotation/Annotation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 553
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;, "Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation<TS;>;"
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;->annotationType:Ljava/lang/Class;

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;->annotation:Ljava/lang/annotation/Annotation;

    invoke-interface {v1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;->annotation:Ljava/lang/annotation/Annotation;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;->annotationType:Ljava/lang/Class;

    .line 555
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;->annotationType:Ljava/lang/Class;

    iget-object v2, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;->annotation:Ljava/lang/annotation/Annotation;

    invoke-static {v2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;->asValue(Ljava/lang/annotation/Annotation;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->of(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 553
    :goto_0
    return-object v0
.end method

.method public prepare(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<",
            "TT;>;"
        }
    .end annotation

    .line 687
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;, "Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation<TS;>;"
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;->annotation:Ljava/lang/annotation/Annotation;

    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 690
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;->annotation:Ljava/lang/annotation/Annotation;

    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;->annotation:Ljava/lang/annotation/Annotation;

    invoke-direct {v0, v1, p1}, Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;-><init>(Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :goto_0
    return-object v0

    .line 688
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not represent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;->annotation:Ljava/lang/annotation/Annotation;

    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
