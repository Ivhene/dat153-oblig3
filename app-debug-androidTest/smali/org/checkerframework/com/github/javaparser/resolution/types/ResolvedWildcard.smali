.class public Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;
.super Ljava/lang/Object;
.source "ResolvedWildcard.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard$BoundType;
    }
.end annotation


# static fields
.field public static UNBOUNDED:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;


# instance fields
.field private boundedType:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

.field private type:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard$BoundType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;-><init>(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard$BoundType;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)V

    sput-object v0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;->UNBOUNDED:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;

    return-void
.end method

.method private constructor <init>(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard$BoundType;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)V
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard$BoundType;
    .param p2, "boundedType"    # Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "boundedType"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-nez p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 49
    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    .line 50
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 52
    :cond_3
    :goto_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;->type:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    .line 53
    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;->boundedType:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    .line 54
    return-void
.end method

.method public static extendsBound(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;
    .locals 2
    .param p0, "type"    # Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 61
    new-instance v0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;

    sget-object v1, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard$BoundType;->EXTENDS:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    invoke-direct {v0, v1, p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;-><init>(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard$BoundType;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)V

    return-object v0
.end method

.method public static superBound(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;
    .locals 2
    .param p0, "type"    # Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 57
    new-instance v0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;

    sget-object v1, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard$BoundType;->SUPER:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    invoke-direct {v0, v1, p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;-><init>(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard$BoundType;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)V

    return-object v0
.end method


# virtual methods
.method public asWildcard()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;
    .locals 0

    .line 77
    return-object p0
.end method

.method public describe()Ljava/lang/String;
    .locals 2

    .line 102
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;->type:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    if-nez v0, :cond_0

    .line 103
    const-string v0, "?"

    return-object v0

    .line 104
    :cond_0
    sget-object v1, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard$BoundType;->SUPER:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    if-ne v0, v1, :cond_1

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "? super "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;->boundedType:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    invoke-interface {v1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->describe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 106
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;->type:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    sget-object v1, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard$BoundType;->EXTENDS:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    if-ne v0, v1, :cond_2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "? extends "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;->boundedType:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    invoke-interface {v1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->describe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 109
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 82
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 83
    :cond_0
    instance-of v1, p1, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 85
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;

    .line 87
    .local v1, "that":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;->boundedType:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    if-eqz v3, :cond_2

    iget-object v4, v1, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;->boundedType:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, v1, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;->boundedType:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    if-eqz v3, :cond_3

    :goto_0
    return v2

    .line 88
    :cond_3
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;->type:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    iget-object v4, v1, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;->type:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    if-eq v3, v4, :cond_4

    return v2

    .line 90
    :cond_4
    return v0
.end method

.method public getBoundedType()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;->boundedType:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    if-eqz v0, :cond_0

    .line 129
    return-object v0

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public hashCode()I
    .locals 4

    .line 95
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;->type:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard$BoundType;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 96
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;->boundedType:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v2, v1

    .line 97
    .end local v0    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public isAssignableBy(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)Z
    .locals 3
    .param p1, "other"    # Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;->boundedType:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 136
    return v1

    .line 137
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;->type:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    sget-object v2, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard$BoundType;->SUPER:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    if-ne v0, v2, :cond_1

    .line 138
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;->boundedType:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    invoke-interface {v0, p1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->isAssignableBy(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)Z

    move-result v0

    return v0

    .line 139
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;->type:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    sget-object v2, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard$BoundType;->EXTENDS:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    if-ne v0, v2, :cond_2

    .line 140
    return v1

    .line 142
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public isBounded()Z
    .locals 1

    .line 122
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;->isSuper()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;->isExtends()Z

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

.method public isExtends()Z
    .locals 2

    .line 118
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;->type:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    sget-object v1, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard$BoundType;->EXTENDS:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLowerBounded()Z
    .locals 1

    .line 175
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;->isExtends()Z

    move-result v0

    return v0
.end method

.method public isSuper()Z
    .locals 2

    .line 114
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;->type:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    sget-object v1, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard$BoundType;->SUPER:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUpperBounded()Z
    .locals 1

    .line 171
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;->isSuper()Z

    move-result v0

    return v0
.end method

.method public isWildcard()Z
    .locals 1

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public mention(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeParameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;",
            ">;)Z"
        }
    .end annotation

    .line 167
    .local p1, "typeParameters":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;->boundedType:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->mention(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public replaceTypeVariables(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .locals 3
    .param p1, "tpToReplace"    # Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;
    .param p2, "replaced"    # Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tpToReplace",
            "replaced",
            "inferredTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;",
            "Ljava/util/Map<",
            "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;",
            ">;)",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;"
        }
    .end annotation

    .line 148
    .local p3, "inferredTypes":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;>;"
    if-eqz p2, :cond_3

    .line 151
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;->boundedType:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    if-nez v0, :cond_0

    .line 152
    return-object p0

    .line 154
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->replaceTypeVariables(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    .line 155
    .local v0, "boundedTypeReplaced":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    if-eqz v0, :cond_2

    .line 158
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;->boundedType:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    if-eq v0, v1, :cond_1

    .line 159
    new-instance v1, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;->type:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    invoke-direct {v1, v2, v0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;-><init>(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard$BoundType;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)V

    return-object v1

    .line 161
    :cond_1
    return-object p0

    .line 156
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    .line 149
    .end local v0    # "boundedTypeReplaced":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WildcardUsage{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;->type:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", boundedType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;->boundedType:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
