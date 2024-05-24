.class public Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;
.super Ljava/lang/Object;
.source "StructuralEqualityVisitHistory.java"


# instance fields
.field private final falseHistory:Lorg/checkerframework/framework/type/SubtypeVisitHistory;

.field private final trueHistory:Lorg/checkerframework/framework/type/SubtypeVisitHistory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lorg/checkerframework/framework/type/SubtypeVisitHistory;

    invoke-direct {v0}, Lorg/checkerframework/framework/type/SubtypeVisitHistory;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;->trueHistory:Lorg/checkerframework/framework/type/SubtypeVisitHistory;

    .line 29
    new-instance v0, Lorg/checkerframework/framework/type/SubtypeVisitHistory;

    invoke-direct {v0}, Lorg/checkerframework/framework/type/SubtypeVisitHistory;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;->falseHistory:Lorg/checkerframework/framework/type/SubtypeVisitHistory;

    .line 30
    return-void
.end method


# virtual methods
.method public add(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Z)V
    .locals 2
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "hierarchy"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p4, "result"    # Z

    .line 41
    const/4 v0, 0x1

    .line 47
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 41
    if-eqz p4, :cond_0

    .line 42
    iget-object v1, p0, Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;->trueHistory:Lorg/checkerframework/framework/type/SubtypeVisitHistory;

    invoke-virtual {v1, p1, p2, p3, v0}, Lorg/checkerframework/framework/type/SubtypeVisitHistory;->add(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Boolean;)V

    .line 43
    iget-object v0, p0, Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;->falseHistory:Lorg/checkerframework/framework/type/SubtypeVisitHistory;

    invoke-virtual {v0, p1, p2, p3}, Lorg/checkerframework/framework/type/SubtypeVisitHistory;->contains(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;->falseHistory:Lorg/checkerframework/framework/type/SubtypeVisitHistory;

    invoke-virtual {v0, p1, p2, p3}, Lorg/checkerframework/framework/type/SubtypeVisitHistory;->remove(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_0

    .line 47
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;->falseHistory:Lorg/checkerframework/framework/type/SubtypeVisitHistory;

    invoke-virtual {v1, p1, p2, p3, v0}, Lorg/checkerframework/framework/type/SubtypeVisitHistory;->add(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Boolean;)V

    .line 48
    iget-object v0, p0, Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;->trueHistory:Lorg/checkerframework/framework/type/SubtypeVisitHistory;

    invoke-virtual {v0, p1, p2, p3}, Lorg/checkerframework/framework/type/SubtypeVisitHistory;->contains(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;->trueHistory:Lorg/checkerframework/framework/type/SubtypeVisitHistory;

    invoke-virtual {v0, p1, p2, p3}, Lorg/checkerframework/framework/type/SubtypeVisitHistory;->remove(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 52
    :cond_1
    :goto_0
    return-void
.end method

.method public result(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "hierarchy"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 62
    iget-object v0, p0, Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;->falseHistory:Lorg/checkerframework/framework/type/SubtypeVisitHistory;

    invoke-virtual {v0, p1, p2, p3}, Lorg/checkerframework/framework/type/SubtypeVisitHistory;->contains(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 64
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;->trueHistory:Lorg/checkerframework/framework/type/SubtypeVisitHistory;

    invoke-virtual {v0, p1, p2, p3}, Lorg/checkerframework/framework/type/SubtypeVisitHistory;->contains(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 67
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
