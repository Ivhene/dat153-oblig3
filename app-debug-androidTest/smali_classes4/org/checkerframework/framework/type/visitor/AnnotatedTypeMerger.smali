.class public Lorg/checkerframework/framework/type/visitor/AnnotatedTypeMerger;
.super Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;
.source "AnnotatedTypeMerger.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final top:Ljavax/lang/model/element/AnnotationMirror;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeMerger;->top:Ljavax/lang/model/element/AnnotationMirror;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 0
    .param p1, "top"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 54
    invoke-direct {p0}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeMerger;->top:Ljavax/lang/model/element/AnnotationMirror;

    .line 56
    return-void
.end method

.method public static merge(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 2
    .param p0, "from"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p1, "to"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 27
    if-eq p0, p1, :cond_0

    .line 30
    new-instance v0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeMerger;

    invoke-direct {v0}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeMerger;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeMerger;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void

    .line 28
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "From == to"

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static merge(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 2
    .param p0, "from"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p1, "to"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "top"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 37
    if-eq p0, p1, :cond_0

    .line 40
    new-instance v0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeMerger;

    invoke-direct {v0, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeMerger;-><init>(Ljavax/lang/model/element/AnnotationMirror;)V

    invoke-virtual {v0, p0, p1}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeMerger;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void

    .line 38
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "From == to"

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected bridge synthetic combineRs(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Ljava/lang/Void;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeMerger;->combineRs(Ljava/lang/Void;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected combineRs(Ljava/lang/Void;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0
    .param p1, "r1"    # Ljava/lang/Void;
    .param p2, "r2"    # Ljava/lang/Void;

    .line 69
    return-object p1
.end method

.method protected bridge synthetic compare(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeMerger;->compare(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected compare(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 1
    .param p1, "one"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "two"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 60
    if-eq p1, p2, :cond_1

    .line 61
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeMerger;->replaceAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 64
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected replaceAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 2
    .param p1, "one"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "two"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 74
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeMerger;->top:Ljavax/lang/model/element/AnnotationMirror;

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotations(Ljava/lang/Iterable;)V

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 78
    .local v0, "replacement":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v0, :cond_1

    .line 79
    iget-object v1, p0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeMerger;->top:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p1, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 82
    .end local v0    # "replacement":Ljavax/lang/model/element/AnnotationMirror;
    :cond_1
    :goto_0
    return-void
.end method

.method public resolvePrimaries(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 4
    .param p1, "from"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "to"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 104
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResolvePrimaries\' from argument should be a type variable OR wildcard\nfrom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 120
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\nto="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 123
    invoke-virtual {p2, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeMerger;->top:Ljavax/lang/model/element/AnnotationMirror;

    if-eqz v0, :cond_2

    .line 106
    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    if-nez v0, :cond_5

    .line 107
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeMerger;->top:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->removeAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Z

    goto :goto_2

    .line 110
    :cond_2
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    .line 111
    .local v1, "toPrimaryAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p1, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    if-nez v2, :cond_3

    .line 112
    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->removeAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    .line 114
    .end local v1    # "toPrimaryAnno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_3
    goto :goto_1

    :cond_4
    nop

    .line 125
    :cond_5
    :goto_2
    return-void
.end method

.method public bridge synthetic visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeMerger;->visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeMerger;->visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 1
    .param p1, "from"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "to"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 86
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeMerger;->resolvePrimaries(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 87
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeMerger;->visitWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeMerger;->visitWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 1
    .param p1, "from"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "to"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 92
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeMerger;->resolvePrimaries(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 93
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->visitWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method
