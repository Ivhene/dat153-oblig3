.class public Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;
.super Ljava/lang/Object;
.source "ResolvedTypeParameterDeclaration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bound"
.end annotation


# instance fields
.field private extendsBound:Z

.field private type:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;


# direct methods
.method private constructor <init>(ZLorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)V
    .locals 0
    .param p1, "extendsBound"    # Z
    .param p2, "type"    # Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "extendsBound",
            "type"
        }
    .end annotation

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-boolean p1, p0, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->extendsBound:Z

    .line 234
    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->type:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    .line 235
    return-void
.end method

.method public static extendsBound(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;
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

    .line 244
    new-instance v0, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;-><init>(ZLorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)V

    return-object v0
.end method

.method public static superBound(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;
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

    .line 254
    new-instance v0, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;-><init>(ZLorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)V

    return-object v0
.end method


# virtual methods
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

    .line 288
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 289
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 291
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;

    .line 293
    .local v2, "bound":Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;
    iget-boolean v3, p0, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->extendsBound:Z

    iget-boolean v4, v2, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->extendsBound:Z

    if-eq v3, v4, :cond_2

    return v1

    .line 294
    :cond_2
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->type:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    if-eqz v3, :cond_3

    iget-object v0, v2, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->type:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v3, v2, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->type:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    return v0

    .line 289
    .end local v2    # "bound":Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;
    :cond_5
    :goto_1
    return v1
.end method

.method public getType()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .locals 1

    .line 261
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->type:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 299
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->extendsBound:Z

    .line 300
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->type:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    .line 301
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public isExtends()Z
    .locals 1

    .line 268
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->extendsBound:Z

    return v0
.end method

.method public isSuper()Z
    .locals 1

    .line 275
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->isExtends()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bound{extendsBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->extendsBound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->type:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
