.class public Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;
.super Lnet/bytebuddy/description/annotation/AnnotationValue$AbstractBase;
.source "AnnotationValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForAnnotationDescription"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$Loaded;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Lnet/bytebuddy/description/annotation/AnnotationValue$AbstractBase<",
        "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
        "TU;>;"
    }
.end annotation


# instance fields
.field private final annotationDescription:Lnet/bytebuddy/description/annotation/AnnotationDescription;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/annotation/AnnotationDescription;)V
    .locals 0
    .param p1, "annotationDescription"    # Lnet/bytebuddy/description/annotation/AnnotationDescription;

    .line 1554
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription<TU;>;"
    invoke-direct {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$AbstractBase;-><init>()V

    .line 1555
    iput-object p1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;->annotationDescription:Lnet/bytebuddy/description/annotation/AnnotationDescription;

    .line 1556
    return-void
.end method

.method public static of(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/Map;)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 2
    .param p0, "annotationType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;>;)",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            "TV;>;"
        }
    .end annotation

    .line 1568
    .local p1, "annotationValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Lnet/bytebuddy/description/annotation/AnnotationValue<**>;>;"
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;

    new-instance v1, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;

    invoke-direct {v1, p0, p1}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/Map;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;-><init>(Lnet/bytebuddy/description/annotation/AnnotationDescription;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 1622
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription<TU;>;"
    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lnet/bytebuddy/description/annotation/AnnotationValue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;->annotationDescription:Lnet/bytebuddy/description/annotation/AnnotationDescription;

    move-object v1, p1

    check-cast v1, Lnet/bytebuddy/description/annotation/AnnotationValue;

    invoke-interface {v1}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method public filter(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 3
    .param p1, "property"    # Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .param p2, "typeDefinition"    # Lnet/bytebuddy/description/type/TypeDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ")",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            "TU;>;"
        }
    .end annotation

    .line 1589
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription<TU;>;"
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;->annotationDescription:Lnet/bytebuddy/description/annotation/AnnotationDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_1

    :cond_0
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType;

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->CURRENT:Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    sget-object v2, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->ANNOTATION:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    .line 1590
    invoke-virtual {v1, v2}, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->toArrayErrorString(Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;->annotationDescription:Lnet/bytebuddy/description/annotation/AnnotationDescription;

    .line 1591
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-direct {v0, p1, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/lang/String;)V

    .line 1589
    :goto_1
    return-object v0
.end method

.method public getSort()Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;
    .locals 1

    .line 1582
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription<TU;>;"
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->ANNOTATION:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    return-object v0
.end method

.method public getState()Lnet/bytebuddy/description/annotation/AnnotationValue$State;
    .locals 1

    .line 1575
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription<TU;>;"
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$State;->RESOLVED:Lnet/bytebuddy/description/annotation/AnnotationValue$State;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1617
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription<TU;>;"
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;->annotationDescription:Lnet/bytebuddy/description/annotation/AnnotationDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public load(Ljava/lang/ClassLoader;)Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;
    .locals 4
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<",
            "TU;>;"
        }
    .end annotation

    .line 1607
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription<TU;>;"
    :try_start_0
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$Loaded;

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;->annotationDescription:Lnet/bytebuddy/description/annotation/AnnotationDescription;

    .line 1608
    invoke-interface {v1}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->prepare(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;

    move-result-object v1

    .line 1609
    invoke-interface {v1}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;->load()Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$Loaded;-><init>(Ljava/lang/annotation/Annotation;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1607
    return-object v0

    .line 1610
    :catch_0
    move-exception v0

    .line 1611
    .local v0, "exception":Ljava/lang/ClassNotFoundException;
    new-instance v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingType$Loaded;

    iget-object v2, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;->annotationDescription:Lnet/bytebuddy/description/annotation/AnnotationDescription;

    invoke-interface {v2}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingType$Loaded;-><init>(Ljava/lang/String;Ljava/lang/ClassNotFoundException;)V

    return-object v1
.end method

.method public bridge synthetic resolve()Ljava/lang/Object;
    .locals 1

    .line 1542
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription<TU;>;"
    invoke-virtual {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;->resolve()Lnet/bytebuddy/description/annotation/AnnotationDescription;

    move-result-object v0

    return-object v0
.end method

.method public resolve()Lnet/bytebuddy/description/annotation/AnnotationDescription;
    .locals 1

    .line 1598
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription<TU;>;"
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;->annotationDescription:Lnet/bytebuddy/description/annotation/AnnotationDescription;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1627
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription<TU;>;"
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;->annotationDescription:Lnet/bytebuddy/description/annotation/AnnotationDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
