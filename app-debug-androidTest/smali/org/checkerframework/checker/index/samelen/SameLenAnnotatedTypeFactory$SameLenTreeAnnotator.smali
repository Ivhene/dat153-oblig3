.class public Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory$SameLenTreeAnnotator;
.super Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
.source "SameLenAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SameLenTreeAnnotator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;


# direct methods
.method public constructor <init>(Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;
    .param p2, "factory"    # Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    .line 281
    iput-object p1, p0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory$SameLenTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    .line 282
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 283
    return-void
.end method


# virtual methods
.method public bridge synthetic visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 279
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory$SameLenTreeAnnotator;->visitNewArray(Lcom/sun/source/tree/NewArrayTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNewArray(Lcom/sun/source/tree/NewArrayTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 9
    .param p1, "node"    # Lcom/sun/source/tree/NewArrayTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 288
    invoke-interface {p1}, Lcom/sun/source/tree/NewArrayTree;->getDimensions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 289
    invoke-interface {p1}, Lcom/sun/source/tree/NewArrayTree;->getDimensions()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/Tree;

    .line 290
    .local v0, "dimensionTree":Lcom/sun/source/tree/Tree;
    iget-object v2, p0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory$SameLenTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    .line 291
    invoke-static {v2}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->access$100(Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;)Lorg/checkerframework/checker/index/IndexMethodIdentifier;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory$SameLenTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    invoke-static {v3}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->access$200(Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;)Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lorg/checkerframework/checker/index/IndexUtil;->getLengthSequenceTree(Lcom/sun/source/tree/Tree;Lorg/checkerframework/checker/index/IndexMethodIdentifier;Ljavax/annotation/processing/ProcessingEnvironment;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    .line 292
    .local v2, "sequenceTree":Lcom/sun/source/tree/ExpressionTree;
    if-eqz v2, :cond_2

    .line 293
    iget-object v3, p0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory$SameLenTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    .line 294
    invoke-virtual {v3, v2}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory$SameLenTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    iget-object v4, v4, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v3, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    .line 296
    .local v3, "sequenceAnno":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v4, p0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory$SameLenTreeAnnotator;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-static {v4, v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v4

    .line 297
    .local v4, "rec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    invoke-static {v4}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->mayAppearInSameLen(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 298
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 299
    .local v5, "recString":Ljava/lang/String;
    iget-object v6, p0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory$SameLenTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    const-class v7, Lorg/checkerframework/checker/index/qual/SameLenUnknown;

    invoke-virtual {v6, v3, v7}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 300
    iget-object v1, p0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory$SameLenTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->createSameLen(Ljava/util/Collection;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    goto :goto_0

    .line 301
    :cond_0
    iget-object v6, p0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory$SameLenTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    const-class v7, Lorg/checkerframework/checker/index/qual/SameLen;

    invoke-virtual {v6, v3, v7}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 303
    nop

    .line 304
    invoke-static {v3}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getValueOfAnnotationWithStringArgument(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v6

    .line 305
    .local v6, "exprs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v6, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v7

    .line 306
    .local v7, "index":I
    if-gez v7, :cond_1

    .line 307
    neg-int v8, v7

    sub-int/2addr v8, v1

    invoke-interface {v6, v8, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 308
    iget-object v1, p0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory$SameLenTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    invoke-virtual {v1, v6}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->createSameLen(Ljava/util/Collection;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    .line 312
    .end local v5    # "recString":Ljava/lang/String;
    .end local v6    # "exprs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "index":I
    :cond_1
    :goto_0
    invoke-virtual {p2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 315
    .end local v0    # "dimensionTree":Lcom/sun/source/tree/Tree;
    .end local v2    # "sequenceTree":Lcom/sun/source/tree/ExpressionTree;
    .end local v3    # "sequenceAnno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v4    # "rec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
