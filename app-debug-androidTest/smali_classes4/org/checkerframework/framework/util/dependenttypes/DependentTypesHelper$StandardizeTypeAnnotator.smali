.class Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$StandardizeTypeAnnotator;
.super Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;
.source "DependentTypesHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StandardizeTypeAnnotator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

.field private final localScope:Lcom/sun/source/util/TreePath;

.field final synthetic this$0:Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

.field private final useLocalScope:Z


# direct methods
.method private constructor <init>(Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Z)V
    .locals 0
    .param p2, "context"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    .param p3, "localScope"    # Lcom/sun/source/util/TreePath;
    .param p4, "useLocalScope"    # Z

    .line 621
    iput-object p1, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$StandardizeTypeAnnotator;->this$0:Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    invoke-direct {p0}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;-><init>()V

    .line 622
    iput-object p2, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$StandardizeTypeAnnotator;->context:Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    .line 623
    iput-object p3, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$StandardizeTypeAnnotator;->localScope:Lcom/sun/source/util/TreePath;

    .line 624
    iput-boolean p4, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$StandardizeTypeAnnotator;->useLocalScope:Z

    .line 625
    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;ZLorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;
    .param p2, "x1"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    .param p3, "x2"    # Lcom/sun/source/util/TreePath;
    .param p4, "x3"    # Z
    .param p5, "x4"    # Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$1;

    .line 614
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$StandardizeTypeAnnotator;-><init>(Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Z)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 614
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$StandardizeTypeAnnotator;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "aVoid"    # Ljava/lang/Void;

    .line 653
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 654
    .local v0, "newAnnos":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationMirror;

    .line 655
    .local v2, "anno":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v3, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$StandardizeTypeAnnotator;->this$0:Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    iget-object v4, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$StandardizeTypeAnnotator;->context:Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    iget-object v5, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$StandardizeTypeAnnotator;->localScope:Lcom/sun/source/util/TreePath;

    iget-boolean v6, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$StandardizeTypeAnnotator;->useLocalScope:Z

    .line 656
    invoke-static {v3, v4, v5, v2, v6}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->access$200(Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Ljavax/lang/model/element/AnnotationMirror;Z)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    .line 658
    .local v3, "annotationMirror":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v3, :cond_0

    .line 659
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    .end local v2    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v3    # "annotationMirror":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_0

    .line 662
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationMirror;

    .line 668
    .restart local v2    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->removeAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 669
    invoke-virtual {p1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->removeAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    .line 671
    .end local v2    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_2
    goto :goto_1

    .line 672
    :cond_3
    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotations(Ljava/lang/Iterable;)V

    .line 673
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Void;

    return-object v1
.end method

.method public bridge synthetic visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 614
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$StandardizeTypeAnnotator;->visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "aVoid"    # Ljava/lang/Void;

    .line 629
    iget-object v0, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$StandardizeTypeAnnotator;->visitedNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$StandardizeTypeAnnotator;->visitedNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0

    .line 632
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$StandardizeTypeAnnotator;->visitedNodes:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getAnnotations()Ljava/util/Set;

    move-result-object v0

    .line 639
    .local v0, "primarys":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->removeAnnotations(Ljava/lang/Iterable;)Z

    .line 640
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$StandardizeTypeAnnotator;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v1

    .line 641
    .local v1, "r":Ljava/lang/Void;
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotations(Ljava/lang/Iterable;)V

    .line 642
    iget-object v2, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$StandardizeTypeAnnotator;->visitedNodes:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->removeAnnotations(Ljava/lang/Iterable;)Z

    .line 645
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-virtual {p0, v2, p2, v1}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$StandardizeTypeAnnotator;->scanAndReduce(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/lang/Void;

    .line 646
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotations(Ljava/lang/Iterable;)V

    .line 647
    iget-object v2, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$StandardizeTypeAnnotator;->visitedNodes:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    return-object v1
.end method
