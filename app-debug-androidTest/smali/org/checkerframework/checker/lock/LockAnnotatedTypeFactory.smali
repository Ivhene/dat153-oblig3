.class public Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;
.super Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;
.source "LockAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;,
        Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$LockQualifierHierarchy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<",
        "Lorg/checkerframework/framework/flow/CFValue;",
        "Lorg/checkerframework/checker/lock/LockStore;",
        "Lorg/checkerframework/checker/lock/LockTransfer;",
        "Lorg/checkerframework/checker/lock/LockAnalysis;",
        ">;"
    }
.end annotation


# static fields
.field public static final NOT_EFFECTIVELY_FINAL:Ljava/lang/String; = "lock expression is not effectively final"


# instance fields
.field protected final GUARDEDBY:Ljavax/lang/model/element/AnnotationMirror;

.field protected final GUARDEDBYBOTTOM:Ljavax/lang/model/element/AnnotationMirror;

.field protected final GUARDEDBYUNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

.field protected final GUARDSATISFIED:Ljavax/lang/model/element/AnnotationMirror;

.field protected final LOCKHELD:Ljavax/lang/model/element/AnnotationMirror;

.field protected final LOCKPOSSIBLYHELD:Ljavax/lang/model/element/AnnotationMirror;

.field protected final SIDEEFFECTFREE:Ljavax/lang/model/element/AnnotationMirror;

