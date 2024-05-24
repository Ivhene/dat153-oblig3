.class public Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;
.super Ljava/lang/Object;
.source "MethodUsage.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametrized;


# instance fields
.field private declaration:Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

.field private exceptionTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;",
            ">;"
        }
    .end annotation
.end field

.field private paramTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;",
            ">;"
        }
    .end annotation
.end field

.field private returnType:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

.field private typeParametersMap:Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;


# direct methods
.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;)V
    .locals 3
    .param p1, "declaration"    # Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "declaration"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->paramTypes:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->exceptionTypes:Ljava/util/List;

    .line 48
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->empty()Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->typeParametersMap:Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    .line 49
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->declaration:Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    .line 50
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;->getNumberOfParams()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 51
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->paramTypes:Ljava/util/List;

    invoke-interface {p1, v0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;->getParam(I)Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;

    move-result-object v2

    invoke-interface {v2}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;->getType()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;->getNumberOfSpecifiedExceptions()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 54
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->exceptionTypes:Ljava/util/List;

    invoke-interface {p1, v0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;->getSpecifiedException(I)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 56
    .end local v0    # "i":I
    :cond_1
    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;->getReturnType()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->returnType:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)V
    .locals 6
    .param p1, "declaration"    # Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;
    .param p3, "returnType"    # Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "declaration",
            "paramTypes",
            "returnType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;",
            ")V"
        }
    .end annotation

    .line 61
    .local p2, "paramTypes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;>;"
    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;->getSpecifiedExceptions()Ljava/util/List;

    move-result-object v4

    .line 62
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->empty()Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    move-result-object v5

    .line 61
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;-><init>(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;Ljava/util/List;)V
    .locals 6
    .param p1, "declaration"    # Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;
    .param p3, "returnType"    # Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "declaration",
            "paramTypes",
            "returnType",
            "exceptionTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;",
            ">;)V"
        }
    .end annotation

    .line 67
    .local p2, "paramTypes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;>;"
    .local p4, "exceptionTypes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;>;"
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->empty()Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;-><init>(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;)V

    .line 68
    return-void
.end method

.method private constructor <init>(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;)V
    .locals 1
    .param p1, "declaration"    # Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;
    .param p3, "returnType"    # Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .param p5, "typeParametersMap"    # Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "declaration",
            "paramTypes",
            "returnType",
            "exceptionTypes",
            "typeParametersMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;",
            ")V"
        }
    .end annotation

    .line 71
    .local p2, "paramTypes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;>;"
    .local p4, "exceptionTypes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->paramTypes:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->exceptionTypes:Ljava/util/List;

    .line 72
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->declaration:Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    .line 73
    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->paramTypes:Ljava/util/List;

    .line 74
    iput-object p3, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->returnType:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    .line 75
    iput-object p4, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->exceptionTypes:Ljava/util/List;

    .line 76
    iput-object p5, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->typeParametersMap:Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    .line 77
    return-void
.end method


