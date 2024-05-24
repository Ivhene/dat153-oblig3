.class public abstract Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;
.super Ljava/lang/Object;
.source "AbstractAtmComboVisitor.java"

# interfaces
.implements Lorg/checkerframework/framework/type/visitor/AtmComboVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RETURN_TYPE:",
        "Ljava/lang/Object;",
        "PARAM:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/checkerframework/framework/type/visitor/AtmComboVisitor<",
        "TRETURN_TYPE;TPARAM;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 52
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultErrorMessage(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract defaultErrorMessage(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "TPARAM;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 57
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-static {p1, p2, p3, p0}, Lorg/checkerframework/framework/util/AtmCombo;->accept(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;Lorg/checkerframework/framework/type/visitor/AtmComboVisitor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitArray_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 63
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitArray_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 69
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitArray_Executable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 75
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitArray_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 81
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitArray_None(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 87
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitArray_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 93
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitArray_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 99
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitArray_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 105
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitArray_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 111
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitArray_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 117
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitDeclared_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 123
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitDeclared_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 129
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitDeclared_Executable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 135
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitDeclared_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 141
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitDeclared_None(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 147
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitDeclared_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 153
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitDeclared_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 159
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitDeclared_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 165
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitDeclared_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 171
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitDeclared_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 177
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitExecutable_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 183
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitExecutable_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 189
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitExecutable_Executable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 195
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitExecutable_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 201
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitExecutable_None(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 207
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitExecutable_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 213
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitExecutable_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 219
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitExecutable_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 225
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitExecutable_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 231
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitExecutable_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 237
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitIntersection_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 243
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitIntersection_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 249
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitIntersection_Executable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 255
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitIntersection_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 261
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitIntersection_None(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 267
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitIntersection_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 273
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitIntersection_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 279
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitIntersection_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 285
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitIntersection_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 291
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitIntersection_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 297
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitNone_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 303
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitNone_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 309
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitNone_Executable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 315
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitNone_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 321
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitNone_None(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 326
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitNone_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 331
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitNone_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 337
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitNone_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 343
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitNone_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 349
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitNull_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 355
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitNull_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 361
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitNull_Executable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 367
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitNull_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 373
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitNull_None(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 378
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitNull_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 384
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitNull_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 390
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitNull_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 396
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitNull_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 402
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitNull_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 408
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitPrimitive_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 414
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitPrimitive_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 420
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitPrimitive_Executable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 426
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitPrimitive_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 432
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitPrimitive_None(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 438
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitPrimitive_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 444
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitPrimitive_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 450
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitPrimitive_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 456
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitPrimitive_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 462
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitPrimitive_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 468
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitTypevar_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 534
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitTypevar_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 540
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitTypevar_Executable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 546
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitTypevar_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 552
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitTypevar_None(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 558
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitTypevar_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 564
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitTypevar_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 570
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitTypevar_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 576
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitTypevar_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 582
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitTypevar_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 588
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitUnion_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 474
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitUnion_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 480
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitUnion_Executable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 486
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitUnion_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 492
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitUnion_None(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 498
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitUnion_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 504
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitUnion_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 510
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitUnion_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 516
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitUnion_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 522
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitUnion_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 528
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitWildcard_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 594
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitWildcard_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 600
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitWildcard_Executable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 606
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitWildcard_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 612
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitWildcard_None(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 618
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitWildcard_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 624
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitWildcard_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 630
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitWildcard_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 636
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitWildcard_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 642
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitWildcard_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 648
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;, "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
