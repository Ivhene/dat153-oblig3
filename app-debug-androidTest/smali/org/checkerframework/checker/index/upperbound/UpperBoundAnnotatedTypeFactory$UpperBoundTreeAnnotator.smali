.class public Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;
.super Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
.source "UpperBoundAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UpperBoundTreeAnnotator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;


# direct methods
.method public constructor <init>(Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;
    .param p2, "factory"    # Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    .line 416
    iput-object p1, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    .line 417
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 418
    return-void
.end method

.method private addAnnotationForAnd(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 6
    .param p1, "left"    # Lcom/sun/source/tree/ExpressionTree;
    .param p2, "right"    # Lcom/sun/source/tree/ExpressionTree;
    .param p3, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 584
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual {v0}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getLowerBoundAnnotatedTypeFactory()Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    move-result-object v0

    .line 585
    .local v0, "lowerBoundATF":Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;
    iget-object v1, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual {v1, p1}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 586
    .local v1, "leftType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v2, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    .line 587
    .local v2, "leftResultType":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v0, p1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->isNonNegative(Lcom/sun/source/tree/Tree;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 588
    iget-object v3, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    iget-object v3, v3, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v1, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 591
    :cond_0
    iget-object v3, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual {v3, p2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    .line 592
    .local v3, "rightType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v4, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    iget-object v4, v4, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    .line 593
    .local v4, "rightResultType":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v0, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->isNonNegative(Lcom/sun/source/tree/Tree;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 594
    iget-object v5, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    iget-object v5, v5, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v3, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    .line 597
    :cond_1
    iget-object v5, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-static {v5}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->access$300(Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;)Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Lorg/checkerframework/framework/type/QualifierHierarchy;->greatestLowerBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v5

    invoke-virtual {p3, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 598
    return-void
.end method

.method private addAnnotationForBitwiseComplement(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 5
    .param p1, "searchIndexType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "typeDst"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 492
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    const-class v2, Lorg/checkerframework/checker/index/qual/NegativeIndexFor;

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->containsSameByClass(Ljava/util/Collection;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    const-class v0, Lorg/checkerframework/checker/index/qual/NegativeIndexFor;

    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 494
    .local v0, "nif":Ljavax/lang/model/element/AnnotationMirror;
    invoke-static {v0}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getValueOfAnnotationWithStringArgument(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v1

    .line 495
    .local v1, "arrays":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "-1"

    invoke-static {v2, v3}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 496
    .local v2, "negativeOnes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1, v2}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Ljava/util/List;Ljava/util/List;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v3

    .line 497
    .local v3, "qual":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    iget-object v4, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual {v4, v3}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->convertUBQualifierToAnnotation(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 498
    .end local v0    # "nif":Ljavax/lang/model/element/AnnotationMirror;
    .end local v1    # "arrays":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "negativeOnes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "qual":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    goto :goto_0

    .line 499
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 501
    :goto_0
    return-void
.end method

.method private addAnnotationForDivide(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 8
    .param p1, "numeratorTree"    # Lcom/sun/source/tree/ExpressionTree;
    .param p2, "divisorTree"    # Lcom/sun/source/tree/ExpressionTree;
    .param p3, "resultType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 649
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    .line 650
    invoke-virtual {v0}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getValueAnnotatedTypeFactory()Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getExactValue(Lcom/sun/source/tree/Tree;Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Ljava/lang/Long;

    move-result-object v0

    .line 651
    .local v0, "divisor":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 652
    iget-object v1, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p3, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 653
    return-void

    .line 656
    :cond_0
    sget-object v1, Lorg/checkerframework/checker/index/upperbound/UBQualifier$UpperBoundUnknownQualifier;->UNKNOWN:Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    .line 657
    .local v1, "result":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    iget-object v2, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    .line 658
    invoke-virtual {v2, p1}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    iget-object v3, v3, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {v2, v3}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v2

    .line 659
    .local v2, "numerator":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-virtual {v2}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->isLessThanLengthQualifier()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 660
    move-object v3, v2

    check-cast v3, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->divide(I)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v1

    .line 662
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v3

    invoke-direct {p0, v3, p1}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->plusTreeDivideByVal(ILcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->glb(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v1

    .line 664
    invoke-direct {p0, p1}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->getLengthSequenceTree(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v3

    .line 667
    .local v3, "numeratorSequenceTree":Lcom/sun/source/tree/ExpressionTree;
    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 668
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 669
    .local v4, "arrayName":Ljava/lang/String;
    iget-object v5, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    .line 670
    invoke-virtual {v5}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getValueAnnotatedTypeFactory()Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    move-result-object v5

    iget-object v6, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    .line 672
    invoke-virtual {v6, p1}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v6

    .line 671
    invoke-virtual {v5, v4, p1, v6}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getMinLenFromString(Ljava/lang/String;Lcom/sun/source/tree/Tree;Lcom/sun/source/util/TreePath;)I

    move-result v5

    .line 673
    .local v5, "minlen":I
    if-lez v5, :cond_2

    .line 674
    const-string v6, "0"

    invoke-static {v4, v6}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->glb(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v1

    .line 678
    .end local v4    # "arrayName":Ljava/lang/String;
    .end local v5    # "minlen":I
    :cond_2
    iget-object v4, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual {v4, v1}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->convertUBQualifierToAnnotation(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    invoke-virtual {p3, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 679
    return-void
.end method

.method private addAnnotationForMultiply(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 1
    .param p1, "leftExpr"    # Lcom/sun/source/tree/ExpressionTree;
    .param p2, "rightExpr"    # Lcom/sun/source/tree/ExpressionTree;
    .param p3, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 748
    invoke-direct {p0, p2, p1, p3}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->checkForMathRandomSpecialCase(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 749
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->checkForMathRandomSpecialCase(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 752
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p3, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 753
    return-void

    .line 750
    :cond_1
    :goto_0
    return-void
.end method

.method private addAnnotationForRemainder(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 4
    .param p1, "numeratorTree"    # Lcom/sun/source/tree/ExpressionTree;
    .param p2, "divisorTree"    # Lcom/sun/source/tree/ExpressionTree;
    .param p3, "resultType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 618
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual {v0}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getLowerBoundAnnotatedTypeFactory()Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    move-result-object v0

    .line 619
    .local v0, "lowerBoundATF":Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;
    sget-object v1, Lorg/checkerframework/checker/index/upperbound/UBQualifier$UpperBoundUnknownQualifier;->UNKNOWN:Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    .line 621
    .local v1, "result":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-virtual {v0, p1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->isNonNegative(Lcom/sun/source/tree/Tree;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 622
    iget-object v2, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual {v2, p1}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    iget-object v3, v3, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {v2, v3}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v1

    .line 625
    :cond_0
    invoke-virtual {v0, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->isNonNegative(Lcom/sun/source/tree/Tree;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 626
    iget-object v2, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    .line 627
    invoke-virtual {v2, p2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    iget-object v3, v3, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {v2, v3}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v2

    .line 628
    .local v2, "divisor":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->plusOffset(I)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->glb(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v1

    .line 630
    .end local v2    # "divisor":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    :cond_1
    iget-object v2, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual {v2, v1}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->convertUBQualifierToAnnotation(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    invoke-virtual {p3, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 631
    return-void
.end method

.method private addAnnotationForRightShift(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 7
    .param p1, "left"    # Lcom/sun/source/tree/ExpressionTree;
    .param p2, "right"    # Lcom/sun/source/tree/ExpressionTree;
    .param p3, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 554
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual {v0}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getLowerBoundAnnotatedTypeFactory()Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    move-result-object v0

    .line 555
    .local v0, "lowerBoundATF":Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;
    invoke-virtual {v0, p1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->isNonNegative(Lcom/sun/source/tree/Tree;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 556
    iget-object v1, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    .line 557
    invoke-virtual {v1, p1}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 561
    .local v1, "annotation":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v2, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    .line 562
    invoke-virtual {v2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getValueAnnotatedTypeFactory()Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    move-result-object v2

    invoke-static {p2, v2}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getExactValue(Lcom/sun/source/tree/Tree;Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Ljava/lang/Long;

    move-result-object v2

    .line 563
    .local v2, "shiftAmount":Ljava/lang/Long;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x1f

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 564
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-int v3, v3

    const/4 v4, 0x1

    shl-int v3, v4, v3

    .line 566
    .local v3, "divisor":I
    invoke-direct {p0, v3, p1}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->plusTreeDivideByVal(ILcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v4

    .line 567
    .local v4, "plusDivQualifier":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-virtual {v4}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->isUnknown()Z

    move-result v5

    if-nez v5, :cond_0

    .line 568
    invoke-static {v1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v5

    .line 569
    .local v5, "qualifier":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-virtual {v5, v4}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->glb(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v5

    .line 570
    iget-object v6, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual {v6, v5}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->convertUBQualifierToAnnotation(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 573
    .end local v3    # "divisor":I
    .end local v4    # "plusDivQualifier":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .end local v5    # "qualifier":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    :cond_0
    invoke-virtual {p3, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 575
    .end local v1    # "annotation":Ljavax/lang/model/element/AnnotationMirror;
    .end local v2    # "shiftAmount":Ljava/lang/Long;
    :cond_1
    return-void
.end method

.method private checkForMathRandomSpecialCase(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 5
    .param p1, "randTree"    # Lcom/sun/source/tree/ExpressionTree;
    .param p2, "seqLenTree"    # Lcom/sun/source/tree/ExpressionTree;
    .param p3, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 722
    invoke-direct {p0, p2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->getLengthSequenceTree(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 724
    .local v0, "seqTree":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {p1}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->METHOD_INVOCATION:Lcom/sun/source/tree/Tree$Kind;

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 726
    move-object v1, p1

    check-cast v1, Lcom/sun/source/tree/MethodInvocationTree;

    .line 728
    .local v1, "mitree":Lcom/sun/source/tree/MethodInvocationTree;
    iget-object v2, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-static {v2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->access$400(Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;)Lorg/checkerframework/checker/index/IndexMethodIdentifier;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-static {v3}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->access$600(Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;)Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/checkerframework/checker/index/IndexMethodIdentifier;->isMathRandom(Lcom/sun/source/tree/Tree;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 730
    iget-object v2, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->createLTLengthOfAnnotation([Ljava/lang/String;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    invoke-virtual {p3, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 731
    return v3

    .line 734
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-static {v2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->access$400(Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;)Lorg/checkerframework/checker/index/IndexMethodIdentifier;

    move-result-object v2

    iget-object v4, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-static {v4}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->access$700(Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;)Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lorg/checkerframework/checker/index/IndexMethodIdentifier;->isRandomNextDouble(Lcom/sun/source/tree/Tree;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 737
    iget-object v2, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->createLTLengthOfAnnotation([Ljava/lang/String;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    invoke-virtual {p3, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 738
    return v3

    .line 742
    .end local v1    # "mitree":Lcom/sun/source/tree/MethodInvocationTree;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private getLengthSequenceTree(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;
    .locals 2
    .param p1, "lengthTree"    # Lcom/sun/source/tree/ExpressionTree;

    .line 602
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-static {v0}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->access$400(Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;)Lorg/checkerframework/checker/index/IndexMethodIdentifier;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-static {v1}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->access$500(Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;)Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/checkerframework/checker/index/IndexUtil;->getLengthSequenceTree(Lcom/sun/source/tree/Tree;Lorg/checkerframework/checker/index/IndexMethodIdentifier;Ljavax/annotation/processing/ProcessingEnvironment;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    return-object v0
.end method

.method private plusTreeDivideByVal(ILcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .locals 9
    .param p1, "divisor"    # I
    .param p2, "numeratorTree"    # Lcom/sun/source/tree/ExpressionTree;

    .line 686
    invoke-static {p2}, Lorg/checkerframework/javacutil/TreeUtils;->withoutParens(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object p2

    .line 687
    const/4 v0, 0x2

    if-lt p1, v0, :cond_4

    invoke-interface {p2}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->PLUS:Lcom/sun/source/tree/Tree$Kind;

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 690
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/sun/source/tree/BinaryTree;

    .line 691
    .local v0, "plusTree":Lcom/sun/source/tree/BinaryTree;
    iget-object v1, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    .line 693
    invoke-interface {v0}, Lcom/sun/source/tree/BinaryTree;->getLeftOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    .line 692
    invoke-static {v1, v2}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v1

    .line 694
    .local v1, "left":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    iget-object v2, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    .line 696
    invoke-interface {v0}, Lcom/sun/source/tree/BinaryTree;->getRightOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    iget-object v3, v3, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    .line 695
    invoke-static {v2, v3}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v2

    .line 697
    .local v2, "right":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-virtual {v1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->isLessThanLengthQualifier()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->isLessThanLengthQualifier()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 698
    move-object v3, v1

    check-cast v3, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

    .line 699
    .local v3, "leftLTL":Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;
    move-object v4, v2

    check-cast v4, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

    .line 700
    .local v4, "rightLTL":Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 701
    .local v5, "sequences":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v3}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->getSequences()Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 702
    .local v7, "sequence":Ljava/lang/String;
    invoke-virtual {v4, v7}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->isLessThanLengthOf(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 703
    invoke-virtual {v3, v7}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->isLessThanLengthOf(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 704
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    .end local v7    # "sequence":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 707
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 708
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Ljava/util/List;Ljava/util/List;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v6

    return-object v6

    .line 712
    .end local v3    # "leftLTL":Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;
    .end local v4    # "rightLTL":Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;
    .end local v5    # "sequences":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    sget-object v3, Lorg/checkerframework/checker/index/upperbound/UBQualifier$UpperBoundUnknownQualifier;->UNKNOWN:Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    return-object v3

    .line 688
    .end local v0    # "plusTree":Lcom/sun/source/tree/BinaryTree;
    .end local v1    # "left":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .end local v2    # "right":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    :cond_4
    :goto_1
    sget-object v0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$UpperBoundUnknownQualifier;->UNKNOWN:Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 414
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->visitBinary(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitBinary(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 4
    .param p1, "tree"    # Lcom/sun/source/tree/BinaryTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 513
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isStringConcatenation(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 515
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;->visitBinary(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object v0

    return-object v0

    .line 518
    :cond_0
    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getLeftOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 519
    .local v0, "left":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getRightOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    .line 520
    .local v1, "right":Lcom/sun/source/tree/ExpressionTree;
    sget-object v2, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 540
    :pswitch_0
    invoke-direct {p0, v0, v1, p2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->addAnnotationForRightShift(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 541
    goto :goto_0

    .line 536
    :pswitch_1
    invoke-direct {p0, v0, v1, p2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->addAnnotationForAnd(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 537
    goto :goto_0

    .line 533
    :pswitch_2
    invoke-direct {p0, v0, v1, p2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->addAnnotationForRemainder(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 534
    goto :goto_0

    .line 530
    :pswitch_3
    invoke-direct {p0, v0, v1, p2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->addAnnotationForDivide(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 531
    goto :goto_0

    .line 527
    :pswitch_4
    invoke-direct {p0, v0, v1, p2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->addAnnotationForMultiply(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 528
    goto :goto_0

    .line 524
    :pswitch_5
    iget-object v2, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 525
    nop

    .line 545
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;->visitBinary(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object v2

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 414
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/CompoundAssignmentTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 506
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 507
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;->visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 414
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 7
    .param p1, "tree"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 434
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->isMathMin(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/source/tree/Tree;

    invoke-virtual {v0, v3}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 436
    .local v0, "leftType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v3, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/source/tree/Tree;

    invoke-virtual {v3, v4}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    .line 438
    .local v3, "rightType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v4, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    .line 439
    invoke-static {v4}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->access$100(Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;)Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v4

    iget-object v5, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    iget-object v5, v5, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    .line 440
    invoke-virtual {v0, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v5

    iget-object v6, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    iget-object v6, v6, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    .line 441
    invoke-virtual {v3, v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v6

    .line 439
    invoke-virtual {v4, v5, v6}, Lorg/checkerframework/framework/type/QualifierHierarchy;->greatestLowerBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    .line 438
    invoke-virtual {p2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 443
    .end local v0    # "leftType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v3    # "rightType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->isRandomNextInt(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 444
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/source/tree/Tree;

    invoke-virtual {v0, v2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 445
    .local v0, "argType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v2, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v0, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 446
    .local v2, "anno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-static {v2}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v3

    .line 447
    .local v3, "qualifier":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-virtual {v3, v1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->plusOffset(I)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v1

    .line 448
    .end local v3    # "qualifier":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .local v1, "qualifier":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    iget-object v3, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual {v3, v1}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->convertUBQualifierToAnnotation(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 450
    .end local v0    # "argType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v1    # "qualifier":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .end local v2    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitUnary(Lcom/sun/source/tree/UnaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 414
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->visitUnary(Lcom/sun/source/tree/UnaryTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitUnary(Lcom/sun/source/tree/UnaryTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/UnaryTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 457
    invoke-interface {p1}, Lcom/sun/source/tree/UnaryTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->BITWISE_COMPLEMENT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_0

    .line 458
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    .line 459
    invoke-static {v0}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->access$200(Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;)Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;

    move-result-object v0

    invoke-interface {p1}, Lcom/sun/source/tree/UnaryTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 458
    invoke-direct {p0, v0, p2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->addAnnotationForBitwiseComplement(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    goto :goto_0

    .line 462
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 464
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;->visitUnary(Lcom/sun/source/tree/UnaryTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method
