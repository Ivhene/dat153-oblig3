.class public Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;
.super Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;
.source "TypeDescription.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForLoadedType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;
    }
.end annotation


# static fields
.field private static final DISPATCHER:Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;

.field private static final TYPE_CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient synthetic declaredAnnotations:Lnet/bytebuddy/description/annotation/AnnotationList;

.field private transient synthetic declaredFields:Lnet/bytebuddy/description/field/FieldList;

.field private transient synthetic declaredMethods:Lnet/bytebuddy/description/method/MethodList;

.field private transient synthetic getClassFileVersion_wp1eqYxw:Lnet/bytebuddy/ClassFileVersion;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 8315
    nop

    .line 8282
    const-class v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;

    invoke-static {v0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->of(Ljava/lang/Class;)Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;

    sput-object v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->DISPATCHER:Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;

    .line 8294
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->TYPE_CACHE:Ljava/util/Map;

    .line 8295
    const-class v1, Lnet/bytebuddy/dynamic/TargetType;

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    const-class v3, Lnet/bytebuddy/dynamic/TargetType;

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8296
    const-class v1, Ljava/lang/Object;

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    const-class v3, Ljava/lang/Object;

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8297
    const-class v1, Ljava/lang/String;

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    const-class v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8298
    const-class v1, Ljava/lang/Boolean;

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    const-class v3, Ljava/lang/Boolean;

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8299
    const-class v1, Ljava/lang/Byte;

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    const-class v3, Ljava/lang/Byte;

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8300
    const-class v1, Ljava/lang/Short;

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    const-class v3, Ljava/lang/Short;

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8301
    const-class v1, Ljava/lang/Character;

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    const-class v3, Ljava/lang/Character;

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8302
    const-class v1, Ljava/lang/Integer;

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    const-class v3, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8303
    const-class v1, Ljava/lang/Long;

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    const-class v3, Ljava/lang/Long;

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8304
    const-class v1, Ljava/lang/Float;

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    const-class v3, Ljava/lang/Float;

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8305
    const-class v1, Ljava/lang/Double;

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    const-class v3, Ljava/lang/Double;

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8306
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8307
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8308
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8309
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8310
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8311
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8312
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8313
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8314
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8315
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 8328
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;-><init>()V

    .line 8329
    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    .line 8330
    return-void
.end method

.method static synthetic access$300()Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;
    .locals 1

    .line 8272
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->DISPATCHER:Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;

    return-object v0
.end method

.method public static getName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 8341
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 8342
    .local v0, "name":Ljava/lang/String;
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 8343
    .local v1, "anonymousLoaderIndex":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    move-object v2, v0

    goto :goto_0

    .line 8345
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 8343
    :goto_0
    return-object v2
.end method

.method public static of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/description/type/TypeDescription;"
        }
    .end annotation

    .line 8355
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->TYPE_CACHE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription;

    .line 8356
    .local v0, "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    if-nez v0, :cond_0

    new-instance v1, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    invoke-direct {v1, p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method


# virtual methods
.method public asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1

    .line 8646
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfNonGenericType$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    return-object v0
.end method

.method public getCanonicalName()Ljava/lang/String;
    .locals 5

    .line 8588
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 8589
    .local v0, "canonicalName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 8590
    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->NO_NAME:Ljava/lang/String;

    return-object v1

    .line 8592
    :cond_0
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 8593
    .local v1, "anonymousLoaderIndex":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 8594
    return-object v0

    .line 8596
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8597
    .local v2, "normalized":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    .line 8598
    .local v3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8599
    const-string v4, "[]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8600
    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    goto :goto_0

    .line 8602
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getClassFileVersion()Lnet/bytebuddy/ClassFileVersion;
    .locals 3
    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
    .end annotation

    .line 8719
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getClassFileVersion_wp1eqYxw:Lnet/bytebuddy/ClassFileVersion;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    move-object v0, p0

    .local v0, "this":Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;
    :try_start_0
    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-static {v2}, Lnet/bytebuddy/ClassFileVersion;->of(Ljava/lang/Class;)Lnet/bytebuddy/ClassFileVersion;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 8720
    :catchall_0
    move-exception v2

    .line 8721
    .local v2, "ignored":Ljava/lang/Throwable;
    nop

    .end local v0    # "this":Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;
    .end local v2    # "ignored":Ljava/lang/Throwable;
    :goto_0
    if-nez v1, :cond_1

    iget-object v1, v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getClassFileVersion_wp1eqYxw:Lnet/bytebuddy/ClassFileVersion;

    move-object v0, v1

    check-cast v0, Lnet/bytebuddy/ClassFileVersion;

    goto :goto_1

    :cond_1
    iput-object v1, v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getClassFileVersion_wp1eqYxw:Lnet/bytebuddy/ClassFileVersion;

    :goto_1
    return-object v1
.end method

.method public bridge synthetic getComponentType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    .line 8271
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getComponentType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 2

    .line 8401
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 8402
    .local v0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;

    goto :goto_0

    .line 8404
    :cond_0
    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    .line 8402
    :goto_0
    return-object v1
.end method

.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 4
    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "declaredAnnotations"
    .end annotation

    .line 8639
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->declaredAnnotations:Lnet/bytebuddy/description/annotation/AnnotationList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v1, p0

    goto :goto_0

    :cond_0
    move-object v0, p0

    .local v0, "this":Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;
    new-instance v1, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;

    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;-><init>([Ljava/lang/annotation/Annotation;)V

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .end local v0    # "this":Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;
    :goto_0
    if-nez v0, :cond_1

    iget-object v0, v1, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->declaredAnnotations:Lnet/bytebuddy/description/annotation/AnnotationList;

    move-object v1, v0

    check-cast v1, Lnet/bytebuddy/description/annotation/AnnotationList;

    goto :goto_1

    :cond_1
    iput-object v0, v1, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->declaredAnnotations:Lnet/bytebuddy/description/annotation/AnnotationList;

    :goto_1
    return-object v0
.end method

.method public getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/field/FieldList<",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "declaredFields"
    .end annotation

    .line 8539
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->declaredFields:Lnet/bytebuddy/description/field/FieldList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v1, p0

    goto :goto_0

    :cond_0
    move-object v0, p0

    .local v0, "this":Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;
    new-instance v1, Lnet/bytebuddy/description/field/FieldList$ForLoadedFields;

    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/bytebuddy/description/field/FieldList$ForLoadedFields;-><init>([Ljava/lang/reflect/Field;)V

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .end local v0    # "this":Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;
    :goto_0
    if-nez v0, :cond_1

    iget-object v0, v1, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->declaredFields:Lnet/bytebuddy/description/field/FieldList;

    move-object v1, v0

    check-cast v1, Lnet/bytebuddy/description/field/FieldList;

    goto :goto_1

    :cond_1
    iput-object v0, v1, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->declaredFields:Lnet/bytebuddy/description/field/FieldList;

    :goto_1
    return-object v0
.end method

.method public getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/method/MethodList<",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "declaredMethods"
    .end annotation

    .line 8547
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->declaredMethods:Lnet/bytebuddy/description/method/MethodList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v1, p0

    goto :goto_0

    :cond_0
    move-object v0, p0

    .local v0, "this":Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;
    new-instance v1, Lnet/bytebuddy/description/method/MethodList$ForLoadedMethods;

    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-direct {v1, v2}, Lnet/bytebuddy/description/method/MethodList$ForLoadedMethods;-><init>(Ljava/lang/Class;)V

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .end local v0    # "this":Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;
    :goto_0
    if-nez v0, :cond_1

    iget-object v0, v1, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->declaredMethods:Lnet/bytebuddy/description/method/MethodList;

    move-object v1, v0

    check-cast v1, Lnet/bytebuddy/description/method/MethodList;

    goto :goto_1

    :cond_1
    iput-object v0, v1, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->declaredMethods:Lnet/bytebuddy/description/method/MethodList;

    :goto_1
    return-object v0
.end method

.method public getDeclaredTypes()Lnet/bytebuddy/description/type/TypeList;
    .locals 2

    .line 8493
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;-><init>([Ljava/lang/Class;)V

    return-object v0
.end method

.method public bridge synthetic getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    .line 8271
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 2

    .line 8458
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 8459
    .local v0, "declaringType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;

    goto :goto_0

    .line 8461
    :cond_0
    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    .line 8459
    :goto_0
    return-object v1
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 6

    .line 8610
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 8611
    .local v0, "name":Ljava/lang/String;
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 8612
    .local v2, "anonymousLoaderIndex":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    .line 8613
    invoke-static {v1}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "L"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8614
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2e

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8612
    :goto_0
    return-object v1
.end method

.method public getEnclosingMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 3

    .line 8468
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 8469
    .local v0, "enclosingMethod":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getEnclosingConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 8470
    .local v1, "enclosingConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-eqz v0, :cond_0

    .line 8471
    new-instance v2, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    invoke-direct {v2, v0}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    return-object v2

    .line 8472
    :cond_0
    if-eqz v1, :cond_1

    .line 8473
    new-instance v2, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;

    invoke-direct {v2, v1}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;-><init>(Ljava/lang/reflect/Constructor;)V

    return-object v2

    .line 8475
    :cond_1
    sget-object v2, Lnet/bytebuddy/description/method/MethodDescription;->UNDEFINED:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v2
.end method

.method public getEnclosingType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 2

    .line 8483
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    .line 8484
    .local v0, "enclosingType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;

    goto :goto_0

    .line 8486
    :cond_0
    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    .line 8484
    :goto_0
    return-object v1
.end method

.method public getInterfaces()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 2

    .line 8444
    sget-boolean v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->RAW_TYPES:Z

    if-eqz v0, :cond_1

    .line 8445
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->ARRAY_INTERFACES:Lnet/bytebuddy/description/type/TypeList$Generic;

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Generic$ForLoadedTypes;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    .line 8447
    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeList$Generic$ForLoadedTypes;-><init>([Ljava/lang/reflect/Type;)V

    .line 8445
    :goto_0
    return-object v0

    .line 8449
    :cond_1
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->ARRAY_INTERFACES:Lnet/bytebuddy/description/type/TypeList$Generic;

    goto :goto_1

    :cond_2
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Generic$OfLoadedInterfaceTypes;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeList$Generic$OfLoadedInterfaceTypes;-><init>(Ljava/lang/Class;)V

    :goto_1
    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    .line 8621
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 8581
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNestHost()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 2

    .line 8653
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->DISPATCHER:Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;->getNestHost(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 8654
    .local v0, "host":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getNestMembers()Lnet/bytebuddy/description/type/TypeList;
    .locals 5

    .line 8661
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->DISPATCHER:Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;->getNestMembers(Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v0

    .line 8662
    .local v0, "member":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v1, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;

    array-length v2, v0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    iget-object v4, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    aput-object v4, v2, v3

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    invoke-direct {v1, v2}, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;-><init>([Ljava/lang/Class;)V

    return-object v1
.end method

.method public getPackage()Lnet/bytebuddy/description/type/PackageDescription;
    .locals 5

    .line 8554
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 8557
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    .line 8558
    .local v0, "aPackage":Ljava/lang/Package;
    if-nez v0, :cond_2

    .line 8559
    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 8560
    .local v1, "name":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 8561
    .local v2, "index":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    new-instance v3, Lnet/bytebuddy/description/type/PackageDescription$Simple;

    const-string v4, ""

    invoke-direct {v3, v4}, Lnet/bytebuddy/description/type/PackageDescription$Simple;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v3, Lnet/bytebuddy/description/type/PackageDescription$Simple;

    .line 8563
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lnet/bytebuddy/description/type/PackageDescription$Simple;-><init>(Ljava/lang/String;)V

    .line 8561
    :goto_0
    return-object v3

    .line 8565
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "index":I
    :cond_2
    new-instance v1, Lnet/bytebuddy/description/type/PackageDescription$ForLoadedPackage;

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/type/PackageDescription$ForLoadedPackage;-><init>(Ljava/lang/Package;)V

    return-object v1

    .line 8555
    .end local v0    # "aPackage":Ljava/lang/Package;
    :cond_3
    :goto_1
    sget-object v0, Lnet/bytebuddy/description/type/PackageDescription;->UNDEFINED:Lnet/bytebuddy/description/type/PackageDescription;

    return-object v0
.end method

.method public getPermittedSubtypes()Lnet/bytebuddy/description/type/TypeList;
    .locals 2

    .line 8709
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->DISPATCHER:Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;->getPermittedSubclasses(Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v0

    .line 8710
    .local v0, "permittedSubclass":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    new-instance v1, Lnet/bytebuddy/description/type/TypeList$Empty;

    invoke-direct {v1}, Lnet/bytebuddy/description/type/TypeList$Empty;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;-><init>([Ljava/lang/Class;)V

    :goto_0
    check-cast v1, Lnet/bytebuddy/description/type/TypeList;

    return-object v1
.end method

.method public getRecordComponents()Lnet/bytebuddy/description/type/RecordComponentList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/type/RecordComponentList<",
            "Lnet/bytebuddy/description/type/RecordComponentDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    .line 8687
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->DISPATCHER:Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;->getRecordComponents(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 8688
    .local v0, "recordComponent":[Ljava/lang/Object;
    if-nez v0, :cond_0

    new-instance v1, Lnet/bytebuddy/description/type/RecordComponentList$Empty;

    invoke-direct {v1}, Lnet/bytebuddy/description/type/RecordComponentList$Empty;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lnet/bytebuddy/description/type/RecordComponentList$ForLoadedRecordComponents;

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/type/RecordComponentList$ForLoadedRecordComponents;-><init>([Ljava/lang/Object;)V

    :goto_0
    check-cast v1, Lnet/bytebuddy/description/type/RecordComponentList;

    return-object v1
.end method

.method public getSimpleName()Ljava/lang/String;
    .locals 5

    .line 8500
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 8501
    .local v0, "simpleName":Ljava/lang/String;
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 8502
    .local v1, "anonymousLoaderIndex":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 8503
    return-object v0

    .line 8505
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8506
    .local v2, "normalized":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    .line 8507
    .local v3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8508
    const-string v4, "[]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8509
    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    goto :goto_0

    .line 8511
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;
    .locals 1

    .line 8574
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/StackSize;->of(Ljava/lang/Class;)Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v0

    return-object v0
.end method

.method public getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 2

    .line 8430
    sget-boolean v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->RAW_TYPES:Z

    if-eqz v0, :cond_1

    .line 8431
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    .line 8433
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfNonGenericType$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    .line 8431
    :goto_0
    return-object v0

    .line 8435
    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    goto :goto_1

    :cond_2
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$ForLoadedSuperClass;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$ForLoadedSuperClass;-><init>(Ljava/lang/Class;)V

    :goto_1
    return-object v0
.end method

.method public getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 1

    .line 8628
    sget-boolean v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->RAW_TYPES:Z

    if-eqz v0, :cond_0

    .line 8629
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Generic$Empty;

    invoke-direct {v0}, Lnet/bytebuddy/description/type/TypeList$Generic$Empty;-><init>()V

    return-object v0

    .line 8631
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeList$Generic$ForLoadedTypes$OfTypeVariables;->of(Ljava/lang/reflect/GenericDeclaration;)Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    return-object v0
.end method

.method public isAnnotation()Z
    .locals 1

    .line 8423
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    return v0
.end method

.method public isAnonymousType()Z
    .locals 1

    .line 8519
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    return v0
.end method

.method public isArray()Z
    .locals 1

    .line 8411
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    return v0
.end method

.method public isAssignableFrom(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 8363
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableFrom(Ljava/lang/Class;)Z

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

.method public isAssignableFrom(Lnet/bytebuddy/description/type/TypeDescription;)Z
    .locals 2
    .param p1, "typeDescription"    # Lnet/bytebuddy/description/type/TypeDescription;

    .line 8368
    instance-of v0, p1, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    move-object v1, p1

    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    iget-object v1, v1, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableFrom(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAssignableTo(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 8373
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableTo(Ljava/lang/Class;)Z

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

.method public isAssignableTo(Lnet/bytebuddy/description/type/TypeDescription;)Z
    .locals 2
    .param p1, "typeDescription"    # Lnet/bytebuddy/description/type/TypeDescription;

    .line 8378
    instance-of v0, p1, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    iget-object v0, v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInHierarchyWith(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 8383
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isInHierarchyWith(Ljava/lang/Class;)Z

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

.method public isInHierarchyWith(Lnet/bytebuddy/description/type/TypeDescription;)Z
    .locals 2
    .param p1, "typeDescription"    # Lnet/bytebuddy/description/type/TypeDescription;

    .line 8388
    instance-of v0, p1, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    iget-object v0, v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    move-object v1, p1

    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    iget-object v1, v1, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    .line 8389
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isInHierarchyWith(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 8388
    :goto_0
    return v0
.end method

.method public isLocalType()Z
    .locals 1

    .line 8526
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isLocalClass()Z

    move-result v0

    return v0
.end method

.method public isMemberType()Z
    .locals 1

    .line 8531
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    return v0
.end method

.method public isNestHost()Z
    .locals 2

    .line 8669
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->DISPATCHER:Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;->getNestHost(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 8670
    .local v0, "host":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_1

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public isNestMateOf(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 8675
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->DISPATCHER:Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-interface {v0, v1, p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;->isNestmateOf(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-super {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isNestMateOf(Lnet/bytebuddy/description/type/TypeDescription;)Z

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

.method public isNestMateOf(Lnet/bytebuddy/description/type/TypeDescription;)Z
    .locals 3
    .param p1, "typeDescription"    # Lnet/bytebuddy/description/type/TypeDescription;

    .line 8680
    instance-of v0, p1, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->DISPATCHER:Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    move-object v2, p1

    check-cast v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    iget-object v2, v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;->isNestmateOf(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isNestMateOf(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrimitive()Z
    .locals 1

    .line 8418
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    return v0
.end method

.method public isRecord()Z
    .locals 2

    .line 8697
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->DISPATCHER:Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;->isRecord(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isSealed()Z
    .locals 2

    .line 8702
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->DISPATCHER:Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;->isSealed(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public represents(Ljava/lang/reflect/Type;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .line 8394
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

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
