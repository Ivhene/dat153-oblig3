.class public abstract Lorg/checkerframework/framework/flow/CFAbstractValue$AnnotationSetAndTypeMirrorVisitor;
.super Ljava/lang/Object;
.source "CFAbstractValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/flow/CFAbstractValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "AnnotationSetAndTypeMirrorVisitor"
.end annotation


# instance fields
.field private aAtv:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

.field private aSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation
.end field

.field private bAtv:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

.field private bSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation
.end field

.field result:Ljavax/lang/model/type/TypeMirror;

.field final synthetic this$0:Lorg/checkerframework/framework/flow/CFAbstractValue;


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/flow/CFAbstractValue;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .param p1, "this$0"    # Lorg/checkerframework/framework/flow/CFAbstractValue;
    .param p2, "result"    # Ljavax/lang/model/type/TypeMirror;
    .param p3, "aTypeMirror"    # Ljavax/lang/model/type/TypeMirror;
    .param p4, "bTypeMirror"    # Ljavax/lang/model/type/TypeMirror;
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
            ">;)V"
        }
    .end annotation

    .line 428
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractValue$AnnotationSetAndTypeMirrorVisitor;, "Lorg/checkerframework/framework/flow/CFAbstractValue<TV;>.AnnotationSetAndTypeMirrorVisitor;"
    .local p5, "aSet":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    .local p6, "bSet":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    iput-object p1, p0, Lorg/checkerframework/framework/flow/CFAbstractValue$AnnotationSetAndTypeMirrorVisitor;->this$0:Lorg/checkerframework/framework/flow/CFAbstractValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    iput-object p2, p0, Lorg/checkerframework/framework/flow/CFAbstractValue$AnnotationSetAndTypeMirrorVisitor;->result:Ljavax/lang/model/type/TypeMirror;

    .line 430
    iput-object p5, p0, Lorg/checkerframework/framework/flow/CFAbstractValue$AnnotationSetAndTypeMirrorVisitor;->aSet:Ljava/util/Set;

    .line 431
    iput-object p6, p0, Lorg/checkerframework/framework/flow/CFAbstractValue$AnnotationSetAndTypeMirrorVisitor;->bSet:Ljava/util/Set;

    .line 432
    invoke-static {p1, p3}, Lorg/checkerframework/framework/flow/CFAbstractValue;->access$100(Lorg/checkerframework/framework/flow/CFAbstractValue;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractValue$AnnotationSetAndTypeMirrorVisitor;->aAtv:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 433
    invoke-static {p1, p4}, Lorg/checkerframework/framework/flow/CFAbstractValue;->access$100(Lorg/checkerframework/framework/flow/CFAbstractValue;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractValue$AnnotationSetAndTypeMirrorVisitor;->bAtv:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 434
    return-void
.end method


# virtual methods
.method visit()V
    .locals 8

    .line 437
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractValue$AnnotationSetAndTypeMirrorVisitor;, "Lorg/checkerframework/framework/flow/CFAbstractValue<TV;>.AnnotationSetAndTypeMirrorVisitor;"
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractValue$AnnotationSetAndTypeMirrorVisitor;->this$0:Lorg/checkerframework/framework/flow/CFAbstractValue;

    iget-object v0, v0, Lorg/checkerframework/framework/flow/CFAbstractValue;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v0}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v0

    .line 438
    .local v0, "hierarchy":Lorg/checkerframework/framework/type/QualifierHierarchy;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getTopAnnotations()Ljava/util/Set;

    move-result-object v1

    .line 439
    .local v1, "tops":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/AnnotationMirror;

    .line 440
    .local v3, "top":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v4, p0, Lorg/checkerframework/framework/flow/CFAbstractValue$AnnotationSetAndTypeMirrorVisitor;->aSet:Ljava/util/Set;

    invoke-virtual {v0, v4, v3}, Lorg/checkerframework/framework/type/QualifierHierarchy;->findAnnotationInHierarchy(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    .line 441
    .local v4, "a":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v5, p0, Lorg/checkerframework/framework/flow/CFAbstractValue$AnnotationSetAndTypeMirrorVisitor;->bSet:Ljava/util/Set;

    invoke-virtual {v0, v5, v3}, Lorg/checkerframework/framework/type/QualifierHierarchy;->findAnnotationInHierarchy(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v5

    .line 442
    .local v5, "b":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 443
    invoke-virtual {p0, v4, v5, v3}, Lorg/checkerframework/framework/flow/CFAbstractValue$AnnotationSetAndTypeMirrorVisitor;->visitAnnotationExistInBothSets(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_1

    .line 444
    :cond_0
    if-eqz v4, :cond_1

    .line 445
    iget-object v6, p0, Lorg/checkerframework/framework/flow/CFAbstractValue$AnnotationSetAndTypeMirrorVisitor;->bAtv:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    invoke-virtual {p0, v4, v6, v3}, Lorg/checkerframework/framework/flow/CFAbstractValue$AnnotationSetAndTypeMirrorVisitor;->visitAnnotationExistInOneSet(Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_1

    .line 446
    :cond_1
    if-eqz v5, :cond_2

    .line 447
    iget-object v6, p0, Lorg/checkerframework/framework/flow/CFAbstractValue$AnnotationSetAndTypeMirrorVisitor;->aAtv:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    invoke-virtual {p0, v5, v6, v3}, Lorg/checkerframework/framework/flow/CFAbstractValue$AnnotationSetAndTypeMirrorVisitor;->visitAnnotationExistInOneSet(Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_1

    .line 449
    :cond_2
    iget-object v6, p0, Lorg/checkerframework/framework/flow/CFAbstractValue$AnnotationSetAndTypeMirrorVisitor;->aAtv:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    iget-object v7, p0, Lorg/checkerframework/framework/flow/CFAbstractValue$AnnotationSetAndTypeMirrorVisitor;->bAtv:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    invoke-virtual {p0, v6, v7, v3}, Lorg/checkerframework/framework/flow/CFAbstractValue$AnnotationSetAndTypeMirrorVisitor;->visitNeitherAnnotationExistsInBothSets(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 451
    .end local v3    # "top":Ljavax/lang/model/element/AnnotationMirror;
    .end local v4    # "a":Ljavax/lang/model/element/AnnotationMirror;
    .end local v5    # "b":Ljavax/lang/model/element/AnnotationMirror;
    :goto_1
    goto :goto_0

    .line 452
    :cond_3
    return-void
.end method

.method protected abstract visitAnnotationExistInBothSets(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)V
.end method

.method protected abstract visitAnnotationExistInOneSet(Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljavax/lang/model/element/AnnotationMirror;)V
.end method

.method protected abstract visitNeitherAnnotationExistsInBothSets(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljavax/lang/model/element/AnnotationMirror;)V
.end method
