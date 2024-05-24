.class public Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
.super Ljava/lang/Object;
.source "AnnotationDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final annotationType:Lnet/bytebuddy/description/type/TypeDescription;

.field private final annotationValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/Map;)V
    .locals 0
    .param p1, "annotationType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;>;)V"
        }
    .end annotation

    .line 836
    .local p2, "annotationValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue<**>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 837
    iput-object p1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->annotationType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 838
    iput-object p2, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->annotationValues:Ljava/util/Map;

    .line 839
    return-void
.end method

.method public static ofType(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;"
        }
    .end annotation

    .line 848
    .local p0, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->ofType(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static ofType(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 3
    .param p0, "annotationType"    # Lnet/bytebuddy/description/type/TypeDescription;

    .line 858
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->isAnnotation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/Map;)V

    return-object v0

    .line 859
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not an annotation type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Lnet/bytebuddy/description/annotation/AnnotationDescription;
    .locals 5

    .line 1269
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->annotationType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 1270
    .local v1, "methodDescription":Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    iget-object v2, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->annotationValues:Ljava/util/Map;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/annotation/AnnotationValue;

    .line 1271
    .local v2, "annotationValue":Lnet/bytebuddy/description/annotation/AnnotationValue;, "Lnet/bytebuddy/description/annotation/AnnotationValue<**>;"
    if-nez v2, :cond_1

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDefaultValue()Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 1272
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No value or default value defined for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1273
    :cond_1
    :goto_1
    if-eqz v2, :cond_3

    invoke-interface {v2, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue;->filter(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/annotation/AnnotationValue;->getState()Lnet/bytebuddy/description/annotation/AnnotationValue$State;

    move-result-object v3

    sget-object v4, Lnet/bytebuddy/description/annotation/AnnotationValue$State;->RESOLVED:Lnet/bytebuddy/description/annotation/AnnotationValue$State;

    if-ne v3, v4, :cond_2

    goto :goto_2

    .line 1274
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal annotation value for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1276
    .end local v1    # "methodDescription":Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .end local v2    # "annotationValue":Lnet/bytebuddy/description/annotation/AnnotationValue;, "Lnet/bytebuddy/description/annotation/AnnotationValue<**>;"
    :cond_3
    :goto_2
    goto :goto_0

    .line 1277
    :cond_4
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->annotationType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v2, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->annotationValues:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/Map;)V

    return-object v0
.end method

.method public build(Z)Lnet/bytebuddy/description/annotation/AnnotationDescription;
    .locals 3
    .param p1, "validated"    # Z

    .line 1287
    if-eqz p1, :cond_0

    .line 1288
    invoke-virtual {p0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->build()Lnet/bytebuddy/description/annotation/AnnotationDescription;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->annotationType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v2, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->annotationValues:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/Map;)V

    .line 1287
    :goto_0
    return-object v0
.end method

.method public define(Ljava/lang/String;B)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # B

    .line 1083
    invoke-static {p2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of(B)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public define(Ljava/lang/String;C)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # C

    .line 1094
    invoke-static {p2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of(C)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public define(Ljava/lang/String;D)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # D

    .line 1149
    invoke-static {p2, p3}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of(D)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public define(Ljava/lang/String;F)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 1138
    invoke-static {p2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of(F)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public define(Ljava/lang/String;I)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 1116
    invoke-static {p2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of(I)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public define(Ljava/lang/String;J)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 1127
    invoke-static {p2, p3}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of(J)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public define(Ljava/lang/String;Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;"
        }
    .end annotation

    .line 948
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public define(Ljava/lang/String;Ljava/lang/Enum;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Enum<",
            "*>;)",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;"
        }
    .end annotation

    .line 891
    .local p2, "value":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    new-instance v0, Lnet/bytebuddy/description/enumeration/EnumerationDescription$ForLoadedEnumeration;

    invoke-direct {v0, p2}, Lnet/bytebuddy/description/enumeration/EnumerationDescription$ForLoadedEnumeration;-><init>(Ljava/lang/Enum;)V

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/enumeration/EnumerationDescription;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public define(Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1160
    invoke-static {p2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of(Ljava/lang/String;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public define(Ljava/lang/String;Ljava/lang/annotation/Annotation;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "annotation"    # Ljava/lang/annotation/Annotation;

    .line 926
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;

    invoke-direct {v0, p2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;-><init>(Ljava/lang/annotation/Annotation;)V

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationDescription;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationDescription;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "annotationDescription"    # Lnet/bytebuddy/description/annotation/AnnotationDescription;

    .line 937
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;

    invoke-direct {v0, p2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;-><init>(Lnet/bytebuddy/description/annotation/AnnotationDescription;)V

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 5
    .param p1, "property"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;)",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;"
        }
    .end annotation

    .line 872
    .local p2, "value":Lnet/bytebuddy/description/annotation/AnnotationValue;, "Lnet/bytebuddy/description/annotation/AnnotationValue<**>;"
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->annotationType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    invoke-static {p1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodList;

    .line 873
    .local v0, "methodDescriptions":Lnet/bytebuddy/description/method/MethodList;, "Lnet/bytebuddy/description/method/MethodList<Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;>;"
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 876
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->annotationValues:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 877
    .local v1, "annotationValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue<**>;>;"
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v2}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 880
    new-instance v2, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    iget-object v3, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->annotationType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-direct {v2, v3, v1}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/Map;)V

    return-object v2

    .line 878
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Property already defined: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 874
    .end local v1    # "annotationValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue<**>;>;"
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->annotationType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not define a property named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public define(Ljava/lang/String;Lnet/bytebuddy/description/enumeration/EnumerationDescription;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    .line 915
    invoke-static {p2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription;->of(Lnet/bytebuddy/description/enumeration/EnumerationDescription;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public define(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "typeDescription"    # Lnet/bytebuddy/description/type/TypeDescription;

    .line 960
    invoke-static {p2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForTypeDescription;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public define(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "enumerationType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p3, "value"    # Ljava/lang/String;

    .line 903
    new-instance v0, Lnet/bytebuddy/description/enumeration/EnumerationDescription$Latent;

    invoke-direct {v0, p2, p3}, Lnet/bytebuddy/description/enumeration/EnumerationDescription$Latent;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/enumeration/EnumerationDescription;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public define(Ljava/lang/String;S)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # S

    .line 1105
    invoke-static {p2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of(S)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public define(Ljava/lang/String;Z)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 1072
    invoke-static {p2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of(Z)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs defineAnnotationArray(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/annotation/Annotation;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 3
    .param p1, "property"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;[TT;)",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;"
        }
    .end annotation

    .line 1025
    .local p2, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "annotation":[Ljava/lang/annotation/Annotation;, "[TT;"
    nop

    .line 1026
    invoke-static {p2}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    new-instance v1, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;

    invoke-direct {v1, p3}, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;-><init>([Ljava/lang/annotation/Annotation;)V

    const/4 v2, 0x0

    new-array v2, v2, [Lnet/bytebuddy/description/annotation/AnnotationDescription;

    .line 1027
    invoke-virtual {v1, v2}, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lnet/bytebuddy/description/annotation/AnnotationDescription;

    .line 1025
    invoke-virtual {p0, p1, v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->defineAnnotationArray(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/annotation/AnnotationDescription;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs defineAnnotationArray(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/annotation/AnnotationDescription;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "annotationType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p3, "annotationDescription"    # [Lnet/bytebuddy/description/annotation/AnnotationDescription;

    .line 1039
    invoke-static {p2, p3}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;->of(Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/annotation/AnnotationDescription;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs defineArray(Ljava/lang/String;[B)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .line 1182
    invoke-static {p2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of([B)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs defineArray(Ljava/lang/String;[C)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # [C

    .line 1193
    invoke-static {p2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of([C)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs defineArray(Ljava/lang/String;[D)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # [D

    .line 1248
    invoke-static {p2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of([D)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs defineArray(Ljava/lang/String;[F)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # [F

    .line 1237
    invoke-static {p2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of([F)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs defineArray(Ljava/lang/String;[I)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # [I

    .line 1215
    invoke-static {p2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of([I)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs defineArray(Ljava/lang/String;[J)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # [J

    .line 1226
    invoke-static {p2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of([J)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs defineArray(Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/String;

    .line 1259
    invoke-static {p2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of([Ljava/lang/String;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs defineArray(Ljava/lang/String;[S)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # [S

    .line 1204
    invoke-static {p2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of([S)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs defineArray(Ljava/lang/String;[Z)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # [Z

    .line 1171
    invoke-static {p2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of([Z)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs defineEnumerationArray(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Enum;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 7
    .param p1, "property"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "*>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;[TT;)",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;"
        }
    .end annotation

    .line 974
    .local p2, "enumerationType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "value":[Ljava/lang/Enum;, "[TT;"
    array-length v0, p3

    new-array v0, v0, [Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    .line 975
    .local v0, "enumerationDescription":[Lnet/bytebuddy/description/enumeration/EnumerationDescription;
    const/4 v1, 0x0

    .line 976
    .local v1, "index":I
    array-length v2, p3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p3, v3

    .line 977
    .local v4, "aValue":Ljava/lang/Enum;, "TT;"
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "index":I
    .local v5, "index":I
    new-instance v6, Lnet/bytebuddy/description/enumeration/EnumerationDescription$ForLoadedEnumeration;

    invoke-direct {v6, v4}, Lnet/bytebuddy/description/enumeration/EnumerationDescription$ForLoadedEnumeration;-><init>(Ljava/lang/Enum;)V

    aput-object v6, v0, v1

    .line 976
    .end local v4    # "aValue":Ljava/lang/Enum;, "TT;"
    add-int/lit8 v3, v3, 0x1

    move v1, v5

    goto :goto_0

    .line 979
    .end local v5    # "index":I
    .restart local v1    # "index":I
    :cond_0
    invoke-static {p2}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-virtual {p0, p1, v2, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->defineEnumerationArray(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/enumeration/EnumerationDescription;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object v2

    return-object v2
.end method

.method public varargs defineEnumerationArray(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;[Ljava/lang/String;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 4
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "enumerationType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p3, "value"    # [Ljava/lang/String;

    .line 991
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 994
    array-length v0, p3

    new-array v0, v0, [Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    .line 995
    .local v0, "enumerationDescription":[Lnet/bytebuddy/description/enumeration/EnumerationDescription;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_0

    .line 996
    new-instance v2, Lnet/bytebuddy/description/enumeration/EnumerationDescription$Latent;

    aget-object v3, p3, v1

    invoke-direct {v2, p2, v3}, Lnet/bytebuddy/description/enumeration/EnumerationDescription$Latent;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 995
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 998
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->defineEnumerationArray(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/enumeration/EnumerationDescription;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object v1

    return-object v1

    .line 992
    .end local v0    # "enumerationDescription":[Lnet/bytebuddy/description/enumeration/EnumerationDescription;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not an enumeration type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs defineEnumerationArray(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/enumeration/EnumerationDescription;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "enumerationType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p3, "value"    # [Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    .line 1011
    invoke-static {p2, p3}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;->of(Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/enumeration/EnumerationDescription;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs defineTypeArray(Ljava/lang/String;[Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;"
        }
    .end annotation

    .line 1050
    .local p2, "type":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;

    invoke-direct {v0, p2}, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;-><init>([Ljava/lang/Class;)V

    const/4 v1, 0x0

    new-array v1, v1, [Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->defineTypeArray(Ljava/lang/String;[Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs defineTypeArray(Ljava/lang/String;[Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "typeDescription"    # [Lnet/bytebuddy/description/type/TypeDescription;

    .line 1061
    invoke-static {p2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;->of([Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object v0

    return-object v0
.end method

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
    iget-object v2, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->annotationType:Lnet/bytebuddy/description/type/TypeDescription;

    check-cast p1, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    iget-object v3, p1, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->annotationType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->annotationValues:Ljava/util/Map;

    iget-object p1, p1, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->annotationValues:Ljava/util/Map;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->annotationType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->annotationValues:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
