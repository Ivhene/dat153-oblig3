.class public Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;
.super Ljava/lang/Object;
.source "ResolvedTypeParametersMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private nameToDeclaration:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;",
            ">;"
        }
    .end annotation
.end field

.field private nameToValue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;->nameToValue:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;->nameToDeclaration:Ljava/util/Map;

    .line 44
    return-void
.end method

.method private constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nameToValue",
            "nameToDeclaration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;",
            ">;)V"
        }
    .end annotation

    .line 47
    .local p1, "nameToValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;>;"
    .local p2, "nameToDeclaration":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;->nameToValue:Ljava/util/Map;

    .line 49
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;->nameToDeclaration:Ljava/util/Map;

    .line 51
    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Ljava/util/Map;Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Map;
    .param p2, "x1"    # Ljava/util/Map;
    .param p3, "x2"    # Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$1;

    .line 37
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public build()Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;
    .locals 4

    .line 55
    new-instance v0, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;->nameToValue:Ljava/util/Map;

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;->nameToDeclaration:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;-><init>(Ljava/util/Map;Ljava/util/Map;Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$1;)V

    return-object v0
.end method

.method public setValue(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;
    .locals 2
    .param p1, "typeParameter"    # Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;
    .param p2, "value"    # Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "typeParameter",
            "value"
        }
    .end annotation

    .line 61
    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "qualifiedName":Ljava/lang/String;
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;->nameToValue:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;->nameToDeclaration:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-object p0
.end method
