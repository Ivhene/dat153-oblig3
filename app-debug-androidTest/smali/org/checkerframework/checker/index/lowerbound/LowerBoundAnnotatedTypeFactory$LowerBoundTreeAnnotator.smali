.class Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory$LowerBoundTreeAnnotator;
.super Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
.source "LowerBoundAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LowerBoundTreeAnnotator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;


# direct methods
.method public constructor <init>(Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 0
    .param p2, "annotatedTypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 239
    iput-object p1, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory$LowerBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    .line 240
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 241
    return-void
.end method

.method private demoteType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 1
    .param p1, "typeSrc"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "typeDst"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 277
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory$LowerBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->POS:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory$LowerBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->NN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_0

    .line 279
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory$LowerBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->NN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory$LowerBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->GTEN1:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_0

    .line 282
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory$LowerBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 284
    :goto_0
    return-void
.end method

.method private handleBitWiseComplement(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 3
    .param p1, "searchIndexType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "typeDst"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 325
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory$LowerBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    const-class v2, Lorg/checkerframework/checker/index/qual/NegativeIndexFor;

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->containsSameByClass(Ljava/util/Collection;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory$LowerBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->NN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 328
    :cond_0
    return-void
.end method

.method private promoteType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 1
    .param p1, "typeSrc"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "typeDst"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 255
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory$LowerBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->POS:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory$LowerBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->POS:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_0

    .line 257
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory$LowerBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->NN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory$LowerBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->POS:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_0

    .line 259
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory$LowerBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->GTEN1:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory$LowerBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->NN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_0

    .line 262
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory$LowerBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 264
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 238
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory$LowerBoundTreeAnnotator;->visitBinary(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitBinary(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/BinaryTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 364
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory$LowerBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 365
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;->visitBinary(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 238
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory$LowerBoundTreeAnnotator;->visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 4
    .param p1, "tree"    # Lcom/sun/source/tree/MemberSelectTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 351
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory$LowerBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->getMinLenFromMemberSelectTree(Lcom/sun/source/tree/MemberSelectTree;)Ljava/lang/Integer;

    move-result-object v0

    .line 352
    .local v0, "minLen":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 353
    iget-object v1, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory$LowerBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->anmFromVal(J)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 355
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;->visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Void;

    return-object v1
.end method

.method public bridge synthetic visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 238
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory$LowerBoundTreeAnnotator;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 6
    .param p1, "tree"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 333
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory$LowerBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    invoke-static {v0}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->access$000(Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;)Lorg/checkerframework/checker/index/IndexMethodIdentifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/checker/index/IndexMethodIdentifier;->isMathMax(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/ExpressionTree;

    .line 335
    .local v0, "left":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/ExpressionTree;

    .line 336
    .local v1, "right":Lcom/sun/source/tree/ExpressionTree;
    iget-object v2, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory$LowerBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    .line 337
    invoke-static {v2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->access$100(Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;)Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory$LowerBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    .line 338
    invoke-virtual {v3, v0}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory$LowerBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    iget-object v4, v4, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->POS:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v3, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory$LowerBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    .line 339
    invoke-virtual {v4, v1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    iget-object v5, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory$LowerBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    iget-object v5, v5, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->POS:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v4, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    .line 337
    invoke-virtual {v2, v3, v4}, Lorg/checkerframework/framework/type/QualifierHierarchy;->greatestLowerBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 336
    invoke-virtual {p2, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 341
    .end local v0    # "left":Lcom/sun/source/tree/ExpressionTree;
    .end local v1    # "right":Lcom/sun/source/tree/ExpressionTree;
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitUnary(Lcom/sun/source/tree/UnaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 238
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory$LowerBoundTreeAnnotator;->visitUnary(Lcom/sun/source/tree/UnaryTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitUnary(Lcom/sun/source/tree/UnaryTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 3
    .param p1, "tree"    # Lcom/sun/source/tree/UnaryTree;
    .param p2, "typeDst"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 289
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory$LowerBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    invoke-interface {p1}, Lcom/sun/source/tree/UnaryTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 290
    .local v0, "typeSrc":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    sget-object v1, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {p1}, Lcom/sun/source/tree/UnaryTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 302
    :pswitch_0
    iget-object v1, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory$LowerBoundTreeAnnotator;->this$0:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    .line 303
    invoke-virtual {v1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->getSearchIndexAnnotatedTypeFactory()Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;

    move-result-object v1

    .line 304
    invoke-interface {p1}, Lcom/sun/source/tree/UnaryTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 302
    invoke-direct {p0, v1, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory$LowerBoundTreeAnnotator;->handleBitWiseComplement(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 306
    goto :goto_0

    .line 300
    :pswitch_1
    goto :goto_0

    .line 295
    :pswitch_2
    invoke-direct {p0, v0, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory$LowerBoundTreeAnnotator;->demoteType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 296
    goto :goto_0

    .line 292
    :pswitch_3
    invoke-direct {p0, v0, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory$LowerBoundTreeAnnotator;->promoteType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 293
    nop

    .line 310
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;->visitUnary(Lcom/sun/source/tree/UnaryTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Void;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
