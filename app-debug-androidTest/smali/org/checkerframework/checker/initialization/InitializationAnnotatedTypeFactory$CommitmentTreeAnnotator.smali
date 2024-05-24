.class public Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$CommitmentTreeAnnotator;
.super Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
.source "InitializationAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CommitmentTreeAnnotator"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 687
    const-class v0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<",
            "****>;)V"
        }
    .end annotation

    .line 690
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$CommitmentTreeAnnotator;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>.CommitmentTreeAnnotator;"
    .local p2, "atypeFactory":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<****>;"
    iput-object p1, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$CommitmentTreeAnnotator;->this$0:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    .line 691
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 692
    return-void
.end method


# virtual methods
.method public bridge synthetic visitLiteral(Lcom/sun/source/tree/LiteralTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 687
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$CommitmentTreeAnnotator;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>.CommitmentTreeAnnotator;"
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$CommitmentTreeAnnotator;->visitLiteral(Lcom/sun/source/tree/LiteralTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitLiteral(Lcom/sun/source/tree/LiteralTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/LiteralTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 727
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$CommitmentTreeAnnotator;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>.CommitmentTreeAnnotator;"
    invoke-interface {p1}, Lcom/sun/source/tree/LiteralTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->NULL_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    if-eq v0, v1, :cond_0

    .line 728
    iget-object v0, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$CommitmentTreeAnnotator;->this$0:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->INITIALIZED:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 730
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;->visitLiteral(Lcom/sun/source/tree/LiteralTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 687
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$CommitmentTreeAnnotator;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>.CommitmentTreeAnnotator;"
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$CommitmentTreeAnnotator;->visitMethod(Lcom/sun/source/tree/MethodTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMethod(Lcom/sun/source/tree/MethodTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 5
    .param p1, "node"    # Lcom/sun/source/tree/MethodTree;
    .param p2, "p"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 696
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$CommitmentTreeAnnotator;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>.CommitmentTreeAnnotator;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;->visitMethod(Lcom/sun/source/tree/MethodTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object v0

    .line 697
    .local v0, "result":Ljava/lang/Void;
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isConstructor(Lcom/sun/source/tree/MethodTree;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 698
    instance-of v1, p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    if-eqz v1, :cond_0

    .line 699
    move-object v1, p2

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 700
    .local v1, "exeType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    nop

    .line 701
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/type/DeclaredType;

    .line 702
    .local v2, "underlyingType":Ljavax/lang/model/type/DeclaredType;
    iget-object v3, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$CommitmentTreeAnnotator;->this$0:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v3, v2}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getFreeOrRawAnnotationOfSuperType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    .line 703
    .local v3, "a":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_0

    .line 698
    .end local v1    # "exeType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .end local v2    # "underlyingType":Ljavax/lang/model/type/DeclaredType;
    .end local v3    # "a":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 705
    :cond_1
    :goto_0
    return-object v0
.end method

.method public bridge synthetic visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 687
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$CommitmentTreeAnnotator;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>.CommitmentTreeAnnotator;"
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$CommitmentTreeAnnotator;->visitNewClass(Lcom/sun/source/tree/NewClassTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNewClass(Lcom/sun/source/tree/NewClassTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 6
    .param p1, "node"    # Lcom/sun/source/tree/NewClassTree;
    .param p2, "p"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 710
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$CommitmentTreeAnnotator;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>.CommitmentTreeAnnotator;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;->visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    const/4 v0, 0x1

    .line 712
    .local v0, "allCommitted":Z
    move-object v1, p1

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    .line 713
    .local v1, "type":Lcom/sun/tools/javac/code/Type;
    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getArguments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/source/tree/ExpressionTree;

    .line 714
    .local v3, "a":Lcom/sun/source/tree/ExpressionTree;
    iget-object v4, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$CommitmentTreeAnnotator;->this$0:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v4, v3}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    .line 715
    .local v4, "t":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v5, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$CommitmentTreeAnnotator;->this$0:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v5, v4}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->isCommitted(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$CommitmentTreeAnnotator;->this$0:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v5, v4}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->isFbcBottom(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v5, 0x1

    :goto_2
    and-int/2addr v0, v5

    .line 716
    .end local v3    # "a":Lcom/sun/source/tree/ExpressionTree;
    .end local v4    # "t":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 717
    :cond_2
    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 718
    iget-object v3, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$CommitmentTreeAnnotator;->this$0:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v3, v1}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->createFreeAnnotation(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 719
    return-object v2

    .line 721
    :cond_3
    iget-object v3, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$CommitmentTreeAnnotator;->this$0:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    iget-object v3, v3, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->INITIALIZED:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 722
    return-object v2
.end method
