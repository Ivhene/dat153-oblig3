.class public Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner;
.super Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;
.source "SimpleAnnotatedTypeScanner.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner<",
        "TR;TP;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner;, "Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner<TR;TP;>;"
    invoke-direct {p0}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;-><init>()V

    return-void
.end method


# virtual methods
.method protected defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "TP;)TR;"
        }
    .end annotation

    .line 24
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner;, "Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final visitArray(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;",
            "TP;)TR;"
        }
    .end annotation

    .line 62
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner;, "Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    .local v0, "r":Ljava/lang/Object;, "TR;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->visitArray(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner;->reduce(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final visitDeclared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "TP;)TR;"
        }
    .end annotation

    .line 36
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner;, "Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 37
    .local v0, "r":Ljava/lang/Object;, "TR;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->visitDeclared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner;->reduce(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final visitExecutable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            "TP;)TR;"
        }
    .end annotation

    .line 49
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner;, "Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 50
    .local v0, "r":Ljava/lang/Object;, "TR;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->visitExecutable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner;->reduce(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final visitNoType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;",
            "TP;)TR;"
        }
    .end annotation

    .line 100
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner;, "Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final visitNull(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;",
            "TP;)TR;"
        }
    .end annotation

    .line 112
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner;, "Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final visitPrimitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;",
            "TP;)TR;"
        }
    .end annotation

    .line 88
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner;, "Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "TP;)TR;"
        }
    .end annotation

    .line 75
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner;, "Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 76
    .local v0, "r":Ljava/lang/Object;, "TR;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner;->reduce(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final visitWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "TP;)TR;"
        }
    .end annotation

    .line 124
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner;, "Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 125
    .local v0, "r":Ljava/lang/Object;, "TR;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->visitWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner;->reduce(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
