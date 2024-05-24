.class public Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;
.super Ljava/lang/Object;
.source "AnnotationDescription.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnnotationInvocationHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/reflect/InvocationHandler;"
    }
.end annotation


# static fields
.field private static final ANNOTATION_TYPE:Ljava/lang/String; = "annotationType"

.field private static final EQUALS:Ljava/lang/String; = "equals"

.field private static final HASH_CODE:Ljava/lang/String; = "hashCode"

.field private static final NO_ARGUMENT:[Ljava/lang/Object;

.field private static final TO_STRING:Ljava/lang/String; = "toString"


# instance fields
.field private final annotationType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private transient synthetic hashCode:I

.field private final values:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/reflect/Method;",
            "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 214
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->NO_ARGUMENT:[Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Ljava/util/LinkedHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/reflect/Method;",
            "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<",
            "*>;>;)V"
        }
    .end annotation

    .line 232
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;, "Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler<TT;>;"
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "values":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/reflect/Method;Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-object p1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->annotationType:Ljava/lang/Class;

    .line 234
    iput-object p2, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->values:Ljava/util/LinkedHashMap;

    .line 235
    return-void
.end method

.method private equalsRepresentation(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "self"    # Ljava/lang/Object;
    .param p2, "other"    # Ljava/lang/Object;

    .line 336
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;, "Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler<TT;>;"
    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    .line 337
    return v0

    .line 338
    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->annotationType:Ljava/lang/Class;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 339
    return v2

    .line 340
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 341
    invoke-static {p2}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v1

    .line 342
    .local v1, "invocationHandler":Ljava/lang/reflect/InvocationHandler;
    instance-of v3, v1, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;

    if-eqz v3, :cond_2

    .line 343
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 347
    .end local v1    # "invocationHandler":Ljava/lang/reflect/InvocationHandler;
    :cond_2
    :try_start_0
    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->values:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 349
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/Method;Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<*>;>;"
    :try_start_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Method;

    sget-object v6, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->NO_ARGUMENT:[Ljava/lang/Object;

    invoke-virtual {v5, p2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;->represents(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v4, :cond_3

    .line 350
    return v2

    .line 354
    :cond_3
    nop

    .line 355
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/Method;Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<*>;>;"
    goto :goto_0

    .line 352
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/Method;Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<*>;>;"
    :catch_0
    move-exception v0

    .line 353
    .local v0, "exception":Ljava/lang/RuntimeException;
    return v2

    .line 356
    .end local v0    # "exception":Ljava/lang/RuntimeException;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/Method;Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<*>;>;"
    :cond_4
    return v0

    .line 359
    :catch_1
    move-exception v0

    .line 360
    .local v0, "exception":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not access annotation property"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 357
    .end local v0    # "exception":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 358
    .local v0, "ignored":Ljava/lang/reflect/InvocationTargetException;
    return v2
.end method

.method private hashCodeRepresentation()I
    .locals 5

    .line 318
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;, "Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler<TT;>;"
    const/4 v0, 0x0

    .line 319
    .local v0, "hashCode":I
    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->values:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 320
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/Method;Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<*>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    invoke-interface {v3}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;->getState()Lnet/bytebuddy/description/annotation/AnnotationValue$State;

    move-result-object v3

    invoke-virtual {v3}, Lnet/bytebuddy/description/annotation/AnnotationValue$State;->isDefined()Z

    move-result v3

    if-nez v3, :cond_0

    .line 321
    goto :goto_0

    .line 323
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    mul-int/lit8 v3, v3, 0x7f

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    xor-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 324
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/Method;Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<*>;>;"
    goto :goto_0

    .line 325
    :cond_1
    return v0
.end method

.method public static of(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/annotation/Annotation;
    .locals 11
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TS;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;>;)TS;"
        }
    .end annotation

    .line 250
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    .local p2, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Lnet/bytebuddy/description/annotation/AnnotationValue<**>;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 251
    .local v0, "loadedValues":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/reflect/Method;Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<*>;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 252
    .local v5, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/bytebuddy/description/annotation/AnnotationValue;

    .line 253
    .local v6, "annotationValue":Lnet/bytebuddy/description/annotation/AnnotationValue;, "Lnet/bytebuddy/description/annotation/AnnotationValue<**>;"
    if-nez v6, :cond_1

    .line 254
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getDefaultValue()Ljava/lang/Object;

    move-result-object v7

    .line 255
    .local v7, "defaultValue":Ljava/lang/Object;
    if-nez v7, :cond_0

    new-instance v8, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingValue;

    new-instance v9, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    .line 256
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v10

    invoke-direct {v9, v10}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingValue;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;)V

    goto :goto_1

    .line 257
    :cond_0
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;->asValue(Ljava/lang/Object;Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v8

    :goto_1
    invoke-interface {v8, p0}, Lnet/bytebuddy/description/annotation/AnnotationValue;->load(Ljava/lang/ClassLoader;)Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    move-result-object v8

    .line 255
    invoke-virtual {v0, v5, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .end local v7    # "defaultValue":Ljava/lang/Object;
    goto :goto_2

    .line 259
    :cond_1
    new-instance v7, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    invoke-direct {v7, v5}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-interface {v6, v7}, Lnet/bytebuddy/description/annotation/AnnotationValue;->filter(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v7

    invoke-interface {v7, p0}, Lnet/bytebuddy/description/annotation/AnnotationValue;->load(Ljava/lang/ClassLoader;)Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "annotationValue":Lnet/bytebuddy/description/annotation/AnnotationValue;, "Lnet/bytebuddy/description/annotation/AnnotationValue<**>;"
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 262
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    aput-object p1, v1, v3

    new-instance v2, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;

    invoke-direct {v2, p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;-><init>(Ljava/lang/Class;Ljava/util/LinkedHashMap;)V

    invoke-static {p0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/annotation/Annotation;

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "other"    # Ljava/lang/Object;

    .line 377
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;, "Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler<TT;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 378
    return v0

    .line 379
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 380
    return v2

    .line 382
    :cond_1
    move-object v1, p1

    check-cast v1, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;

    .line 383
    .local v1, "that":Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;, "Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler<*>;"
    iget-object v3, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->annotationType:Ljava/lang/Class;

    iget-object v4, v1, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->annotationType:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 384
    return v2

    .line 386
    :cond_2
    iget-object v3, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->values:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 387
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/Method;Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<*>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    iget-object v6, v1, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->values:Ljava/util/LinkedHashMap;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 388
    return v2

    .line 390
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/Method;Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<*>;>;"
    :cond_3
    goto :goto_0

    .line 391
    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 6
    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "hashCode"
    .end annotation

    .line 367
    iget v0, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->hashCode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v1, p0

    goto :goto_1

    :cond_0
    move-object v0, p0

    .local v0, "this":Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;, "Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler<TT;>;"
    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->annotationType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 368
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->values:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 369
    .end local v1    # "result":I
    .local v2, "result":I
    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->values:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 370
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/Method;*>;"
    mul-int/lit8 v4, v2, 0x1f

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int v2, v4, v5

    .line 371
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/Method;*>;"
    goto :goto_0

    .line 372
    :cond_1
    move-object v1, v0

    move v0, v2

    .end local v0    # "this":Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;, "Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler<TT;>;"
    .end local v2    # "result":I
    :goto_1
    if-nez v0, :cond_2

    iget v0, v1, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->hashCode:I

    goto :goto_2

    :cond_2
    iput v0, v1, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->hashCode:I

    :goto_2
    return v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "argument"    # [Ljava/lang/Object;

    .line 269
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;, "Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler<TT;>;"
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->annotationType:Ljava/lang/Class;

    if-eq v0, v1, :cond_4

    .line 270
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hashCode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    invoke-direct {p0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->hashCodeRepresentation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 272
    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "equals"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 273
    const/4 v0, 0x0

    aget-object v0, p3, v0

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->equalsRepresentation(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 274
    :cond_1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 275
    invoke-virtual {p0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->toStringRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 276
    :cond_2
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "annotationType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 277
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->annotationType:Ljava/lang/Class;

    return-object v0

    .line 279
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_4
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->values:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    invoke-interface {v0}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;->resolve()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected toStringRepresentation()Ljava/lang/String;
    .locals 7

    .line 291
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;, "Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .local v0, "toString":Ljava/lang/StringBuilder;
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 293
    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->annotationType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 295
    const/4 v1, 0x1

    .line 296
    .local v1, "firstMember":Z
    iget-object v2, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->values:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 297
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/Method;Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<*>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    invoke-interface {v4}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;->getState()Lnet/bytebuddy/description/annotation/AnnotationValue$State;

    move-result-object v4

    invoke-virtual {v4}, Lnet/bytebuddy/description/annotation/AnnotationValue$State;->isDefined()Z

    move-result v4

    if-nez v4, :cond_0

    .line 298
    goto :goto_0

    .line 300
    :cond_0
    if-eqz v1, :cond_1

    .line 301
    const/4 v1, 0x0

    goto :goto_1

    .line 303
    :cond_1
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    :goto_1
    sget-object v4, Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher;->CURRENT:Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Method;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->values:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v4, v0, v5, v6}, Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher;->appendPrefix(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 306
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/Method;Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<*>;>;"
    goto :goto_0

    .line 308
    :cond_2
    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
