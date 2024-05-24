.class public Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeVisitor;
.super Ljava/lang/Object;
.source "SimpleAnnotatedTypeVisitor.java"

# interfaces
.implements Lorg/checkerframework/framework/type/visitor/AnnotatedTypeVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeVisitor<",
        "TR;TP;>;"
    }
.end annotation


# instance fields
.field protected final DEFAULT_VALUE:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeVisitor;, "Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeVisitor<TR;TP;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeVisitor;-><init>(Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 42
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeVisitor;, "Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeVisitor<TR;TP;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TR;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeVisitor;->DEFAULT_VALUE:Ljava/lang/Object;

    .line 44
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

    .line 54
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeVisitor;, "Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeVisitor;->DEFAULT_VALUE:Ljava/lang/Object;

    return-object v0
.end method

.method public visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ")TR;"
        }
    .end annotation

    .line 59
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeVisitor;, "Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeVisitor<TR;TP;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "TP;)TR;"
        }
    .end annotation

    .line 64
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeVisitor;, "Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->accept(Lorg/checkerframework/framework/type/visitor/AnnotatedTypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public visitArray(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;",
            "TP;)TR;"
        }
    .end annotation

    .line 84
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeVisitor;, "Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitDeclared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "TP;)TR;"
        }
    .end annotation

    .line 69
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeVisitor;, "Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitExecutable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            "TP;)TR;"
        }
    .end annotation

    .line 89
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeVisitor;, "Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitIntersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;",
            "TP;)TR;"
        }
    .end annotation

    .line 74
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeVisitor;, "Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitNoType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;",
            "TP;)TR;"
        }
    .end annotation

    .line 114
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeVisitor;, "Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitNull(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;",
            "TP;)TR;"
        }
    .end annotation

    .line 109
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeVisitor;, "Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitPrimitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;",
            "TP;)TR;"
        }
    .end annotation

    .line 104
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeVisitor;, "Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "TP;)TR;"
        }
    .end annotation

    .line 94
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeVisitor;, "Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitUnion(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;",
            "TP;)TR;"
        }
    .end annotation

    .line 79
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeVisitor;, "Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "TP;)TR;"
        }
    .end annotation

    .line 99
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeVisitor;, "Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
