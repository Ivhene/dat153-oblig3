.class public Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessTreeAnnotator;
.super Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
.source "NullnessAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "NullnessTreeAnnotator"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 389
    const-class v0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;
    .param p2, "atypeFactory"    # Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    .line 392
    iput-object p1, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessTreeAnnotator;->this$0:Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    .line 393
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 394
    return-void
.end method


# virtual methods
.method public bridge synthetic visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 389
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessTreeAnnotator;->visitBinary(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitBinary(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/BinaryTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 436
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessTreeAnnotator;->this$0:Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->NONNULL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 437
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 389
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessTreeAnnotator;->visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/CompoundAssignmentTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 443
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessTreeAnnotator;->this$0:Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->NONNULL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 445
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 389
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessTreeAnnotator;->visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/IdentifierTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 419
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 420
    .local v0, "elt":Ljavax/lang/model/element/Element;
    if-eqz v0, :cond_1

    .line 422
    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->EXCEPTION_PARAMETER:Ljavax/lang/model/element/ElementKind;

    if-ne v1, v2, :cond_0

    .line 427
    iget-object v1, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessTreeAnnotator;->this$0:Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->NONNULL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 430
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 420
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public bridge synthetic visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 389
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessTreeAnnotator;->visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/MemberSelectTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 399
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 400
    .local v0, "elt":Ljavax/lang/model/element/Element;
    if-eqz v0, :cond_0

    .line 401
    const/4 v1, 0x0

    return-object v1

    .line 400
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public bridge synthetic visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 389
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessTreeAnnotator;->visitNewArray(Lcom/sun/source/tree/NewArrayTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNewArray(Lcom/sun/source/tree/NewArrayTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/NewArrayTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 465
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessTreeAnnotator;->this$0:Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->NONNULL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->isAnnotatedInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 466
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessTreeAnnotator;->this$0:Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->NONNULL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 471
    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    .line 472
    .local v0, "arrayType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 473
    .local v1, "componentType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v2, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessTreeAnnotator;->this$0:Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    invoke-static {v2}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->access$000(Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasEffectiveAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 474
    iget-object v2, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessTreeAnnotator;->this$0:Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    invoke-static {v2}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->access$100(Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 476
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public bridge synthetic visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 389
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessTreeAnnotator;->visitNewClass(Lcom/sun/source/tree/NewClassTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNewClass(Lcom/sun/source/tree/NewClassTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/NewClassTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 458
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessTreeAnnotator;->this$0:Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->NONNULL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 459
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitUnary(Lcom/sun/source/tree/UnaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 389
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessTreeAnnotator;->visitUnary(Lcom/sun/source/tree/UnaryTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitUnary(Lcom/sun/source/tree/UnaryTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/UnaryTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 451
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessTreeAnnotator;->this$0:Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->NONNULL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 452
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 389
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessTreeAnnotator;->visitVariable(Lcom/sun/source/tree/VariableTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitVariable(Lcom/sun/source/tree/VariableTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/VariableTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 406
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 407
    .local v0, "elt":Ljavax/lang/model/element/Element;
    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->EXCEPTION_PARAMETER:Ljavax/lang/model/element/ElementKind;

    if-ne v1, v2, :cond_0

    .line 408
    iget-object v1, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessTreeAnnotator;->this$0:Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->NONNULL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->isAnnotatedInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 410
    iget-object v1, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessTreeAnnotator;->this$0:Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->NONNULL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 413
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
