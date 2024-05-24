.class public Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedLambdaConstraintType;
.super Ljava/lang/Object;
.source "ResolvedLambdaConstraintType.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;


# instance fields
.field private bound:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;


# direct methods
.method private constructor <init>(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)V
    .locals 0
    .param p1, "bound"    # Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bound"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedLambdaConstraintType;->bound:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    .line 29
    return-void
.end method

.method public static bound(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedLambdaConstraintType;
    .locals 1
    .param p0, "bound"    # Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bound"
        }
    .end annotation

    .line 51
    new-instance v0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedLambdaConstraintType;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedLambdaConstraintType;-><init>(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)V

    return-object v0
.end method


# virtual methods
.method public asConstraintType()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedLambdaConstraintType;
    .locals 0

    .line 47
    return-object p0
.end method

.method public describe()Ljava/lang/String;
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "? super "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedLambdaConstraintType;->bound:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    invoke-interface {v1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->describe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBound()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedLambdaConstraintType;->bound:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    return-object v0
.end method

.method public isAssignableBy(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)Z
    .locals 1
    .param p1, "other"    # Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedLambdaConstraintType;->bound:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    invoke-interface {v0, p1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->isAssignableBy(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)Z

    move-result v0

    return v0
.end method

.method public isConstraint()Z
    .locals 1

    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LambdaConstraintType{bound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedLambdaConstraintType;->bound:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
