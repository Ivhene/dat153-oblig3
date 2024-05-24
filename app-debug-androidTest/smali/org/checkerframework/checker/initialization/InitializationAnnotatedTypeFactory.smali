.class public abstract Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;
.super Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;
.source "InitializationAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;,
        Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$CommitmentTreeAnnotator;,
        Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$CommitmentTypeAnnotator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Value:",
        "Lorg/checkerframework/framework/flow/CFAbstractValue<",
        "TValue;>;Store:",
        "Lorg/checkerframework/checker/initialization/InitializationStore<",
        "TValue;TStore;>;Transfer:",
        "Lorg/checkerframework/checker/initialization/InitializationTransfer<",
        "TValue;TTransfer;TStore;>;Flow:",
        "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<",
        "TValue;TStore;TTransfer;>;>",
        "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<",
        "TValue;TStore;TTransfer;TFlow;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final FBCBOTTOM:Ljavax/lang/model/element/AnnotationMirror;

.field protected final INITIALIZED:Ljavax/lang/model/element/AnnotationMirror;

.field protected final NOT_ONLY_INITIALIZED:Ljavax/lang/model/element/AnnotationMirror;

.field protected final UNDER_INITALIZATION:Ljavax/lang/model/element/AnnotationMirror;

.field protected final UNKNOWN_INITIALIZATION:Ljavax/lang/model/element/AnnotationMirror;

.field private computingAnnotatedTypeMirrorOfLHS:Z

.field protected final initAnnoNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final initAnnos:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 7
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 108
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Z)V

    .line 393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->computingAnnotatedTypeMirrorOfLHS:Z

    .line 110
    iget-object v0, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/checker/initialization/qual/Initialized;

    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->INITIALIZED:Ljavax/lang/model/element/AnnotationMirror;

    .line 111
    iget-object v1, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v2, Lorg/checkerframework/checker/initialization/qual/UnderInitialization;

    invoke-static {v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->UNDER_INITALIZATION:Ljavax/lang/model/element/AnnotationMirror;

    .line 112
    iget-object v2, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v3, Lorg/checkerframework/checker/initialization/qual/NotOnlyInitialized;

    invoke-static {v2, v3}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->NOT_ONLY_INITIALIZED:Ljavax/lang/model/element/AnnotationMirror;

    .line 113
    iget-object v2, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v3, Lorg/checkerframework/checker/initialization/qual/FBCBottom;

    invoke-static {v2, v3}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->FBCBOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    .line 114
    iget-object v3, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v4, Lorg/checkerframework/checker/initialization/qual/UnknownInitialization;

    invoke-static {v3, v4}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    iput-object v3, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->UNKNOWN_INITIALIZATION:Ljavax/lang/model/element/AnnotationMirror;

    .line 116
    new-instance v4, Ljava/util/LinkedHashSet;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 117
    .local v4, "tempInitAnnos":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;>;"
    const-class v6, Lorg/checkerframework/checker/initialization/qual/UnderInitialization;

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    const-class v6, Lorg/checkerframework/checker/initialization/qual/Initialized;

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    const-class v6, Lorg/checkerframework/checker/initialization/qual/UnknownInitialization;

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    const-class v6, Lorg/checkerframework/checker/initialization/qual/FBCBottom;

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    iput-object v6, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->initAnnos:Ljava/util/Set;

    .line 124
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v5}, Ljava/util/HashSet;-><init>(I)V

    move-object v5, v6

    .line 125
    .local v5, "tempInitAnnoNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v3}, Lorg/checkerframework/javacutil/AnnotationUtils;->annotationName(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-static {v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->annotationName(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-static {v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->annotationName(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-static {v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->annotationName(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->initAnnoNames:Ljava/util/Set;

    .line 134
    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;)Ljavax/annotation/processing/ProcessingEnvironment;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    .line 66
    iget-object v0, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    return-object v0
.end method

