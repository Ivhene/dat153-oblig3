.class public abstract Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;
.super Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;
.source "InitializationAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "InitializationQualifierHierarchy"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 743
    const-class v0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    return-void
.end method

.method public varargs constructor <init>(Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;
    .param p2, "f"    # Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;
    .param p3, "arg"    # [Ljava/lang/Object;

    .line 745
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>.InitializationQualifierHierarchy;"
    iput-object p1, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;->this$0:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    .line 746
    invoke-direct {p0, p2, p3}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;-><init>(Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;[Ljava/lang/Object;)V

    .line 747
    return-void
.end method


# virtual methods
.method public greatestLowerBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p1, "anno1"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "anno2"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 860
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>.InitializationQualifierHierarchy;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->greatestLowerBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0
.end method

.method public isSubtypeInitialization(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 7
    .param p1, "rhs"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "lhs"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 755
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>.InitializationQualifierHierarchy;"
    iget-object v0, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;->this$0:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->isInitializationAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;->this$0:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v0, p2}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->isInitializationAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 760
    :cond_0
    invoke-static {p1, p2}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 761
    return v2

    .line 764
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;->this$0:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v0, p2}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->isCommitted(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 765
    iget-object v0, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;->this$0:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->isFbcBottom(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    return v0

    .line 769
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;->this$0:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v0, p2}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->isFbcBottom(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 770
    return v1

    .line 773
    :cond_3
    iget-object v0, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;->this$0:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->isFbcBottom(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 774
    return v2

    .line 776
    :cond_4
    iget-object v0, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;->this$0:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->isUnclassified(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    .line 777
    .local v0, "unc1":Z
    iget-object v2, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;->this$0:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v2, p2}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->isUnclassified(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    .line 778
    .local v2, "unc2":Z
    iget-object v3, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;->this$0:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v3, p1}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->isFree(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v3

    .line 779
    .local v3, "free1":Z
    iget-object v4, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;->this$0:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v4, p2}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->isFree(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v4

    .line 782
    .local v4, "free2":Z
    iget-object v5, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;->this$0:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v5, p1}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->isCommitted(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 783
    return v2

    .line 786
    :cond_5
    if-eqz v0, :cond_6

    if-eqz v4, :cond_6

    .line 787
    return v1

    .line 792
    :cond_6
    if-eqz v3, :cond_7

    if-nez v4, :cond_9

    :cond_7
    if-eqz v0, :cond_8

    if-nez v2, :cond_9

    :cond_8
    if-eqz v3, :cond_a

    if-eqz v2, :cond_a

    .line 794
    :cond_9
    iget-object v1, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;->this$0:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v1, p1}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getTypeFrameFromAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 795
    .local v1, "frame1":Ljavax/lang/model/type/TypeMirror;
    iget-object v5, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;->this$0:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v5, p2}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getTypeFrameFromAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    .line 796
    .local v5, "frame2":Ljavax/lang/model/type/TypeMirror;
    iget-object v6, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;->this$0:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    iget-object v6, v6, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->types:Ljavax/lang/model/util/Types;

    invoke-interface {v6, v1, v5}, Ljavax/lang/model/util/Types;->isSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v6

    return v6

    .line 792
    .end local v1    # "frame1":Ljavax/lang/model/type/TypeMirror;
    .end local v5    # "frame2":Ljavax/lang/model/type/TypeMirror;
    :cond_a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 756
    .end local v0    # "unc1":Z
    .end local v2    # "unc2":Z
    .end local v3    # "free1":Z
    .end local v4    # "free2":Z
    :cond_b
    :goto_0
    return v1
.end method

.method protected leastUpperBoundInitialization(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 7
    .param p1, "anno1"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "anno2"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 810
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>.InitializationQualifierHierarchy;"
    iget-object v0, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;->this$0:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->isInitializationAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;->this$0:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v0, p2}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->isInitializationAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 815
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;->isSubtypeInitialization(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 816
    return-object p2

    .line 817
    :cond_1
    invoke-virtual {p0, p2, p1}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;->isSubtypeInitialization(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 818
    return-object p1

    .line 820
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;->this$0:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->isUnclassified(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    .line 821
    .local v0, "unc1":Z
    iget-object v1, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;->this$0:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v1, p2}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->isUnclassified(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v1

    .line 822
    .local v1, "unc2":Z
    iget-object v2, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;->this$0:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v2, p1}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->isFree(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    .line 823
    .local v2, "free1":Z
    iget-object v3, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;->this$0:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v3, p2}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->isFree(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v3

    .line 826
    .local v3, "free2":Z
    iget-object v4, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;->this$0:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v4, p1}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->isCommitted(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 827
    if-eqz v3, :cond_3

    .line 828
    iget-object v4, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;->this$0:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v4, p2}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getTypeFrameFromAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->createUnclassifiedAnnotation(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    return-object v4

    .line 827
    :cond_3
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 829
    :cond_4
    iget-object v4, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;->this$0:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v4, p2}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->isCommitted(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 830
    if-eqz v2, :cond_5

    .line 831
    iget-object v4, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;->this$0:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v4, p1}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getTypeFrameFromAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->createUnclassifiedAnnotation(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    return-object v4

    .line 830
    :cond_5
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 834
    :cond_6
    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    .line 835
    iget-object v4, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;->this$0:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    .line 837
    invoke-virtual {v4, p1}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getTypeFrameFromAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    iget-object v6, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;->this$0:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    .line 838
    invoke-virtual {v6, p2}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getTypeFrameFromAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v6

    .line 836
    invoke-virtual {p0, v5, v6}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;->lubTypeFrame(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    .line 835
    invoke-virtual {v4, v5}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->createFreeAnnotation(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    return-object v4

    .line 841
    :cond_7
    if-nez v0, :cond_8

    if-eqz v2, :cond_9

    :cond_8
    if-nez v1, :cond_a

    if-eqz v3, :cond_9

    goto :goto_0

    :cond_9
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 842
    :cond_a
    :goto_0
    iget-object v4, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;->this$0:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    .line 844
    invoke-virtual {v4, p1}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getTypeFrameFromAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    iget-object v6, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;->this$0:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v6, p2}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getTypeFrameFromAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v6

    .line 843
    invoke-virtual {p0, v5, v6}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;->lubTypeFrame(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    .line 842
    invoke-virtual {v4, v5}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->createUnclassifiedAnnotation(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    return-object v4

    .line 811
    .end local v0    # "unc1":Z
    .end local v1    # "unc2":Z
    .end local v2    # "free1":Z
    .end local v3    # "free2":Z
    :cond_b
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected lubTypeFrame(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;
    .locals 1
    .param p1, "a"    # Ljavax/lang/model/type/TypeMirror;
    .param p2, "b"    # Ljavax/lang/model/type/TypeMirror;

    .line 849
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>.InitializationQualifierHierarchy;"
    iget-object v0, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;->this$0:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->types:Ljavax/lang/model/util/Types;

    invoke-interface {v0, p1, p2}, Ljavax/lang/model/util/Types;->isSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 850
    return-object p2

    .line 851
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;->this$0:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->types:Ljavax/lang/model/util/Types;

    invoke-interface {v0, p2, p1}, Ljavax/lang/model/util/Types;->isSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 852
    return-object p1

    .line 855
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;->this$0:Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-static {v0}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->access$000(Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;)Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lorg/checkerframework/javacutil/TypesUtils;->leastUpperBound(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    return-object v0
.end method