# virtual methods
.method public declaringType()Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->declaration:Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    invoke-interface {v0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;->declaringType()Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public exceptionTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;",
            ">;"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->exceptionTypes:Ljava/util/List;

    return-object v0
.end method

.method public getDeclaration()Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->declaration:Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->declaration:Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    invoke-interface {v0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNoParams()I
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->paramTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getParamType(I)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->paramTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    return-object v0
.end method

.method public getParamTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->paramTypes:Ljava/util/List;

    return-object v0
.end method

.method public getQualifiedSignature()Ljava/lang/String;
    .locals 1

    .line 186
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->getDeclaration()Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;->getQualifiedSignature()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public replaceExceptionType(ILorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;
    .locals 8
    .param p1, "i"    # I
    .param p2, "replaced"    # Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "replaced"
        }
    .end annotation

    .line 120
    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->exceptionTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 123
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->exceptionTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 124
    return-object p0

    .line 126
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->exceptionTypes:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 127
    .local v0, "newTypes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;>;"
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-instance v1, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;

    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->declaration:Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    iget-object v4, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->paramTypes:Ljava/util/List;

    iget-object v5, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->returnType:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    iget-object v7, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->typeParametersMap:Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    move-object v2, v1

    move-object v6, v0

    invoke-direct/range {v2 .. v7}, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;-><init>(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;)V

    return-object v1

    .line 121
    .end local v0    # "newTypes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;>;"
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public replaceParamType(ILorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;
    .locals 8
    .param p1, "i"    # I
    .param p2, "replaced"    # Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "replaced"
        }
    .end annotation

    .line 108
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->getNoParams()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 111
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->paramTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 112
    return-object p0

    .line 114
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->paramTypes:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 115
    .local v0, "newParams":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;>;"
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-instance v1, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;

    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->declaration:Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    iget-object v5, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->returnType:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    iget-object v6, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->exceptionTypes:Ljava/util/List;

    iget-object v7, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->typeParametersMap:Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    move-object v2, v1

    move-object v4, v0

    invoke-direct/range {v2 .. v7}, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;-><init>(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;)V

    return-object v1

    .line 109
    .end local v0    # "newParams":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;>;"
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public replaceReturnType(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;
    .locals 7
    .param p1, "returnType"    # Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "returnType"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->returnType:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    if-ne p1, v0, :cond_0

    .line 133
    return-object p0

    .line 135
    :cond_0
    new-instance v0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->declaration:Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->paramTypes:Ljava/util/List;

    iget-object v5, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->exceptionTypes:Ljava/util/List;

    iget-object v6, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->typeParametersMap:Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;-><init>(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;)V

    return-object v0
.end method

.method public replaceTypeParameter(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;
    .locals 7
    .param p1, "typeParameter"    # Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;
    .param p2, "type"    # Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "typeParameter",
            "type"
        }
    .end annotation

    .line 154
    if-eqz p2, :cond_2

    .line 159
    new-instance v6, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->declaration:Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->paramTypes:Ljava/util/List;

    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->returnType:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    iget-object v4, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->exceptionTypes:Ljava/util/List;

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->typeParametersMap:Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    .line 160
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->toBuilder()Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;->setValue(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;->build()Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;-><init>(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;)V

    .line 162
    .local v0, "res":Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 163
    .local v1, "inferredTypes":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->paramTypes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 164
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->paramTypes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    .line 165
    .local v3, "originalParamType":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    invoke-interface {v3, p1, p2, v1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->replaceTypeVariables(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    move-result-object v4

    .line 166
    .local v4, "newParamType":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    invoke-virtual {v0, v2, v4}, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->replaceParamType(ILorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;

    move-result-object v0

    .line 163
    .end local v3    # "originalParamType":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .end local v4    # "newParamType":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->exceptionTypes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 169
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->exceptionTypes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    .line 170
    .local v3, "originalType":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    invoke-interface {v3, p1, p2, v1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->replaceTypeVariables(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    move-result-object v4

    .line 171
    .local v4, "newType":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    invoke-virtual {v0, v2, v4}, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->replaceExceptionType(ILorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;

    move-result-object v0

    .line 168
    .end local v3    # "originalType":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .end local v4    # "newType":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 173
    .end local v2    # "i":I
    :cond_1
    iget-object v2, v0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->returnType:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    .line 174
    .local v2, "oldReturnType":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    invoke-interface {v2, p1, p2, v1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->replaceTypeVariables(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    move-result-object v3

    .line 175
    .local v3, "newReturnType":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    invoke-virtual {v0, v3}, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->replaceReturnType(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;

    move-result-object v0

    .line 176
    return-object v0

    .line 155
    .end local v0    # "res":Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;
    .end local v1    # "inferredTypes":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;>;"
    .end local v2    # "oldReturnType":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .end local v3    # "newReturnType":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public returnType()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->returnType:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MethodUsage{declaration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->declaration:Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paramTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->paramTypes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeParametersMap()Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;->typeParametersMap:Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    return-object v0
.end method