.method private computeFieldAccessType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Collection;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)V
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "receiverType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p4, "fieldAnnotations"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p5, "element"    # Ljavax/lang/model/element/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Ljava/util/Collection<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Ljavax/lang/model/element/Element;",
            ")V"
        }
    .end annotation

    .line 615
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>;"
    .local p2, "declaredFieldAnnotations":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    return-void

    .line 620
    :cond_0
    nop

    .line 621
    invoke-virtual {p4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->UNKNOWN_INITIALIZATION:Ljavax/lang/model/element/AnnotationMirror;

    .line 620
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->containsSameByName(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 622
    return-void

    .line 624
    :cond_1
    invoke-virtual {p0, p3}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->isUnclassified(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p3}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->isFree(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 626
    :cond_2
    invoke-interface {p5}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 627
    .local v0, "fieldDeclarationType":Ljavax/lang/model/type/TypeMirror;
    nop

    .line 628
    invoke-virtual {p0, p3, v0}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->isInitializedForFrame(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v1

    .line 629
    .local v1, "isInitializedForFrame":Z
    if-eqz v1, :cond_3

    .line 633
    iget-object v2, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->UNKNOWN_INITIALIZATION:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_0

    .line 634
    :cond_3
    iget-boolean v2, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->computingAnnotatedTypeMirrorOfLHS:Z

    if-eqz v2, :cond_4

    .line 639
    iget-object v2, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->UNKNOWN_INITIALIZATION:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_0

    .line 644
    :cond_4
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->clearAnnotations()V

    .line 645
    iget-object v2, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getTopAnnotations()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotations(Ljava/lang/Iterable;)V

    .line 648
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->NOT_ONLY_INITIALIZED:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p2, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->containsSame(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 651
    iget-object v2, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->INITIALIZED:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 654
    .end local v0    # "fieldDeclarationType":Ljavax/lang/model/type/TypeMirror;
    .end local v1    # "isInitializedForFrame":Z
    :cond_5
    return-void
.end method

.method private findTopLevelClassMemberForTree(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/Tree;
    .locals 4
    .param p1, "path"    # Lcom/sun/source/util/TreePath;

    .line 429
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>;"
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingClass(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/ClassTree;

    move-result-object v0

    .line 430
    .local v0, "enclosingClass":Lcom/sun/source/tree/ClassTree;
    if-eqz v0, :cond_1

    .line 432
    invoke-interface {v0}, Lcom/sun/source/tree/ClassTree;->getMembers()Ljava/util/List;

    move-result-object v1

    .line 433
    .local v1, "classMembers":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    move-object v2, p1

    .line 434
    .local v2, "searchPath":Lcom/sun/source/util/TreePath;
    :cond_0
    invoke-virtual {v2}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 435
    invoke-virtual {v2}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v3

    if-eq v3, v0, :cond_1

    .line 436
    invoke-virtual {v2}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v2

    .line 437
    invoke-virtual {v2}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 438
    invoke-virtual {v2}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v3

    return-object v3

    .line 442
    .end local v1    # "classMembers":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    .end local v2    # "searchPath":Lcom/sun/source/util/TreePath;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private isUnused(Lcom/sun/source/tree/VariableTree;Ljava/util/Collection;)Z
    .locals 7
    .param p1, "field"    # Lcom/sun/source/tree/VariableTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/VariableTree;",
            "Ljava/util/Collection<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)Z"
        }
    .end annotation

    .line 563
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>;"
    .local p2, "receiverAnnos":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 564
    return v1

    .line 567
    :cond_0
    nop

    .line 568
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/VariableTree;)Ljavax/lang/model/element/VariableElement;

    move-result-object v0

    const-class v2, Lorg/checkerframework/framework/qual/Unused;

    invoke-virtual {p0, v0, v2}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 569
    .local v0, "unused":Ljavax/lang/model/element/AnnotationMirror;
    if-nez v0, :cond_1

    .line 570
    return v1

    .line 573
    :cond_1
    const-string v2, "when"

    invoke-static {v0, v2, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueClassName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Z)Ljavax/lang/model/element/Name;

    move-result-object v2

    .line 574
    .local v2, "when":Ljavax/lang/model/element/Name;
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/AnnotationMirror;

    .line 575
    .local v4, "anno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-interface {v4}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v5

    invoke-interface {v5}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v5

    check-cast v5, Ljavax/lang/model/element/TypeElement;

    invoke-interface {v5}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v5

    .line 576
    .local v5, "annoName":Ljavax/lang/model/element/Name;
    invoke-interface {v5, v2}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 577
    const/4 v1, 0x1

    return v1

    .line 579
    .end local v4    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v5    # "annoName":Ljavax/lang/model/element/Name;
    :cond_2
    goto :goto_0

    .line 581
    :cond_3
    return v1
.end method


# virtual methods
.method protected areAllFieldsCommittedOnly(Lcom/sun/source/tree/ClassTree;)Z
    .locals 6
    .param p1, "classTree"    # Lcom/sun/source/tree/ClassTree;

    .line 348
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>;"
    invoke-interface {p1}, Lcom/sun/source/tree/ClassTree;->getMembers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/Tree;

    .line 349
    .local v1, "member":Lcom/sun/source/tree/Tree;
    invoke-interface {v1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->VARIABLE:Lcom/sun/source/tree/Tree$Kind;

    if-eq v2, v3, :cond_0

    .line 350
    goto :goto_0

    .line 352
    :cond_0
    move-object v2, v1

    check-cast v2, Lcom/sun/source/tree/VariableTree;

    .line 353
    .local v2, "var":Lcom/sun/source/tree/VariableTree;
    invoke-static {v2}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/VariableTree;)Ljavax/lang/model/element/VariableElement;

    move-result-object v3

    .line 355
    .local v3, "varElt":Ljavax/lang/model/element/VariableElement;
    const-class v4, Lorg/checkerframework/checker/initialization/qual/NotOnlyInitialized;

    invoke-virtual {p0, v3, v4}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 358
    invoke-interface {v3}, Ljavax/lang/model/element/VariableElement;->getModifiers()Ljava/util/Set;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 359
    const/4 v0, 0x0

    return v0

    .line 362
    .end local v1    # "member":Lcom/sun/source/tree/Tree;
    .end local v2    # "var":Lcom/sun/source/tree/VariableTree;
    .end local v3    # "varElt":Ljavax/lang/model/element/VariableElement;
    :cond_1
    goto :goto_0

    .line 363
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public createFreeAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 220
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>;"
    .local p1, "typeFrame":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_0

    .line 221
    new-instance v0, Lorg/checkerframework/javacutil/AnnotationBuilder;

    iget-object v1, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    const-class v2, Lorg/checkerframework/checker/initialization/qual/UnderInitialization;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/Class;)V

    .line 222
    .local v0, "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/lang/Class;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    .line 223
    invoke-virtual {v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->build()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1

    .line 220
    .end local v0    # "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public createFreeAnnotation(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .param p1, "typeFrame"    # Ljavax/lang/model/type/TypeMirror;

    .line 207
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>;"
    if-eqz p1, :cond_0

    .line 208
    new-instance v0, Lorg/checkerframework/javacutil/AnnotationBuilder;

    iget-object v1, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    const-class v2, Lorg/checkerframework/checker/initialization/qual/UnderInitialization;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/Class;)V

    .line 209
    .local v0, "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    .line 210
    invoke-virtual {v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->build()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1

    .line 207
    .end local v0    # "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected createTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
    .locals 4

    .line 664
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>;"
    new-instance v0, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    .line 665
    invoke-super {p0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->createTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$CommitmentTreeAnnotator;

    invoke-direct {v2, p0, p0}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$CommitmentTreeAnnotator;-><init>(Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;-><init>([Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;)V

    .line 664
    return-object v0
.end method

.method protected createTypeAnnotator()Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;
    .locals 4

    .line 658
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>;"
    new-instance v0, Lorg/checkerframework/framework/type/typeannotator/ListTypeAnnotator;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;

    .line 659
    invoke-super {p0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->createTypeAnnotator()Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$CommitmentTypeAnnotator;

    invoke-direct {v2, p0, p0}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$CommitmentTypeAnnotator;-><init>(Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/checkerframework/framework/type/typeannotator/ListTypeAnnotator;-><init>([Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;)V

    .line 658
    return-object v0
.end method

.method public createUnclassifiedAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 233
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>;"
    .local p1, "typeFrame":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_0

    .line 234
    new-instance v0, Lorg/checkerframework/javacutil/AnnotationBuilder;

    iget-object v1, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    const-class v2, Lorg/checkerframework/checker/initialization/qual/UnknownInitialization;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/Class;)V

    .line 236
    .local v0, "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/lang/Class;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    .line 237
    invoke-virtual {v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->build()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1

    .line 233
    .end local v0    # "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public createUnclassifiedAnnotation(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .param p1, "typeFrame"    # Ljavax/lang/model/type/TypeMirror;

    .line 247
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>;"
    if-eqz p1, :cond_0

    .line 248
    new-instance v0, Lorg/checkerframework/javacutil/AnnotationBuilder;

    iget-object v1, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    const-class v2, Lorg/checkerframework/checker/initialization/qual/UnknownInitialization;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/Class;)V

    .line 250
    .local v0, "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    .line 251
    invoke-virtual {v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->build()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1

    .line 247
    .end local v0    # "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getAnnotatedTypeLhs(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 2
    .param p1, "lhsTree"    # Lcom/sun/source/tree/Tree;

    .line 397
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>;"
    iget-boolean v0, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->computingAnnotatedTypeMirrorOfLHS:Z

    .line 398
    .local v0, "oldComputingAnnotatedTypeMirrorOfLHS":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->computingAnnotatedTypeMirrorOfLHS:Z

    .line 399
    invoke-super {p0, p1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedTypeLhs(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 400
    .local v1, "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iput-boolean v0, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->computingAnnotatedTypeMirrorOfLHS:Z

    .line 401
    return-object v1
.end method

.method public abstract getFieldInvariantAnnotation()Ljavax/lang/model/element/AnnotationMirror;
.end method

.method protected getFreeOrRawAnnotationOfSuperType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 6
    .param p1, "type"    # Ljavax/lang/model/type/TypeMirror;

    .line 486
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>;"
    iget-object v0, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->types:Ljavax/lang/model/util/Types;

    invoke-interface {v0, p1}, Ljavax/lang/model/util/Types;->directSupertypes(Ljavax/lang/model/type/TypeMirror;)Ljava/util/List;

    move-result-object v0

    .line 487
    .local v0, "superTypes":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/type/TypeMirror;>;"
    const/4 v1, 0x0

    .line 488
    .local v1, "superClass":Ljavax/lang/model/type/TypeMirror;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/type/TypeMirror;

    .line 489
    .local v3, "superType":Ljavax/lang/model/type/TypeMirror;
    iget-object v4, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->types:Ljavax/lang/model/util/Types;

    invoke-interface {v4, v3}, Ljavax/lang/model/util/Types;->asElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/Element;

    move-result-object v4

    invoke-interface {v4}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v4

    .line 490
    .local v4, "kind":Ljavax/lang/model/element/ElementKind;
    sget-object v5, Ljavax/lang/model/element/ElementKind;->CLASS:Ljavax/lang/model/element/ElementKind;

    if-ne v4, v5, :cond_0

    .line 491
    move-object v1, v3

    .line 492
    goto :goto_1

    .line 494
    .end local v3    # "superType":Ljavax/lang/model/type/TypeMirror;
    .end local v4    # "kind":Ljavax/lang/model/element/ElementKind;
    :cond_0
    goto :goto_0

    .line 496
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 497
    invoke-virtual {p0, v1}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->createFreeAnnotation(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .local v2, "annotation":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_2

    .line 500
    .end local v2    # "annotation":Ljavax/lang/model/element/AnnotationMirror;
    :cond_2
    const-class v2, Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->createFreeAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 502
    .restart local v2    # "annotation":Ljavax/lang/model/element/AnnotationMirror;
    :goto_2
    return-object v2
.end method

.method public getInitializationAnnotations()Ljava/util/Set;
    .locals 1
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

    .line 137
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>;"
    iget-object v0, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->initAnnos:Ljava/util/Set;

    return-object v0
.end method

.method public getInitializedInvariantFields(Lorg/checkerframework/checker/initialization/InitializationStore;Lcom/sun/source/util/TreePath;)Ljava/util/List;
    .locals 7
    .param p2, "path"    # Lcom/sun/source/util/TreePath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TStore;",
            "Lcom/sun/source/util/TreePath;",
            ")",
            "Ljava/util/List<",
            "Lcom/sun/source/tree/VariableTree;",
            ">;"
        }
    .end annotation

    .line 542
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>;"
    .local p1, "store":Lorg/checkerframework/checker/initialization/InitializationStore;, "TStore;"
    invoke-static {p2}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingClass(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/ClassTree;

    move-result-object v0

    .line 543
    .local v0, "currentClass":Lcom/sun/source/tree/ClassTree;
    invoke-static {v0}, Lorg/checkerframework/checker/initialization/InitializationChecker;->getAllFields(Lcom/sun/source/tree/ClassTree;)Ljava/util/List;

    move-result-object v1

    .line 544
    .local v1, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/sun/source/tree/VariableTree;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 545
    .local v2, "initializedFields":Ljava/util/List;, "Ljava/util/List<Lcom/sun/source/tree/VariableTree;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/source/tree/VariableTree;

    .line 546
    .local v4, "field":Lcom/sun/source/tree/VariableTree;
    invoke-static {v4}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/VariableTree;)Ljavax/lang/model/element/VariableElement;

    move-result-object v5

    .line 547
    .local v5, "fieldElem":Ljavax/lang/model/element/VariableElement;
    invoke-static {v5}, Lorg/checkerframework/javacutil/ElementUtils;->isStatic(Ljavax/lang/model/element/Element;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 549
    invoke-virtual {p0, v4}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->hasFieldInvariantAnnotation(Lcom/sun/source/tree/VariableTree;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 551
    invoke-virtual {p1, v5}, Lorg/checkerframework/checker/initialization/InitializationStore;->isFieldInitialized(Ljavax/lang/model/element/Element;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 552
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    .end local v4    # "field":Lcom/sun/source/tree/VariableTree;
    .end local v5    # "fieldElem":Ljavax/lang/model/element/VariableElement;
    :cond_0
    goto :goto_0

    .line 557
    :cond_1
    return-object v2
.end method

.method public getInvalidConstructorReturnTypeAnnotations()Ljava/util/Set;
    .locals 1
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

    .line 158
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>;"
    invoke-virtual {p0}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getInitializationAnnotations()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSelfType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .locals 5
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 406
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getSelfType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    .line 408
    .local v0, "selfType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v1

    .line 409
    .local v1, "path":Lcom/sun/source/util/TreePath;
    invoke-direct {p0, v1}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->findTopLevelClassMemberForTree(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/Tree;

    move-result-object v2

    .line 410
    .local v2, "topLevelMember":Lcom/sun/source/tree/Tree;
    if-eqz v2, :cond_1

    .line 411
    invoke-interface {v2}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v4, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/sun/source/tree/MethodTree;

    .line 412
    invoke-static {v3}, Lorg/checkerframework/javacutil/TreeUtils;->isConstructor(Lcom/sun/source/tree/MethodTree;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 414
    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->setSelfTypeInInitializationCode(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lcom/sun/source/util/TreePath;)V

    .line 418
    :cond_1
    return-object v0
.end method

.method public getTypeFrameFromAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/type/TypeMirror;
    .locals 3
    .param p1, "annotation"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 261
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>;"
    const-class v0, Ljavax/lang/model/type/TypeMirror;

    .line 262
    const-string v1, "value"

    const/4 v2, 0x1

    invoke-static {p1, v1, v0, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/type/TypeMirror;

    .line 263
    .local v0, "name":Ljavax/lang/model/type/TypeMirror;
    return-object v0
.end method

.method public getUninitializedInvariantFields(Lorg/checkerframework/checker/initialization/InitializationStore;Lcom/sun/source/util/TreePath;ZLjava/util/List;)Ljava/util/List;
    .locals 7
    .param p2, "path"    # Lcom/sun/source/util/TreePath;
    .param p3, "isStatic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TStore;",
            "Lcom/sun/source/util/TreePath;",
            "Z",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sun/source/tree/VariableTree;",
            ">;"
        }
    .end annotation

    .line 514
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>;"
    .local p1, "store":Lorg/checkerframework/checker/initialization/InitializationStore;, "TStore;"
    .local p4, "receiverAnnotations":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-static {p2}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingClass(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/ClassTree;

    move-result-object v0

    .line 515
    .local v0, "currentClass":Lcom/sun/source/tree/ClassTree;
    invoke-static {v0}, Lorg/checkerframework/checker/initialization/InitializationChecker;->getAllFields(Lcom/sun/source/tree/ClassTree;)Ljava/util/List;

    move-result-object v1

    .line 516
    .local v1, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/sun/source/tree/VariableTree;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 517
    .local v2, "violatingFields":Ljava/util/List;, "Ljava/util/List<Lcom/sun/source/tree/VariableTree;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/source/tree/VariableTree;

    .line 518
    .local v4, "field":Lcom/sun/source/tree/VariableTree;
    invoke-direct {p0, v4, p4}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->isUnused(Lcom/sun/source/tree/VariableTree;Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 519
    goto :goto_0

    .line 521
    :cond_0
    invoke-static {v4}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/VariableTree;)Ljavax/lang/model/element/VariableElement;

    move-result-object v5

    .line 522
    .local v5, "fieldElem":Ljavax/lang/model/element/VariableElement;
    invoke-static {v5}, Lorg/checkerframework/javacutil/ElementUtils;->isStatic(Ljavax/lang/model/element/Element;)Z

    move-result v6

    if-ne v6, p3, :cond_1

    .line 524
    invoke-virtual {p0, v4}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->hasFieldInvariantAnnotation(Lcom/sun/source/tree/VariableTree;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 526
    invoke-virtual {p1, v5}, Lorg/checkerframework/checker/initialization/InitializationStore;->isFieldInitialized(Ljavax/lang/model/element/Element;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 527
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    .end local v4    # "field":Lcom/sun/source/tree/VariableTree;
    .end local v5    # "fieldElem":Ljavax/lang/model/element/VariableElement;
    :cond_1
    goto :goto_0

    .line 532
    :cond_2
    return-object v2
.end method

.method protected final hasFieldInvariantAnnotation(Lcom/sun/source/tree/VariableTree;)Z
    .locals 2
    .param p1, "field"    # Lcom/sun/source/tree/VariableTree;

    .line 183
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 184
    .local v0, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p0, v0}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->hasFieldInvariantAnnotation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v1

    return v1
.end method

.method protected abstract hasFieldInvariantAnnotation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
.end method

.method public isCommitted(Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1
    .param p1, "anno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 303
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>;"
    iget-object v0, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->INITIALIZED:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    return v0
.end method

.method public isCommitted(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 1
    .param p1, "anno"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 343
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>;"
    const-class v0, Lorg/checkerframework/checker/initialization/qual/Initialized;

    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasEffectiveAnnotation(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isFbcBottom(Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1
    .param p1, "anno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 293
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>;"
    iget-object v0, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->FBCBOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    return v0
.end method

.method public isFbcBottom(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 1
    .param p1, "anno"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 333
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>;"
    const-class v0, Lorg/checkerframework/checker/initialization/qual/FBCBottom;

    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasEffectiveAnnotation(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isFree(Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1
    .param p1, "anno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 273
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>;"
    const-class v0, Lorg/checkerframework/checker/initialization/qual/UnderInitialization;

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isFree(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 1
    .param p1, "anno"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 313
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>;"
    const-class v0, Lorg/checkerframework/checker/initialization/qual/UnderInitialization;

    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasEffectiveAnnotation(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method protected isInitializationAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 2
    .param p1, "anno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 147
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>;"
    if-eqz p1, :cond_0

    .line 148
    iget-object v0, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->initAnnoNames:Ljava/util/Set;

    invoke-static {p1}, Lorg/checkerframework/javacutil/AnnotationUtils;->annotationName(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public isInitializedForFrame(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/type/TypeMirror;)Z
    .locals 4
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "frame"    # Ljavax/lang/model/type/TypeMirror;

    .line 593
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>;"
    iget-object v0, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->UNKNOWN_INITIALIZATION:Ljavax/lang/model/element/AnnotationMirror;

    .line 594
    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 595
    .local v0, "initializationAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p0, v0}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getTypeFrameFromAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 596
    .local v1, "typeFrame":Ljavax/lang/model/type/TypeMirror;
    iget-object v2, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v2}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v2

    .line 597
    .local v2, "types":Ljavax/lang/model/util/Types;
    invoke-interface {v2, p2}, Ljavax/lang/model/util/Types;->erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljavax/lang/model/util/Types;->isSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v3

    return v3
.end method

.method public isUnclassified(Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1
    .param p1, "anno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 283
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>;"
    const-class v0, Lorg/checkerframework/checker/initialization/qual/UnknownInitialization;

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isUnclassified(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 1
    .param p1, "anno"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 323
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>;"
    const-class v0, Lorg/checkerframework/checker/initialization/qual/UnknownInitialization;

    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasEffectiveAnnotation(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public postAsMemberOf(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)V
    .locals 8
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "owner"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "element"    # Ljavax/lang/model/element/Element;

    .line 375
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>;"
    invoke-super {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->postAsMemberOf(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)V

    .line 377
    invoke-interface {p3}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/lang/model/element/ElementKind;->isField()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    nop

    .line 379
    invoke-virtual {p0, p3}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getDeclAnnotations(Ljavax/lang/model/element/Element;)Ljava/util/Set;

    move-result-object v0

    .line 380
    .local v0, "declaredFieldAnnotations":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {p0, p3}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v7

    .line 381
    .local v7, "fieldAnnotations":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v4, p2

    move-object v5, v7

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->computeFieldAccessType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Collection;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)V

    .line 384
    .end local v0    # "declaredFieldAnnotations":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/lang/model/element/AnnotationMirror;>;"
    .end local v7    # "fieldAnnotations":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    return-void
.end method

.method protected setSelfTypeInInitializationCode(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lcom/sun/source/util/TreePath;)V
    .locals 6
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "selfType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p3, "path"    # Lcom/sun/source/util/TreePath;

    .line 451
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<TValue;TStore;TTransfer;TFlow;>;"
    invoke-static {p3}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingClass(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/ClassTree;

    move-result-object v0

    .line 452
    .local v0, "enclosingClass":Lcom/sun/source/tree/ClassTree;
    move-object v1, v0

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    .line 453
    .local v1, "classType":Lcom/sun/tools/javac/code/Type;
    const/4 v2, 0x0

    .line 460
    .local v2, "annotation":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p0, v0}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->areAllFieldsCommittedOnly(Lcom/sun/source/tree/ClassTree;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 461
    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getStoreBefore(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/flow/CFAbstractStore;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/checker/initialization/InitializationStore;

    .line 462
    .local v3, "store":Lorg/checkerframework/checker/initialization/InitializationStore;, "TStore;"
    if-eqz v3, :cond_1

    .line 463
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v3, p3, v5, v4}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getUninitializedInvariantFields(Lorg/checkerframework/checker/initialization/InitializationStore;Lcom/sun/source/util/TreePath;ZLjava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 464
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 465
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->isFinal()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 466
    iget-object v2, p0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->INITIALIZED:Ljavax/lang/model/element/AnnotationMirror;

    goto :goto_0

    .line 468
    :cond_0
    invoke-virtual {p0, v1}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->createFreeAnnotation(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 473
    .end local v3    # "store":Lorg/checkerframework/checker/initialization/InitializationStore;, "TStore;"
    :cond_1
    :goto_0
    if-nez v2, :cond_2

    .line 474
    invoke-virtual {p0, v1}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getFreeOrRawAnnotationOfSuperType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 476
    :cond_2
    invoke-virtual {p2, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 477
    return-void
.end method
