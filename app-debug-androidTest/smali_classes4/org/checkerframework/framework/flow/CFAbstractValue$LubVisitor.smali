.class Lorg/checkerframework/framework/flow/CFAbstractValue$LubVisitor;
.super Lorg/checkerframework/framework/flow/CFAbstractValue$AnnotationSetAndTypeMirrorVisitor;
.source "CFAbstractValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/flow/CFAbstractValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LubVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/framework/flow/CFAbstractValue<",
        "TV;>.AnnotationSetAndTypeMirrorVisitor;"
    }
.end annotation


# instance fields
.field lubSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/checkerframework/framework/flow/CFAbstractValue;

.field widen:Z


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/flow/CFAbstractValue;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Z)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/framework/flow/CFAbstractValue;
    .param p2, "result"    # Ljavax/lang/model/type/TypeMirror;
    .param p3, "aTypeMirror"    # Ljavax/lang/model/type/TypeMirror;
    .param p4, "bTypeMirror"    # Ljavax/lang/model/type/TypeMirror;
    .param p8, "shouldWiden"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;Z)V"
        }
    .end annotation

    .line 358
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractValue$LubVisitor;, "Lorg/checkerframework/framework/flow/CFAbstractValue<TV;>.LubVisitor;"
    .local p5, "aSet":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    .local p6, "bSet":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    .local p7, "lubSet":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    iput-object p1, p0, Lorg/checkerframework/framework/flow/CFAbstractValue$LubVisitor;->this$0:Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 359
    invoke-direct/range {p0 .. p6}, Lorg/checkerframework/framework/flow/CFAbstractValue$AnnotationSetAndTypeMirrorVisitor;-><init>(Lorg/checkerframework/framework/flow/CFAbstractValue;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;Ljava/util/Set;)V

    .line 360
    iput-object p7, p0, Lorg/checkerframework/framework/flow/CFAbstractValue$LubVisitor;->lubSet:Ljava/util/Set;

    .line 361
    iput-boolean p8, p0, Lorg/checkerframework/framework/flow/CFAbstractValue$LubVisitor;->widen:Z

    .line 362
    return-void
.end method

.method private computeUpperBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 2
    .param p1, "a"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "b"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 365
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractValue$LubVisitor;, "Lorg/checkerframework/framework/flow/CFAbstractValue<TV;>.LubVisitor;"
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractValue$LubVisitor;->this$0:Lorg/checkerframework/framework/flow/CFAbstractValue;

    iget-object v0, v0, Lorg/checkerframework/framework/flow/CFAbstractValue;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v0}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v0

    .line 366
    .local v0, "hierarchy":Lorg/checkerframework/framework/type/QualifierHierarchy;
    iget-boolean v1, p0, Lorg/checkerframework/framework/flow/CFAbstractValue$LubVisitor;->widen:Z

    if-eqz v1, :cond_0

    .line 367
    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->widenedUpperBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1

    .line 369
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->leastUpperBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected visitAnnotationExistInBothSets(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 2
    .param p1, "a"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "b"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p3, "top"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 376
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractValue$LubVisitor;, "Lorg/checkerframework/framework/flow/CFAbstractValue<TV;>.LubVisitor;"
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractValue$LubVisitor;->lubSet:Ljava/util/Set;

    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFAbstractValue$LubVisitor;->computeUpperBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 377
    return-void
.end method

.method protected visitAnnotationExistInOneSet(Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 6
    .param p1, "anno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "atv"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p3, "top"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 394
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractValue$LubVisitor;, "Lorg/checkerframework/framework/flow/CFAbstractValue<TV;>.LubVisitor;"
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractValue$LubVisitor;->this$0:Lorg/checkerframework/framework/flow/CFAbstractValue;

    iget-object v0, v0, Lorg/checkerframework/framework/flow/CFAbstractValue;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v0}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v0

    .line 395
    .local v0, "hierarchy":Lorg/checkerframework/framework/type/QualifierHierarchy;
    nop

    .line 396
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 397
    .local v1, "upperBound":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v2, p0, Lorg/checkerframework/framework/flow/CFAbstractValue$LubVisitor;->result:Ljavax/lang/model/type/TypeMirror;

    invoke-static {v2}, Lorg/checkerframework/framework/flow/CFAbstractValue;->access$000(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 398
    iget-object v2, p0, Lorg/checkerframework/framework/flow/CFAbstractValue$LubVisitor;->lubSet:Ljava/util/Set;

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/framework/flow/CFAbstractValue$LubVisitor;->computeUpperBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 400
    :cond_0
    nop

    .line 401
    invoke-static {v0, p2}, Lorg/checkerframework/framework/util/AnnotatedTypes;->findEffectiveLowerBoundAnnotations(Lorg/checkerframework/framework/type/QualifierHierarchy;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/util/Set;

    move-result-object v2

    .line 402
    .local v2, "lBSet":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {v0, v2, p3}, Lorg/checkerframework/framework/type/QualifierHierarchy;->findAnnotationInHierarchy(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    .line 403
    .local v3, "lowerBound":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v0, p1, v3}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 404
    iget-object v4, p0, Lorg/checkerframework/framework/flow/CFAbstractValue$LubVisitor;->lubSet:Ljava/util/Set;

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/framework/flow/CFAbstractValue$LubVisitor;->computeUpperBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 407
    .end local v2    # "lBSet":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    .end local v3    # "lowerBound":Ljavax/lang/model/element/AnnotationMirror;
    :cond_1
    :goto_0
    return-void
.end method

.method protected visitNeitherAnnotationExistsInBothSets(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 4
    .param p1, "aAtv"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "bAtv"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p3, "top"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 382
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractValue$LubVisitor;, "Lorg/checkerframework/framework/flow/CFAbstractValue<TV;>.LubVisitor;"
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractValue$LubVisitor;->result:Ljavax/lang/model/type/TypeMirror;

    invoke-static {v0}, Lorg/checkerframework/framework/flow/CFAbstractValue;->access$000(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 385
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 386
    .local v0, "aUB":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 387
    .local v1, "bUB":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v2, p0, Lorg/checkerframework/framework/flow/CFAbstractValue$LubVisitor;->lubSet:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/framework/flow/CFAbstractValue$LubVisitor;->computeUpperBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 389
    .end local v0    # "aUB":Ljavax/lang/model/element/AnnotationMirror;
    .end local v1    # "bUB":Ljavax/lang/model/element/AnnotationMirror;
    :goto_0
    return-void
.end method
