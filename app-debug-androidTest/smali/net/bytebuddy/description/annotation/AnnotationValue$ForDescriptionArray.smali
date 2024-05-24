.class public Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;
.super Lnet/bytebuddy/description/annotation/AnnotationValue$AbstractBase;
.source "AnnotationValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForDescriptionArray"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/bytebuddy/description/annotation/AnnotationValue$AbstractBase<",
        "TU;TV;>;"
    }
.end annotation


# instance fields
.field private final componentType:Lnet/bytebuddy/description/type/TypeDescription;

.field private transient synthetic hashCode:I

.field private final unloadedComponentType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V
    .locals 0
    .param p2, "componentType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;>;)V"
        }
    .end annotation

    .line 2210
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray<TU;TV;>;"
    .local p1, "unloadedComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "values":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/description/annotation/AnnotationValue<**>;>;"
    invoke-direct {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$AbstractBase;-><init>()V

    .line 2211
    iput-object p1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;->unloadedComponentType:Ljava/lang/Class;

    .line 2212
    iput-object p2, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;->componentType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 2213
    iput-object p3, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;->values:Ljava/util/List;

    .line 2214
    return-void
.end method

.method public static of(Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/annotation/AnnotationDescription;)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 5
    .param p0, "annotationType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p1, "annotationDescription"    # [Lnet/bytebuddy/description/annotation/AnnotationDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<W::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "[",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ")",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "[",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            "[TW;>;"
        }
    .end annotation

    .line 2246
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2247
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/description/annotation/AnnotationValue<Lnet/bytebuddy/description/annotation/AnnotationDescription;TW;>;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 2248
    .local v3, "value":Lnet/bytebuddy/description/annotation/AnnotationDescription;
    invoke-interface {v3}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2251
    new-instance v4, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;

    invoke-direct {v4, v3}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;-><init>(Lnet/bytebuddy/description/annotation/AnnotationDescription;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2247
    .end local v3    # "value":Lnet/bytebuddy/description/annotation/AnnotationDescription;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2249
    .restart local v3    # "value":Lnet/bytebuddy/description/annotation/AnnotationDescription;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " is not of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2253
    .end local v3    # "value":Lnet/bytebuddy/description/annotation/AnnotationDescription;
    :cond_1
    new-instance v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;

    const-class v2, Lnet/bytebuddy/description/annotation/AnnotationDescription;

    invoke-direct {v1, v2, p0, v0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;-><init>(Ljava/lang/Class;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v1
.end method

.method public static of(Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/enumeration/EnumerationDescription;)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 5
    .param p0, "enumerationType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p1, "enumerationDescription"    # [Lnet/bytebuddy/description/enumeration/EnumerationDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<W:",
            "Ljava/lang/Enum<",
            "TW;>;>(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "[",
            "Lnet/bytebuddy/description/enumeration/EnumerationDescription;",
            ")",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "[",
            "Lnet/bytebuddy/description/enumeration/EnumerationDescription;",
            "[TW;>;"
        }
    .end annotation

    .line 2226
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2227
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/description/annotation/AnnotationValue<Lnet/bytebuddy/description/enumeration/EnumerationDescription;TW;>;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 2228
    .local v3, "value":Lnet/bytebuddy/description/enumeration/EnumerationDescription;
    invoke-interface {v3}, Lnet/bytebuddy/description/enumeration/EnumerationDescription;->getEnumerationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2231
    invoke-static {v3}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription;->of(Lnet/bytebuddy/description/enumeration/EnumerationDescription;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2227
    .end local v3    # "value":Lnet/bytebuddy/description/enumeration/EnumerationDescription;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2229
    .restart local v3    # "value":Lnet/bytebuddy/description/enumeration/EnumerationDescription;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " is not of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2233
    .end local v3    # "value":Lnet/bytebuddy/description/enumeration/EnumerationDescription;
    :cond_1
    new-instance v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;

    const-class v2, Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    invoke-direct {v1, v2, p0, v0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;-><init>(Ljava/lang/Class;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v1
.end method

.method public static of([Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 5
    .param p0, "typeDescription"    # [Lnet/bytebuddy/description/type/TypeDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "[",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "[",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 2264
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2265
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/description/annotation/AnnotationValue<Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/Class<*>;>;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 2266
    .local v3, "value":Lnet/bytebuddy/description/type/TypeDescription;
    invoke-static {v3}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForTypeDescription;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2265
    .end local v3    # "value":Lnet/bytebuddy/description/type/TypeDescription;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2268
    :cond_0
    new-instance v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;

    const-class v2, Lnet/bytebuddy/description/type/TypeDescription;

    sget-object v3, Lnet/bytebuddy/description/type/TypeDescription;->CLASS:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-direct {v1, v2, v3, v0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;-><init>(Ljava/lang/Class;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "other"    # Ljava/lang/Object;

    .line 2344
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray<TU;TV;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 2345
    return v0

    .line 2346
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/description/annotation/AnnotationValue;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 2347
    return v2

    .line 2349
    :cond_1
    move-object v1, p1

    check-cast v1, Lnet/bytebuddy/description/annotation/AnnotationValue;

    .line 2350
    .local v1, "annotationValue":Lnet/bytebuddy/description/annotation/AnnotationValue;, "Lnet/bytebuddy/description/annotation/AnnotationValue<**>;"
    invoke-interface {v1}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve()Ljava/lang/Object;

    move-result-object v3

    .line 2351
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 2354
    :cond_2
    iget-object v4, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;->values:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 2355
    return v2

    .line 2357
    :cond_3
    iget-object v4, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;->values:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2358
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lnet/bytebuddy/description/annotation/AnnotationValue<**>;>;"
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_0
    iget-object v6, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;->values:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 2359
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/bytebuddy/description/annotation/AnnotationValue;

    .line 2360
    .local v6, "self":Lnet/bytebuddy/description/annotation/AnnotationValue;, "Lnet/bytebuddy/description/annotation/AnnotationValue<**>;"
    invoke-interface {v6}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 2361
    return v2

    .line 2358
    .end local v6    # "self":Lnet/bytebuddy/description/annotation/AnnotationValue;, "Lnet/bytebuddy/description/annotation/AnnotationValue<**>;"
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2364
    .end local v5    # "index":I
    :cond_5
    return v0

    .line 2352
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lnet/bytebuddy/description/annotation/AnnotationValue<**>;>;"
    :cond_6
    :goto_1
    return v2
.end method

.method public filter(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 4
    .param p1, "property"    # Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .param p2, "typeDefinition"    # Lnet/bytebuddy/description/type/TypeDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ")",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "TU;TV;>;"
        }
    .end annotation

    .line 2290
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray<TU;TV;>;"
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDefinition;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDefinition;->getComponentType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;->componentType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2291
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/annotation/AnnotationValue;

    .line 2292
    .local v1, "value":Lnet/bytebuddy/description/annotation/AnnotationValue;, "Lnet/bytebuddy/description/annotation/AnnotationValue<**>;"
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDefinition;->getComponentType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lnet/bytebuddy/description/annotation/AnnotationValue;->filter(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v1

    .line 2293
    invoke-interface {v1}, Lnet/bytebuddy/description/annotation/AnnotationValue;->getState()Lnet/bytebuddy/description/annotation/AnnotationValue$State;

    move-result-object v2

    sget-object v3, Lnet/bytebuddy/description/annotation/AnnotationValue$State;->RESOLVED:Lnet/bytebuddy/description/annotation/AnnotationValue$State;

    if-eq v2, v3, :cond_0

    .line 2294
    return-object v1

    .line 2296
    .end local v1    # "value":Lnet/bytebuddy/description/annotation/AnnotationValue;, "Lnet/bytebuddy/description/annotation/AnnotationValue<**>;"
    :cond_0
    goto :goto_0

    .line 2297
    :cond_1
    return-object p0

    .line 2299
    :cond_2
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType;

    sget-object v1, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->CURRENT:Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    iget-object v2, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;->componentType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {v2}, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->toArrayErrorString(Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/lang/String;)V

    return-object v0
.end method

.method public getSort()Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;
    .locals 1

    .line 2282
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray<TU;TV;>;"
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->ARRAY:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    return-object v0
.end method

.method public getState()Lnet/bytebuddy/description/annotation/AnnotationValue$State;
    .locals 1

    .line 2275
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray<TU;TV;>;"
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$State;->RESOLVED:Lnet/bytebuddy/description/annotation/AnnotationValue$State;

    return-object v0
.end method

.method public hashCode()I
    .locals 7
    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "hashCode"
    .end annotation

    .line 2335
    iget v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;->hashCode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v1, p0

    goto :goto_1

    :cond_0
    move-object v0, p0

    .local v0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray<TU;TV;>;"
    const/4 v1, 0x1

    .line 2336
    .local v1, "result":I
    iget-object v2, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;->values:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/annotation/AnnotationValue;

    .line 2337
    .local v3, "value":Lnet/bytebuddy/description/annotation/AnnotationValue;, "Lnet/bytebuddy/description/annotation/AnnotationValue<**>;"
    mul-int/lit8 v4, v1, 0x1f

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int v1, v4, v5

    .line 2338
    .end local v3    # "value":Lnet/bytebuddy/description/annotation/AnnotationValue;, "Lnet/bytebuddy/description/annotation/AnnotationValue<**>;"
    goto :goto_0

    .line 2339
    :cond_1
    move v6, v1

    move-object v1, v0

    move v0, v6

    .end local v0    # "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray<TU;TV;>;"
    .end local v1    # "result":I
    :goto_1
    if-nez v0, :cond_2

    iget v0, v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;->hashCode:I

    goto :goto_2

    :cond_2
    iput v0, v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;->hashCode:I

    :goto_2
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
            "TV;>;"
        }
    .end annotation

    .line 2321
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray<TU;TV;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;->values:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2322
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<*>;>;"
    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;->values:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/annotation/AnnotationValue;

    .line 2323
    .local v2, "value":Lnet/bytebuddy/description/annotation/AnnotationValue;, "Lnet/bytebuddy/description/annotation/AnnotationValue<**>;"
    invoke-interface {v2, p1}, Lnet/bytebuddy/description/annotation/AnnotationValue;->load(Ljava/lang/ClassLoader;)Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2324
    .end local v2    # "value":Lnet/bytebuddy/description/annotation/AnnotationValue;, "Lnet/bytebuddy/description/annotation/AnnotationValue<**>;"
    goto :goto_0

    .line 2326
    :cond_0
    :try_start_0
    new-instance v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded;

    iget-object v2, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;->componentType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded;-><init>(Ljava/lang/Class;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2327
    :catch_0
    move-exception v1

    .line 2328
    .local v1, "exception":Ljava/lang/ClassNotFoundException;
    new-instance v2, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingType$Loaded;

    iget-object v3, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;->componentType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingType$Loaded;-><init>(Ljava/lang/String;Ljava/lang/ClassNotFoundException;)V

    return-object v2
.end method

.method public resolve()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .line 2308
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray<TU;TV;>;"
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;->unloadedComponentType:Ljava/lang/Class;

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;->values:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 2309
    .local v0, "resolved":Ljava/lang/Object;, "TU;"
    const/4 v1, 0x0

    .line 2310
    .local v1, "index":I
    iget-object v2, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;->values:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/annotation/AnnotationValue;

    .line 2311
    .local v3, "value":Lnet/bytebuddy/description/annotation/AnnotationValue;, "Lnet/bytebuddy/description/annotation/AnnotationValue<**>;"
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "index":I
    .local v4, "index":I
    invoke-interface {v3}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v1, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 2312
    .end local v3    # "value":Lnet/bytebuddy/description/annotation/AnnotationValue;, "Lnet/bytebuddy/description/annotation/AnnotationValue<**>;"
    move v1, v4

    goto :goto_0

    .line 2313
    .end local v4    # "index":I
    .restart local v1    # "index":I
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2369
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray<TU;TV;>;"
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->CURRENT:Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;->values:Ljava/util/List;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->toSourceString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
