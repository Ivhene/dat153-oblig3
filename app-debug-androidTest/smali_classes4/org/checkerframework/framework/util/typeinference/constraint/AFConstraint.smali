.class public abstract Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;
.super Ljava/lang/Object;
.source "AFConstraint.java"


# instance fields
.field public final argument:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

.field public final formalParameter:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 0
    .param p1, "argument"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "formalParameter"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;->argument:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 43
    iput-object p2, p0, Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;->formalParameter:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 44
    invoke-static {p1}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil;->checkForUninferredTypes(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected abstract construct(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 60
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 61
    return v0

    .line 64
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 68
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;

    .line 70
    .local v2, "that":Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;
    iget-object v3, p0, Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;->argument:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    iget-object v4, v2, Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;->argument:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v3, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;->formalParameter:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    iget-object v4, v2, Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;->formalParameter:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 71
    invoke-virtual {v3, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 70
    :goto_0
    return v0

    .line 65
    .end local v2    # "that":Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;->formalParameter:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    iget-object v2, p0, Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;->argument:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isIrreducible(Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljavax/lang/model/type/TypeVariable;",
            ">;)Z"
        }
    .end annotation

    .line 54
    .local p1, "targets":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/type/TypeVariable;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;->argument:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-static {v0, p1}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil;->isATarget(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;->formalParameter:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 55
    invoke-static {v0, p1}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil;->isATarget(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 54
    :goto_1
    return v0
.end method

.method public substitute(Ljava/util/Map;)Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljavax/lang/model/type/TypeVariable;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;"
        }
    .end annotation

    .line 110
    .local p1, "substitutions":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;->argument:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 111
    invoke-static {p1, v0}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil;->substitute(Ljava/util/Map;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 112
    .local v0, "newArgument":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v1, p0, Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;->formalParameter:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 113
    invoke-static {p1, v1}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil;->substitute(Ljava/util/Map;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 114
    .local v1, "newFormalParameter":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;->construct(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;

    move-result-object v2

    return-object v2
.end method

.method public abstract toTUConstraint()Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;
.end method
