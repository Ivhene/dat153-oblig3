.class public Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType$LazyPrimitiveType;
.super Lnet/bytebuddy/description/type/TypeDescription$Generic$OfNonGenericType;
.source "TypePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LazyPrimitiveType"
.end annotation


# instance fields
.field private final annotationTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;"
        }
    .end annotation
.end field

.field private final typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

.field private final typePath:Ljava/lang/String;

.field private final typePool:Lnet/bytebuddy/pool/TypePool;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/String;Ljava/util/Map;Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 0
    .param p1, "typePool"    # Lnet/bytebuddy/pool/TypePool;
    .param p2, "typePath"    # Ljava/lang/String;
    .param p4, "typeDescription"    # Lnet/bytebuddy/description/type/TypeDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/pool/TypePool;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")V"
        }
    .end annotation

    .line 3373
    .local p3, "annotationTokens":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;>;>;"
    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfNonGenericType;-><init>()V

    .line 3374
    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType$LazyPrimitiveType;->typePool:Lnet/bytebuddy/pool/TypePool;

    .line 3375
    iput-object p2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType$LazyPrimitiveType;->typePath:Ljava/lang/String;

    .line 3376
    iput-object p3, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType$LazyPrimitiveType;->annotationTokens:Ljava/util/Map;

    .line 3377
    iput-object p4, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType$LazyPrimitiveType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    .line 3378
    return-void
.end method


# virtual methods
.method public asErasure()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    .line 3384
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType$LazyPrimitiveType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method

.method public bridge synthetic getComponentType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    .line 3340
    invoke-virtual {p0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType$LazyPrimitiveType;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    return-object v0
.end method

.method public getComponentType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1

    .line 3398
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-object v0
.end method

.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 3

    .line 3405
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType$LazyPrimitiveType;->typePool:Lnet/bytebuddy/pool/TypePool;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType$LazyPrimitiveType;->annotationTokens:Ljava/util/Map;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType$LazyPrimitiveType;->typePath:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationDescription;->asListOfNullable(Lnet/bytebuddy/pool/TypePool;Ljava/util/List;)Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1

    .line 3391
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-object v0
.end method