.field protected final javaxGuardedBy:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field protected final jcipGuardedBy:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 3
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 114
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Z)V

    .line 85
    iget-object v0, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/checker/lock/qual/LockHeld;

    .line 86
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->LOCKHELD:Ljavax/lang/model/element/AnnotationMirror;

    .line 88
    iget-object v0, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/checker/lock/qual/LockPossiblyHeld;

    .line 89
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->LOCKPOSSIBLYHELD:Ljavax/lang/model/element/AnnotationMirror;

    .line 91
    iget-object v0, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/dataflow/qual/SideEffectFree;

    .line 92
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->SIDEEFFECTFREE:Ljavax/lang/model/element/AnnotationMirror;

    .line 94
    iget-object v1, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v2, Lorg/checkerframework/checker/lock/qual/GuardedByUnknown;

    .line 95
    invoke-static {v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->GUARDEDBYUNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-direct {p0, v1}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->createGuardedByAnnotationMirror(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->GUARDEDBY:Ljavax/lang/model/element/AnnotationMirror;

    .line 100
    iget-object v1, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v2, Lorg/checkerframework/checker/lock/qual/GuardedByBottom;

    .line 101
    invoke-static {v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->GUARDEDBYBOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    .line 103
    iget-object v1, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v2, Lorg/checkerframework/checker/lock/qual/GuardSatisfied;

    .line 104
    invoke-static {v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->GUARDSATISFIED:Ljavax/lang/model/element/AnnotationMirror;

    .line 118
    const-class v1, Lorg/checkerframework/checker/lock/qual/LockingFree;

    const-class v2, Lorg/checkerframework/dataflow/qual/SideEffectFree;

    invoke-virtual {p0, v1, v2, v0}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->addAliasedDeclAnnotation(Ljava/lang/Class;Ljava/lang/Class;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 124
    const-class v1, Lorg/checkerframework/checker/lock/qual/ReleasesNoLocks;

    const-class v2, Lorg/checkerframework/dataflow/qual/SideEffectFree;

    invoke-virtual {p0, v1, v2, v0}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->addAliasedDeclAnnotation(Ljava/lang/Class;Ljava/lang/Class;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 126
    const-string v0, "net.jcip.annotations.GuardedBy"

    invoke-direct {p0, v0}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->classForNameOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->jcipGuardedBy:Ljava/lang/Class;

    .line 128
    const-string v0, "javax.annotation.concurrent.GuardedBy"

    invoke-direct {p0, v0}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->classForNameOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->javaxGuardedBy:Ljava/lang/Class;

    .line 130
    invoke-virtual {p0}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->postInit()V

    .line 131
    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;)Lorg/checkerframework/common/basetype/BaseTypeChecker;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    .line 78
    iget-object v0, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    return-object v0
.end method

.method private classForNameOrNull(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p1, "annotationClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 143
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private createGuardedByAnnotationMirror(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 767
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lorg/checkerframework/javacutil/AnnotationBuilder;

    invoke-virtual {p0}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getProcessingEnv()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v1

    const-class v2, Lorg/checkerframework/checker/lock/qual/GuardedBy;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/Class;)V

    .line 768
    .local v0, "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    const-string v1, "value"

    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    .line 771
    invoke-virtual {v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->build()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1
.end method

.method private replaceAnnotationInGuardedByHierarchyIfGuardSatisfiedIndexMatches(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;ILjavax/lang/model/element/AnnotationMirror;)Z
    .locals 1
    .param p1, "methodReturnAtm"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "atm"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "matchingGuardSatisfiedIndex"    # I
    .param p4, "annotationInGuardedByHierarchy"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 671
    if-eqz p2, :cond_1

    const-class v0, Lorg/checkerframework/checker/lock/qual/GuardSatisfied;

    .line 672
    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 673
    invoke-virtual {p0, p2}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getGuardSatisfiedIndex(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)I

    move-result v0

    if-eq v0, p3, :cond_0

    goto :goto_0

    .line 677
    :cond_0
    invoke-virtual {p1, p4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 679
    const/4 v0, 0x1

    return v0

    .line 674
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private translateJcipAndJavaxAnnotations(Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 7
    .param p1, "element"    # Ljavax/lang/model/element/Element;
    .param p2, "atm"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 715
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/lang/model/element/ElementKind;->isField()Z

    move-result v0

    if-nez v0, :cond_0

    .line 716
    return-void

    .line 719
    :cond_0
    const/4 v0, 0x0

    .line 721
    .local v0, "anno":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v1, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->jcipGuardedBy:Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 722
    invoke-virtual {p0, p1, v1}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 725
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->javaxGuardedBy:Ljava/lang/Class;

    if-eqz v1, :cond_2

    .line 726
    invoke-virtual {p0, p1, v1}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 729
    :cond_2
    if-nez v0, :cond_3

    .line 730
    return-void

    .line 736
    :cond_3
    nop

    .line 737
    invoke-interface {v0}, Ljavax/lang/model/element/AnnotationMirror;->getElementValues()Ljava/util/Map;

    move-result-object v1

    .line 738
    .local v1, "valmap":Ljava/util/Map;, "Ljava/util/Map<+Ljavax/lang/model/element/ExecutableElement;+Ljavax/lang/model/element/AnnotationValue;>;"
    const/4 v2, 0x0

    .line 739
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "value"

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/ExecutableElement;

    .line 740
    .local v4, "elem":Ljavax/lang/model/element/ExecutableElement;
    invoke-interface {v4}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v6

    invoke-interface {v6, v5}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 741
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/AnnotationValue;

    invoke-interface {v3}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 742
    goto :goto_1

    .line 744
    .end local v4    # "elem":Ljavax/lang/model/element/ExecutableElement;
    :cond_4
    goto :goto_0

    .line 746
    :cond_5
    :goto_1
    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_6

    .line 747
    const-class v3, Ljava/lang/String;

    .line 748
    const/4 v4, 0x1

    invoke-static {v0, v5, v3, v4}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v3

    .local v3, "lockExpressions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2

    .line 749
    .end local v3    # "lockExpressions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 750
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 755
    .restart local v3    # "lockExpressions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 756
    iget-object v4, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->GUARDEDBY:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_3

    .line 758
    :cond_7
    invoke-direct {p0, v3}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->createGuardedByAnnotationMirror(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 760
    :goto_3
    return-void

    .line 752
    .end local v3    # "lockExpressions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    return-void
.end method


# virtual methods
.method public addComputedTypeAnnotations(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Z)V
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "useFlow"    # Z

    .line 696
    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->VARIABLE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_0

    .line 697
    move-object v0, p1

    check-cast v0, Lcom/sun/source/tree/VariableTree;

    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->translateJcipAndJavaxAnnotations(Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 700
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->addComputedTypeAnnotations(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Z)V

    .line 701
    return-void
.end method

.method public addComputedTypeAnnotations(Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 0
    .param p1, "elt"    # Ljavax/lang/model/element/Element;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 689
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->translateJcipAndJavaxAnnotations(Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 691
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->addComputedTypeAnnotations(Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 692
    return-void
.end method

.method protected createDependentTypesHelper()Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;
    .locals 1

    .line 151
    new-instance v0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$1;

    invoke-direct {v0, p0, p0}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$1;-><init>(Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    return-object v0
.end method

.method protected createFlowAnalysis(Ljava/util/List;)Lorg/checkerframework/checker/lock/LockAnalysis;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/checkerframework/javacutil/Pair<",
            "Ljavax/lang/model/element/VariableElement;",
            "Lorg/checkerframework/framework/flow/CFValue;",
            ">;>;)",
            "Lorg/checkerframework/checker/lock/LockAnalysis;"
        }
    .end annotation

    .line 268
    .local p1, "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;Lorg/checkerframework/framework/flow/CFValue;>;>;"
    new-instance v0, Lorg/checkerframework/checker/lock/LockAnalysis;

    iget-object v1, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-direct {v0, v1, p0, p1}, Lorg/checkerframework/checker/lock/LockAnalysis;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;Ljava/util/List;)V

    return-object v0
.end method

.method protected bridge synthetic createFlowAnalysis(Ljava/util/List;)Lorg/checkerframework/framework/flow/CFAbstractAnalysis;
    .locals 0

    .line 78
    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->createFlowAnalysis(Ljava/util/List;)Lorg/checkerframework/checker/lock/LockAnalysis;

    move-result-object p1

    return-object p1
.end method

.method public createFlowTransferFunction(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;)Lorg/checkerframework/checker/lock/LockTransfer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/checker/lock/LockStore;",
            "Lorg/checkerframework/checker/lock/LockTransfer;",
            ">;)",
            "Lorg/checkerframework/checker/lock/LockTransfer;"
        }
    .end annotation

    .line 274
    .local p1, "analysis":Lorg/checkerframework/framework/flow/CFAbstractAnalysis;, "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/checker/lock/LockStore;Lorg/checkerframework/checker/lock/LockTransfer;>;"
    new-instance v0, Lorg/checkerframework/checker/lock/LockTransfer;

    move-object v1, p1

    check-cast v1, Lorg/checkerframework/checker/lock/LockAnalysis;

    iget-object v2, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    check-cast v2, Lorg/checkerframework/checker/lock/LockChecker;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/checker/lock/LockTransfer;-><init>(Lorg/checkerframework/checker/lock/LockAnalysis;Lorg/checkerframework/checker/lock/LockChecker;)V

    return-object v0
.end method

.method public bridge synthetic createFlowTransferFunction(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;)Lorg/checkerframework/framework/flow/CFAbstractTransfer;
    .locals 0

    .line 78
    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->createFlowTransferFunction(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;)Lorg/checkerframework/checker/lock/LockTransfer;

    move-result-object p1

    return-object p1
.end method

.method public createQualifierHierarchy(Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)Lorg/checkerframework/framework/type/QualifierHierarchy;
    .locals 1
    .param p1, "factory"    # Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;

    .line 263
    new-instance v0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$LockQualifierHierarchy;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$LockQualifierHierarchy;-><init>(Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)V

    return-object v0
.end method

.method protected createSupportedTypeQualifiers()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation

    .line 251
    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lorg/checkerframework/checker/lock/qual/LockHeld;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lorg/checkerframework/checker/lock/qual/LockPossiblyHeld;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lorg/checkerframework/checker/lock/qual/GuardedBy;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lorg/checkerframework/checker/lock/qual/GuardedByUnknown;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lorg/checkerframework/checker/lock/qual/GuardSatisfied;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Lorg/checkerframework/checker/lock/qual/GuardedByBottom;

    aput-object v3, v1, v2

    .line 252
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 251
    return-object v0
.end method

.method protected createTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
    .locals 4

    .line 684
    new-instance v0, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    new-instance v2, Lorg/checkerframework/checker/lock/LockTreeAnnotator;

    invoke-direct {v2, p0}, Lorg/checkerframework/checker/lock/LockTreeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-super {p0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->createTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;-><init>([Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;)V

    return-object v0
.end method

.method getGuardSatisfiedIndex(Ljavax/lang/model/element/AnnotationMirror;)I
    .locals 3
    .param p1, "am"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 576
    const-class v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    const-string v2, "value"

    invoke-static {p1, v2, v0, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method getGuardSatisfiedIndex(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)I
    .locals 1
    .param p1, "atm"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 564
    const-class v0, Lorg/checkerframework/checker/lock/qual/GuardSatisfied;

    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getGuardSatisfiedIndex(Ljavax/lang/model/element/AnnotationMirror;)I

    move-result v0

    return v0
.end method

.method isExpressionEffectivelyFinal(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z
    .locals 6
    .param p1, "expr"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 224
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 225
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    .line 226
    .local v0, "fieldAccess":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getReceiver()Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v3

    .line 228
    .local v3, "recv":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->isFinal()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->isExpressionEffectivelyFinal(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 229
    .end local v0    # "fieldAccess":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    .end local v3    # "recv":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :cond_1
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;

    if-eqz v0, :cond_2

    .line 230
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;->getElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/ElementUtils;->isEffectivelyFinal(Ljavax/lang/model/element/Element;)Z

    move-result v0

    return v0

    .line 231
    :cond_2
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;

    if-eqz v0, :cond_6

    .line 232
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;

    .line 233
    .local v0, "methodCall":Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->getParameters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 234
    .local v4, "param":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    invoke-virtual {p0, v4}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->isExpressionEffectivelyFinal(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 235
    return v2

    .line 237
    .end local v4    # "param":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :cond_3
    goto :goto_1

    .line 238
    :cond_4
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->getElement()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v3

    invoke-static {p0, v3}, Lorg/checkerframework/dataflow/util/PurityUtils;->isDeterministic(Lorg/checkerframework/javacutil/AnnotationProvider;Ljavax/lang/model/element/Element;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 239
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->getReceiver()Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->isExpressionEffectivelyFinal(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    .line 238
    :goto_2
    return v1

    .line 240
    .end local v0    # "methodCall":Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;
    :cond_6
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ThisReference;

    if-nez v0, :cond_8

    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;

    if-eqz v0, :cond_7

    goto :goto_3

    .line 245
    :cond_7
    return v2

    .line 243
    :cond_8
    :goto_3
    return v1
.end method

.method public methodFromUse(Lcom/sun/source/tree/ExpressionTree;Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;
    .locals 10
    .param p1, "tree"    # Lcom/sun/source/tree/ExpressionTree;
    .param p2, "methodElt"    # Ljavax/lang/model/element/ExecutableElement;
    .param p3, "receiverType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 582
    invoke-super {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->methodFromUse(Lcom/sun/source/tree/ExpressionTree;Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;

    move-result-object v0

    .line 584
    .local v0, "mType":Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;
    invoke-interface {p1}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->METHOD_INVOCATION:Lcom/sun/source/tree/Tree$Kind;

    if-eq v1, v2, :cond_0

    .line 585
    return-object v0

    .line 594
    :cond_0
    iget-object v1, v0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;->executableType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 596
    .local v1, "invokedMethod":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getElement()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v2

    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/element/ElementKind;->CONSTRUCTOR:Ljavax/lang/model/element/ElementKind;

    if-ne v2, v3, :cond_1

    .line 597
    return-object v0

    .line 600
    :cond_1
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 602
    .local v2, "methodDefinitionReturn":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    if-eqz v2, :cond_7

    const-class v3, Lorg/checkerframework/checker/lock/qual/GuardSatisfied;

    .line 603
    invoke-virtual {v2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 607
    :cond_2
    invoke-virtual {p0, v2}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getGuardSatisfiedIndex(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)I

    move-result v3

    .line 613
    .local v3, "returnGuardSatisfiedIndex":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 614
    return-object v0

    .line 621
    :cond_3
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getElement()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v4

    invoke-static {v4}, Lorg/checkerframework/javacutil/ElementUtils;->isStatic(Ljavax/lang/model/element/Element;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 624
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v4

    iget-object v5, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->GUARDEDBYUNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    .line 626
    invoke-virtual {p3, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v5

    .line 622
    invoke-direct {p0, v2, v4, v3, v5}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->replaceAnnotationInGuardedByHierarchyIfGuardSatisfiedIndexMatches(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;ILjavax/lang/model/element/AnnotationMirror;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 627
    return-object v0

    .line 630
    :cond_4
    move-object v4, p1

    check-cast v4, Lcom/sun/source/tree/MethodInvocationTree;

    .line 631
    invoke-interface {v4}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v4

    .line 632
    .local v4, "methodInvocationTreeArguments":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    nop

    .line 633
    invoke-static {p0, v1, v4}, Lorg/checkerframework/framework/util/AnnotatedTypes;->expandVarArgs(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 635
    .local v5, "requiredArgs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 636
    nop

    .line 638
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 640
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/source/tree/Tree;

    invoke-virtual {p0, v8}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v8

    iget-object v9, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->GUARDEDBYUNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    .line 641
    invoke-virtual {v8, v9}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v8

    .line 636
    invoke-direct {p0, v2, v7, v3, v8}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->replaceAnnotationInGuardedByHierarchyIfGuardSatisfiedIndexMatches(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;ILjavax/lang/model/element/AnnotationMirror;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 642
    return-object v0

    .line 635
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 646
    .end local v6    # "i":I
    :cond_6
    return-object v0

    .line 604
    .end local v3    # "returnGuardSatisfiedIndex":I
    .end local v4    # "methodInvocationTreeArguments":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    .end local v5    # "requiredArgs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    :cond_7
    :goto_1
    return-object v0
.end method

.method methodSideEffectAnnotation(Ljavax/lang/model/element/Element;Z)Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;
    .locals 7
    .param p1, "element"    # Ljavax/lang/model/element/Element;
    .param p2, "issueErrorIfMoreThanOnePresent"    # Z

    .line 518
    if-eqz p1, :cond_6

    .line 519
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 520
    .local v0, "sideEffectAnnotationPresent":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;>;"
    invoke-static {}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->values()[Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 521
    .local v5, "sea":Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;
    invoke-virtual {v5}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->getAnnotationClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getDeclAnnotationNoAliases(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 522
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    .end local v5    # "sea":Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 526
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 528
    .local v1, "count":I
    if-nez v1, :cond_3

    .line 529
    iget-object v2, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->defaults:Lorg/checkerframework/framework/util/defaults/QualifierDefaults;

    invoke-virtual {v2, p1}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->applyUncheckedCodeDefaults(Ljavax/lang/model/element/Element;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 530
    sget-object v2, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->MAYRELEASELOCKS:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    goto :goto_1

    .line 531
    :cond_2
    sget-object v2, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->RELEASESNOLOCKS:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    .line 529
    :goto_1
    return-object v2

    .line 534
    :cond_3
    nop

    .line 539
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    .line 541
    .local v2, "weakest":Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    .line 542
    .local v4, "sea":Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;
    invoke-virtual {v4, v2}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->isWeakerThan(Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 543
    move-object v2, v4

    .line 545
    .end local v4    # "sea":Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;
    :cond_4
    goto :goto_2

    .line 546
    :cond_5
    return-object v2

    .line 551
    .end local v0    # "sideEffectAnnotationPresent":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;>;"
    .end local v1    # "count":I
    .end local v2    # "weakest":Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;
    :cond_6
    invoke-static {}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->weakest()Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    move-result-object v0

    return-object v0
.end method
