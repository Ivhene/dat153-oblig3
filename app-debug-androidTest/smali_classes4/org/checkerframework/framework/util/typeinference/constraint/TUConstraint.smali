.class public abstract Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;
.super Ljava/lang/Object;
.source "TUConstraint.java"


# instance fields
.field public final relatedType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

.field public final typeVariable:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

.field public final uIsArg:Z


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Z)V
    .locals 0
    .param p1, "typeVariable"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "relatedType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "uIsArg"    # Z

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;->typeVariable:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 59
    iput-object p2, p0, Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;->relatedType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 60
    iput-boolean p3, p0, Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;->uIsArg:Z

    .line 62
    invoke-static {p2}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil;->checkForUninferredTypes(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 63
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 67
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 68
    return v0

    .line 71
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 75
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;

    .line 77
    .local v2, "that":Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;
    iget-object v3, p0, Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;->typeVariable:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    iget-object v4, v2, Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;->typeVariable:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    invoke-virtual {v3, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;->relatedType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    iget-object v4, v2, Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;->relatedType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 78
    invoke-virtual {v3, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 77
    :goto_0
    return v0

    .line 72
    .end local v2    # "that":Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;->typeVariable:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    iget-object v2, p0, Lorg/checkerframework/framework/util/typeinference/constraint/TUConstraint;->relatedType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
