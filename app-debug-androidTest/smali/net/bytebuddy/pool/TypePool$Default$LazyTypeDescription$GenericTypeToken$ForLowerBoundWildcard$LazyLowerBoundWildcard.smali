.class public Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForLowerBoundWildcard$LazyLowerBoundWildcard;
.super Lnet/bytebuddy/description/type/TypeDescription$Generic$OfWildcardType;
.source "TypePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForLowerBoundWildcard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LazyLowerBoundWildcard"
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

.field private final boundTypeToken:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken;

.field private final typePath:Ljava/lang/String;

.field private final typePool:Lnet/bytebuddy/pool/TypePool;

.field private final typeVariableSource:Lnet/bytebuddy/description/TypeVariableSource;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/description/TypeVariableSource;Ljava/lang/String;Ljava/util/Map;Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken;)V
    .locals 0
    .param p1, "typePool"    # Lnet/bytebuddy/pool/TypePool;
    .param p2, "typeVariableSource"    # Lnet/bytebuddy/description/TypeVariableSource;
    .param p3, "typePath"    # Ljava/lang/String;
    .param p5, "boundTypeToken"    # Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/pool/TypePool;",
            "Lnet/bytebuddy/description/TypeVariableSource;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken;",
            ")V"
        }
    .end annotation

    .line 4864
    .local p4, "annotationTokens":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;>;>;"
    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfWildcardType;-><init>()V

    .line 4865
    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForLowerBoundWildcard$LazyLowerBoundWildcard;->typePool:Lnet/bytebuddy/pool/TypePool;

    .line 4866
    iput-object p2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForLowerBoundWildcard$LazyLowerBoundWildcard;->typeVariableSource:Lnet/bytebuddy/description/TypeVariableSource;

    .line 4867
    iput-object p3, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForLowerBoundWildcard$LazyLowerBoundWildcard;->typePath:Ljava/lang/String;

    .line 4868
    iput-object p4, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForLowerBoundWildcard$LazyLowerBoundWildcard;->annotationTokens:Ljava/util/Map;

    .line 4869
    iput-object p5, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForLowerBoundWildcard$LazyLowerBoundWildcard;->boundTypeToken:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken;

    .line 4870
    return-void
.end method


# virtual methods
.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 3

    .line 4890
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForLowerBoundWildcard$LazyLowerBoundWildcard;->typePool:Lnet/bytebuddy/pool/TypePool;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForLowerBoundWildcard$LazyLowerBoundWildcard;->annotationTokens:Ljava/util/Map;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForLowerBoundWildcard$LazyLowerBoundWildcard;->typePath:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationDescription;->asListOfNullable(Lnet/bytebuddy/pool/TypePool;Ljava/util/List;)Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    return-object v0
.end method

.method public getLowerBounds()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 7

    .line 4883
    new-instance v6, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$LazyTokenList$ForWildcardBound;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForLowerBoundWildcard$LazyLowerBoundWildcard;->typePool:Lnet/bytebuddy/pool/TypePool;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForLowerBoundWildcard$LazyLowerBoundWildcard;->typeVariableSource:Lnet/bytebuddy/description/TypeVariableSource;

    iget-object v3, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForLowerBoundWildcard$LazyLowerBoundWildcard;->typePath:Ljava/lang/String;

    iget-object v4, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForLowerBoundWildcard$LazyLowerBoundWildcard;->annotationTokens:Ljava/util/Map;

    iget-object v5, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForLowerBoundWildcard$LazyLowerBoundWildcard;->boundTypeToken:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$LazyTokenList$ForWildcardBound;-><init>(Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/description/TypeVariableSource;Ljava/lang/String;Ljava/util/Map;Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken;)V

    return-object v6
.end method

.method public getUpperBounds()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 4

    .line 4876
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/description/type/TypeDefinition;

    const/4 v2, 0x0

    sget-object v3, Lnet/bytebuddy/description/type/TypeDescription$Generic;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;-><init>([Lnet/bytebuddy/description/type/TypeDefinition;)V

    return-object v0
.end method
