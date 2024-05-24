.class public Lorg/checkerframework/framework/util/typeinference/constraint/FIsA;
.super Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;
.source "FIsA.java"


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 0
    .param p1, "parameter"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "argument"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 15
    invoke-direct {p0, p2, p1}, Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected bridge synthetic construct(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;
    .locals 0

    .line 11
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/typeinference/constraint/FIsA;->construct(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/util/typeinference/constraint/FIsA;

    move-result-object p1

    return-object p1
.end method

.method protected construct(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/util/typeinference/constraint/FIsA;
    .locals 1
    .param p1, "newArgument"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "newFormalParameter"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 26
    new-instance v0, Lorg/checkerframework/framework/util/typeinference/constraint/FIsA;

    invoke-direct {v0, p2, p1}, Lorg/checkerframework/framework/util/typeinference/constraint/FIsA;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FisA( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/framework/util/typeinference/constraint/FIsA;->formalParameter:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/framework/util/typeinference/constraint/FIsA;->argument:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTUConstraint()Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;
    .locals 4

    .line 20
    new-instance v0, Lorg/checkerframework/framework/util/typeinference/constraint/TIsU;

    iget-object v1, p0, Lorg/checkerframework/framework/util/typeinference/constraint/FIsA;->formalParameter:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    iget-object v2, p0, Lorg/checkerframework/framework/util/typeinference/constraint/FIsA;->argument:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/checkerframework/framework/util/typeinference/constraint/TIsU;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Z)V

    return-object v0
.end method
