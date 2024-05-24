.class public Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;
.super Ljava/lang/Object;
.source "AnnotatedTypeParameterBounds.java"


# instance fields
.field private final lower:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

.field private final upper:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 0
    .param p1, "upper"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "lower"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;->upper:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 13
    iput-object p2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;->lower:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 14
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 46
    instance-of v0, p1, Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 47
    return v1

    .line 49
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;

    .line 50
    .local v0, "other":Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;
    iget-object v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;->upper:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 51
    iget-object v2, v0, Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;->upper:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    if-nez v2, :cond_3

    move v1, v3

    goto :goto_0

    .line 52
    :cond_1
    iget-object v4, v0, Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;->upper:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;->lower:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    if-nez v2, :cond_2

    .line 53
    iget-object v2, v0, Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;->lower:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    if-nez v2, :cond_3

    move v1, v3

    goto :goto_0

    .line 54
    :cond_2
    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;->lower:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    iget-object v2, v0, Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;->lower:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 50
    :cond_3
    :goto_0
    return v1
.end method

.method public getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;->lower:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    return-object v0
.end method

.method public getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;->upper:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 41
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;->upper:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;->lower:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[extends "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;->upper:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " super "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;->lower:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 2
    .param p1, "verbose"    # Z

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[extends "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;->upper:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v1, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " super "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;->lower:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v1, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
