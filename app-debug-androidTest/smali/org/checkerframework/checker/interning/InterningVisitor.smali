.class public final Lorg/checkerframework/checker/interning/InterningVisitor;
.super Lorg/checkerframework/common/basetype/BaseTypeVisitor;
.source "InterningVisitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/common/basetype/BaseTypeVisitor<",
        "Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final INTERNED:Ljavax/lang/model/element/AnnotationMirror;

.field private final INTERNED_DISTINCT:Ljavax/lang/model/element/AnnotationMirror;

.field private final comparableCompareTo:Ljavax/lang/model/element/ExecutableElement;

.field private final typeToCheck:Ljavax/lang/model/type/DeclaredType;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 4
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 85
    invoke-direct {p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 67
    iget-object v0, p0, Lorg/checkerframework/checker/interning/InterningVisitor;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/checker/interning/qual/Interned;

    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/interning/InterningVisitor;->INTERNED:Ljavax/lang/model/element/AnnotationMirror;

    .line 69
    iget-object v0, p0, Lorg/checkerframework/checker/interning/InterningVisitor;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/checker/interning/qual/InternedDistinct;

    .line 70
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/interning/InterningVisitor;->INTERNED_DISTINCT:Ljavax/lang/model/element/AnnotationMirror;

    .line 76
    invoke-virtual {p0}, Lorg/checkerframework/checker/interning/InterningVisitor;->typeToCheck()Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/interning/InterningVisitor;->typeToCheck:Ljavax/lang/model/type/DeclaredType;

    .line 79
    iget-object v0, p0, Lorg/checkerframework/checker/interning/InterningVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 81
    invoke-virtual {v0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getProcessingEnvironment()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v0

    .line 80
    const-string v1, "java.lang.Comparable"

    const-string v2, "compareTo"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v0}, Lorg/checkerframework/javacutil/TreeUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;ILjavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/interning/InterningVisitor;->comparableCompareTo:Ljavax/lang/model/element/ExecutableElement;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sun/source/tree/ExpressionTree;
    .param p1, "x1"    # Lcom/sun/source/tree/ExpressionTree;

    .line 64
    invoke-static {p0, p1}, Lorg/checkerframework/checker/interning/InterningVisitor;->sameTree(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/checkerframework/checker/interning/InterningVisitor;Lcom/sun/source/tree/MethodInvocationTree;)Z
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/interning/InterningVisitor;
    .param p1, "x1"    # Lcom/sun/source/tree/MethodInvocationTree;

    .line 64
    invoke-direct {p0, p1}, Lorg/checkerframework/checker/interning/InterningVisitor;->isInvocationOfEquals(Lcom/sun/source/tree/MethodInvocationTree;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/checkerframework/checker/interning/InterningVisitor;)Ljavax/lang/model/element/ExecutableElement;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/interning/InterningVisitor;

    .line 64
    iget-object v0, p0, Lorg/checkerframework/checker/interning/InterningVisitor;->comparableCompareTo:Ljavax/lang/model/element/ExecutableElement;

    return-object v0
.end method

.method static synthetic access$300(Lorg/checkerframework/checker/interning/InterningVisitor;)Lorg/checkerframework/common/basetype/BaseTypeChecker;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/interning/InterningVisitor;

    .line 64
    iget-object v0, p0, Lorg/checkerframework/checker/interning/InterningVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    return-object v0
.end method

.method private checkCreationOfInternedObject(Lcom/sun/source/tree/NewClassTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)Z
    .locals 7
    .param p1, "newInternedObject"    # Lcom/sun/source/tree/NewClassTree;
    .param p2, "constructor"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 312
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    const-class v1, Lorg/checkerframework/checker/interning/qual/Interned;

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 313
    return v1

    .line 315
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/checker/interning/InterningVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    .line 316
    .local v0, "path":Lcom/sun/source/util/TreePath;
    if-eqz v0, :cond_2

    .line 317
    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v2

    .line 318
    .local v2, "parentPath":Lcom/sun/source/util/TreePath;
    :goto_0
    if-eqz v2, :cond_1

    .line 319
    invoke-virtual {v2}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v3

    invoke-interface {v3}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->PARENTHESIZED:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v4, :cond_1

    .line 320
    invoke-virtual {v2}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v2

    goto :goto_0

    .line 322
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 323
    invoke-virtual {v2}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v3

    .line 324
    .local v3, "parent":Lcom/sun/source/tree/Tree;
    invoke-interface {v3}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->METHOD_INVOCATION:Lcom/sun/source/tree/Tree$Kind;

    if-ne v4, v5, :cond_2

    .line 327
    move-object v4, v3

    check-cast v4, Lcom/sun/source/tree/MethodInvocationTree;

    invoke-static {v4}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v4

    .line 328
    .local v4, "elt":Ljavax/lang/model/element/ExecutableElement;
    iget-object v5, p0, Lorg/checkerframework/checker/interning/InterningVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v5, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;

    const-class v6, Lorg/checkerframework/checker/interning/qual/InternMethod;

    invoke-virtual {v5, v4, v6}, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 329
    return v1

    .line 335
    .end local v2    # "parentPath":Lcom/sun/source/util/TreePath;
    .end local v3    # "parent":Lcom/sun/source/tree/Tree;
    .end local v4    # "elt":Ljavax/lang/model/element/ExecutableElement;
    :cond_2
    iget-object v1, p0, Lorg/checkerframework/checker/interning/InterningVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v2, "interned.object.creation"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 336
    return v3
.end method

.method private classIsAnnotated(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 7
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 799
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 800
    .local v0, "tm":Ljavax/lang/model/type/TypeMirror;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 802
    return v1

    .line 805
    :cond_0
    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->findConcreteUpperBound(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 806
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 811
    :cond_1
    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-eq v2, v3, :cond_2

    .line 812
    iget-object v2, p0, Lorg/checkerframework/checker/interning/InterningVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    sget-object v3, Ljavax/tools/Diagnostic$Kind;->WARNING:Ljavax/tools/Diagnostic$Kind;

    .line 816
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 812
    const-string v5, "InterningVisitor.classIsAnnotated: tm = %s (%s)%n"

    invoke-virtual {v2, v3, v5, v4}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->message(Ljavax/tools/Diagnostic$Kind;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 818
    :cond_2
    move-object v2, v0

    check-cast v2, Ljavax/lang/model/type/DeclaredType;

    invoke-interface {v2}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v2

    .line 819
    .local v2, "classElt":Ljavax/lang/model/element/Element;
    if-nez v2, :cond_3

    .line 820
    iget-object v3, p0, Lorg/checkerframework/checker/interning/InterningVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    sget-object v4, Ljavax/tools/Diagnostic$Kind;->WARNING:Ljavax/tools/Diagnostic$Kind;

    .line 824
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 820
    const-string v6, "InterningVisitor.classIsAnnotated: classElt = null for tm = %s (%s)%n"

    invoke-virtual {v3, v4, v6, v5}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->message(Ljavax/tools/Diagnostic$Kind;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 826
    :cond_3
    if-eqz v2, :cond_4

    .line 827
    iget-object v1, p0, Lorg/checkerframework/checker/interning/InterningVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;

    invoke-virtual {v1, v0}, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;->getTypeDeclarationBounds(Ljavax/lang/model/type/TypeMirror;)Ljava/util/Set;

    move-result-object v1

    .line 828
    .local v1, "bound":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v3, p0, Lorg/checkerframework/checker/interning/InterningVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v3, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;

    const-class v4, Lorg/checkerframework/checker/interning/qual/Interned;

    invoke-virtual {v3, v1, v4}, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;->containsSameByClass(Ljava/util/Collection;Ljava/lang/Class;)Z

    move-result v3

    return v3

    .line 830
    .end local v1    # "bound":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_4
    return v1

    .line 808
    .end local v2    # "classElt":Ljavax/lang/model/element/Element;
    :cond_5
    :goto_0
    return v1
.end method

.method private getThis(Lcom/sun/source/tree/Scope;)Ljavax/lang/model/element/Element;
    .locals 4
    .param p1, "scope"    # Lcom/sun/source/tree/Scope;

    .line 841
    invoke-interface {p1}, Lcom/sun/source/tree/Scope;->getLocalElements()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/Element;

    .line 842
    .local v1, "e":Ljavax/lang/model/element/Element;
    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v2

    const-string v3, "this"

    invoke-interface {v2, v3}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 843
    return-object v1

    .line 845
    .end local v1    # "e":Ljavax/lang/model/element/Element;
    :cond_0
    goto :goto_0

    .line 846
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private isInvocationOfEquals(Lcom/sun/source/tree/MethodInvocationTree;)Z
    .locals 4
    .param p1, "node"    # Lcom/sun/source/tree/MethodInvocationTree;

    .line 369
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    .line 370
    .local v0, "method":Ljavax/lang/model/element/ExecutableElement;
    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 371
    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v3, Ljavax/lang/model/type/TypeKind;->BOOLEAN:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v3, :cond_0

    .line 373
    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v1

    const-string v3, "equals"

    invoke-interface {v1, v3}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 370
    :goto_0
    return v2
.end method

.method private overrides(Ljavax/lang/model/element/ExecutableElement;Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 4
    .param p1, "e"    # Ljavax/lang/model/element/ExecutableElement;
    .param p3, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 861
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/checkerframework/checker/interning/InterningVisitor;->elements:Ljavax/lang/model/util/Elements;

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    .line 862
    .local v0, "clazzElt":Ljavax/lang/model/element/TypeElement;
    if-eqz v0, :cond_2

    .line 865
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljavax/lang/model/util/ElementFilter;->methodsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/ExecutableElement;

    .line 866
    .local v2, "elt":Ljavax/lang/model/element/ExecutableElement;
    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v3

    invoke-interface {v3, p3}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/checkerframework/checker/interning/InterningVisitor;->elements:Ljavax/lang/model/util/Elements;

    invoke-interface {v3, p1, v2, v0}, Ljavax/lang/model/util/Elements;->overrides(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/TypeElement;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 867
    const/4 v1, 0x1

    return v1

    .line 869
    .end local v2    # "elt":Ljavax/lang/model/element/ExecutableElement;
    :cond_0
    goto :goto_0

    .line 871
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 862
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private overridesEquals(Lcom/sun/source/tree/ClassTree;)Z
    .locals 7
    .param p1, "node"    # Lcom/sun/source/tree/ClassTree;

    .line 345
    invoke-interface {p1}, Lcom/sun/source/tree/ClassTree;->getMembers()Ljava/util/List;

    move-result-object v0

    .line 346
    .local v0, "members":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/source/tree/Tree;

    .line 347
    .local v2, "member":Lcom/sun/source/tree/Tree;
    instance-of v3, v2, Lcom/sun/source/tree/MethodTree;

    if-eqz v3, :cond_0

    .line 348
    move-object v3, v2

    check-cast v3, Lcom/sun/source/tree/MethodTree;

    .line 349
    .local v3, "mTree":Lcom/sun/source/tree/MethodTree;
    invoke-static {v3}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/MethodTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v4

    .line 350
    .local v4, "enclosing":Ljavax/lang/model/element/ExecutableElement;
    const-class v5, Ljava/lang/Object;

    const-string v6, "equals"

    invoke-direct {p0, v4, v5, v6}, Lorg/checkerframework/checker/interning/InterningVisitor;->overrides(Ljavax/lang/model/element/ExecutableElement;Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 351
    const/4 v1, 0x1

    return v1

    .line 354
    .end local v2    # "member":Lcom/sun/source/tree/Tree;
    .end local v3    # "mTree":Lcom/sun/source/tree/MethodTree;
    .end local v4    # "enclosing":Ljavax/lang/model/element/ExecutableElement;
    :cond_0
    goto :goto_0

    .line 355
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private static sameTree(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;)Z
    .locals 2
    .param p0, "expr1"    # Lcom/sun/source/tree/ExpressionTree;
    .param p1, "expr2"    # Lcom/sun/source/tree/ExpressionTree;

    .line 543
    invoke-static {p0}, Lorg/checkerframework/javacutil/TreeUtils;->withoutParens(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 544
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 545
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->withoutParens(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 543
    return v0
.end method

.method private shouldCheckExpression(Lcom/sun/source/tree/ExpressionTree;)Z
    .locals 4
    .param p1, "tree"    # Lcom/sun/source/tree/ExpressionTree;

    .line 95
    iget-object v0, p0, Lorg/checkerframework/checker/interning/InterningVisitor;->typeToCheck:Ljavax/lang/model/type/DeclaredType;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 96
    return v1

    .line 99
    :cond_0
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 100
    .local v0, "type":Ljavax/lang/model/type/TypeMirror;
    iget-object v2, p0, Lorg/checkerframework/checker/interning/InterningVisitor;->types:Ljavax/lang/model/util/Types;

    iget-object v3, p0, Lorg/checkerframework/checker/interning/InterningVisitor;->typeToCheck:Ljavax/lang/model/type/DeclaredType;

    invoke-interface {v2, v0, v3}, Ljavax/lang/model/util/Types;->isSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/checkerframework/checker/interning/InterningVisitor;->types:Ljavax/lang/model/util/Types;

    iget-object v3, p0, Lorg/checkerframework/checker/interning/InterningVisitor;->typeToCheck:Ljavax/lang/model/type/DeclaredType;

    invoke-interface {v2, v3, v0}, Ljavax/lang/model/util/Types;->isSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private suppressEarlyCompareTo(Lcom/sun/source/tree/BinaryTree;)Z
    .locals 8
    .param p1, "node"    # Lcom/sun/source/tree/BinaryTree;

    .line 688
    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->EQUAL_TO:Lcom/sun/source/tree/Tree$Kind;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 689
    return v2

    .line 692
    :cond_0
    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getLeftOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->withoutParens(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 693
    .local v0, "left":Lcom/sun/source/tree/Tree;
    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getRightOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/javacutil/TreeUtils;->withoutParens(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    .line 696
    .local v1, "right":Lcom/sun/source/tree/Tree;
    invoke-interface {v0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->IDENTIFIER:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v4, :cond_2

    invoke-interface {v1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->IDENTIFIER:Lcom/sun/source/tree/Tree$Kind;

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 700
    :cond_1
    move-object v2, v0

    check-cast v2, Lcom/sun/source/tree/IdentifierTree;

    invoke-static {v2}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v2

    .line 701
    .local v2, "lhs":Ljavax/lang/model/element/Element;
    move-object v3, v1

    check-cast v3, Lcom/sun/source/tree/IdentifierTree;

    invoke-static {v3}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v3

    .line 704
    .local v3, "rhs":Ljavax/lang/model/element/Element;
    new-instance v4, Lorg/checkerframework/checker/interning/InterningVisitor$3;

    invoke-direct {v4, p0, p1, v2, v3}, Lorg/checkerframework/checker/interning/InterningVisitor$3;-><init>(Lorg/checkerframework/checker/interning/InterningVisitor;Lcom/sun/source/tree/BinaryTree;Ljavax/lang/model/element/Element;Ljavax/lang/model/element/Element;)V

    .line 776
    .local v4, "matcherEqOrCompareTo":Lorg/checkerframework/framework/util/Heuristics$Matcher;
    new-instance v5, Lorg/checkerframework/framework/util/Heuristics$Within;

    new-instance v6, Lorg/checkerframework/framework/util/Heuristics$OfKind;

    sget-object v7, Lcom/sun/source/tree/Tree$Kind;->CONDITIONAL_OR:Lcom/sun/source/tree/Tree$Kind;

    invoke-direct {v6, v7, v4}, Lorg/checkerframework/framework/util/Heuristics$OfKind;-><init>(Lcom/sun/source/tree/Tree$Kind;Lorg/checkerframework/framework/util/Heuristics$Matcher;)V

    invoke-direct {v5, v6}, Lorg/checkerframework/framework/util/Heuristics$Within;-><init>(Lorg/checkerframework/framework/util/Heuristics$Matcher;)V

    .line 780
    invoke-virtual {p0}, Lorg/checkerframework/checker/interning/InterningVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/checkerframework/framework/util/Heuristics$Within;->match(Lcom/sun/source/util/TreePath;)Z

    move-result v5

    .line 781
    .local v5, "okay":Z
    return v5

    .line 697
    .end local v2    # "lhs":Ljavax/lang/model/element/Element;
    .end local v3    # "rhs":Ljavax/lang/model/element/Element;
    .end local v4    # "matcherEqOrCompareTo":Lorg/checkerframework/framework/util/Heuristics$Matcher;
    .end local v5    # "okay":Z
    :cond_2
    :goto_0
    return v2
.end method

.method private suppressEarlyEquals(Lcom/sun/source/tree/BinaryTree;)Z
    .locals 6
    .param p1, "node"    # Lcom/sun/source/tree/BinaryTree;

    .line 563
    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->EQUAL_TO:Lcom/sun/source/tree/Tree$Kind;

    if-eq v0, v1, :cond_0

    .line 564
    const/4 v0, 0x0

    return v0

    .line 568
    :cond_0
    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getLeftOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->withoutParens(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 569
    .local v0, "left":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getRightOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/javacutil/TreeUtils;->withoutParens(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    .line 572
    .local v1, "right":Lcom/sun/source/tree/ExpressionTree;
    new-instance v2, Lorg/checkerframework/checker/interning/InterningVisitor$2;

    invoke-direct {v2, p0, p1, v0, v1}, Lorg/checkerframework/checker/interning/InterningVisitor$2;-><init>(Lorg/checkerframework/checker/interning/InterningVisitor;Lcom/sun/source/tree/BinaryTree;Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;)V

    .line 673
    .local v2, "matcherEqOrEquals":Lorg/checkerframework/framework/util/Heuristics$Matcher;
    new-instance v3, Lorg/checkerframework/framework/util/Heuristics$Within;

    new-instance v4, Lorg/checkerframework/framework/util/Heuristics$OfKind;

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->CONDITIONAL_OR:Lcom/sun/source/tree/Tree$Kind;

    invoke-direct {v4, v5, v2}, Lorg/checkerframework/framework/util/Heuristics$OfKind;-><init>(Lcom/sun/source/tree/Tree$Kind;Lorg/checkerframework/framework/util/Heuristics$Matcher;)V

    invoke-direct {v3, v4}, Lorg/checkerframework/framework/util/Heuristics$Within;-><init>(Lorg/checkerframework/framework/util/Heuristics$Matcher;)V

    .line 676
    invoke-virtual {p0}, Lorg/checkerframework/checker/interning/InterningVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/checkerframework/framework/util/Heuristics$Within;->match(Lcom/sun/source/util/TreePath;)Z

    move-result v3

    .line 677
    .local v3, "okay":Z
    return v3
.end method

.method private suppressEqualsIfClassIsAnnotated(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 1
    .param p1, "left"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "right"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 793
    invoke-direct {p0, p1}, Lorg/checkerframework/checker/interning/InterningVisitor;->classIsAnnotated(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lorg/checkerframework/checker/interning/InterningVisitor;->classIsAnnotated(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private suppressInsideComparison(Lcom/sun/source/tree/BinaryTree;)Z
    .locals 17
    .param p1, "node"    # Lcom/sun/source/tree/BinaryTree;

    .line 399
    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/BinaryTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->EQUAL_TO:Lcom/sun/source/tree/Tree$Kind;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 400
    return v3

    .line 403
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/BinaryTree;->getLeftOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    .line 404
    .local v1, "left":Lcom/sun/source/tree/Tree;
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/BinaryTree;->getRightOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    .line 407
    .local v2, "right":Lcom/sun/source/tree/Tree;
    invoke-interface {v1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->IDENTIFIER:Lcom/sun/source/tree/Tree$Kind;

    if-ne v4, v5, :cond_1e

    invoke-interface {v2}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->IDENTIFIER:Lcom/sun/source/tree/Tree$Kind;

    if-eq v4, v5, :cond_1

    goto/16 :goto_6

    .line 413
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/checker/interning/InterningVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [Lcom/sun/source/tree/Tree$Kind;

    sget-object v7, Lcom/sun/source/tree/Tree$Kind;->IF:Lcom/sun/source/tree/Tree$Kind;

    aput-object v7, v6, v3

    sget-object v7, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v4, v6}, Lorg/checkerframework/framework/util/Heuristics;->matchParents(Lcom/sun/source/util/TreePath;[Lcom/sun/source/tree/Tree$Kind;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 414
    return v3

    .line 419
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/checker/interning/InterningVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v4

    .line 422
    .local v4, "parentPath":Lcom/sun/source/util/TreePath;
    const/4 v6, 0x0

    .line 423
    .local v6, "ifStatementTree":Lcom/sun/source/tree/Tree;
    const/4 v7, 0x0

    .line 424
    .local v7, "methodTree":Lcom/sun/source/tree/MethodTree;
    :goto_0
    invoke-virtual {v4}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v9

    move-object v10, v9

    .local v10, "tree":Lcom/sun/source/tree/Tree;
    if-eqz v9, :cond_5

    .line 425
    invoke-interface {v10}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v9

    sget-object v11, Lcom/sun/source/tree/Tree$Kind;->IF:Lcom/sun/source/tree/Tree$Kind;

    if-ne v9, v11, :cond_3

    .line 426
    move-object v6, v10

    goto :goto_1

    .line 427
    :cond_3
    invoke-interface {v10}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v9

    sget-object v11, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v9, v11, :cond_4

    .line 428
    move-object v7, v10

    check-cast v7, Lcom/sun/source/tree/MethodTree;

    .line 429
    goto :goto_2

    .line 432
    :cond_4
    :goto_1
    invoke-virtual {v4}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v4

    goto :goto_0

    .line 436
    :cond_5
    :goto_2
    if-eqz v6, :cond_1d

    .line 438
    if-eqz v7, :cond_1c

    .line 440
    invoke-interface {v7}, Lcom/sun/source/tree/MethodTree;->getBody()Lcom/sun/source/tree/BlockTree;

    move-result-object v9

    invoke-interface {v9}, Lcom/sun/source/tree/BlockTree;->getStatements()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sun/source/tree/StatementTree;

    .line 443
    .local v9, "stmnt":Lcom/sun/source/tree/StatementTree;
    if-eqz v9, :cond_1b

    .line 445
    if-eq v9, v6, :cond_6

    .line 446
    return v3

    .line 449
    :cond_6
    iget-object v11, v0, Lorg/checkerframework/checker/interning/InterningVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    .line 450
    invoke-virtual {v11}, Lorg/checkerframework/framework/type/VisitorState;->getMethodTree()Lcom/sun/source/tree/MethodTree;

    move-result-object v11

    invoke-static {v11}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/MethodTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v11

    .line 451
    .local v11, "enclosing":Ljavax/lang/model/element/ExecutableElement;
    if-eqz v11, :cond_1a

    .line 453
    move-object v12, v1

    check-cast v12, Lcom/sun/source/tree/IdentifierTree;

    invoke-static {v12}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v12

    .line 454
    .local v12, "lhs":Ljavax/lang/model/element/Element;
    move-object v13, v2

    check-cast v13, Lcom/sun/source/tree/IdentifierTree;

    invoke-static {v13}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v13

    .line 457
    .local v13, "rhs":Ljavax/lang/model/element/Element;
    new-instance v14, Lorg/checkerframework/checker/interning/InterningVisitor$1;

    invoke-direct {v14, v0}, Lorg/checkerframework/checker/interning/InterningVisitor$1;-><init>(Lorg/checkerframework/checker/interning/InterningVisitor;)V

    .line 484
    .local v14, "matcherIfReturnsZero":Lorg/checkerframework/framework/util/Heuristics$Matcher;
    const-class v15, Ljava/util/Comparator;

    const-string v8, "compare"

    invoke-direct {v0, v11, v15, v8}, Lorg/checkerframework/checker/interning/InterningVisitor;->overrides(Ljavax/lang/model/element/ExecutableElement;Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 485
    new-instance v8, Lorg/checkerframework/framework/util/Heuristics$Within;

    new-instance v15, Lorg/checkerframework/framework/util/Heuristics$OfKind;

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->IF:Lcom/sun/source/tree/Tree$Kind;

    invoke-direct {v15, v5, v14}, Lorg/checkerframework/framework/util/Heuristics$OfKind;-><init>(Lcom/sun/source/tree/Tree$Kind;Lorg/checkerframework/framework/util/Heuristics$Matcher;)V

    invoke-direct {v8, v15}, Lorg/checkerframework/framework/util/Heuristics$Within;-><init>(Lorg/checkerframework/framework/util/Heuristics$Matcher;)V

    .line 487
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/checker/interning/InterningVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v5

    invoke-virtual {v8, v5}, Lorg/checkerframework/framework/util/Heuristics$Within;->match(Lcom/sun/source/util/TreePath;)Z

    move-result v5

    .line 489
    .local v5, "returnsZero":Z
    if-nez v5, :cond_7

    .line 490
    return v3

    .line 493
    :cond_7
    invoke-interface {v11}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v15, 0x2

    if-ne v8, v15, :cond_b

    .line 494
    invoke-interface {v11}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/lang/model/element/Element;

    .line 495
    .local v8, "p1":Ljavax/lang/model/element/Element;
    invoke-interface {v11}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v15

    const/4 v3, 0x1

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    move-object v3, v15

    check-cast v3, Ljavax/lang/model/element/Element;

    .line 496
    .local v3, "p2":Ljavax/lang/model/element/Element;
    invoke-virtual {v8, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-virtual {v3, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    :cond_8
    invoke-virtual {v3, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-virtual {v8, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    :cond_9
    const/16 v16, 0x1

    goto :goto_3

    :cond_a
    const/16 v16, 0x0

    :goto_3
    return v16

    .line 493
    .end local v3    # "p2":Ljavax/lang/model/element/Element;
    .end local v8    # "p1":Ljavax/lang/model/element/Element;
    :cond_b
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 498
    .end local v5    # "returnsZero":Z
    :cond_c
    const-class v3, Ljava/lang/Object;

    const-string v5, "equals"

    invoke-direct {v0, v11, v3, v5}, Lorg/checkerframework/checker/interning/InterningVisitor;->overrides(Ljavax/lang/model/element/ExecutableElement;Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 499
    invoke-interface {v11}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_11

    .line 500
    invoke-interface {v11}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/Element;

    .line 501
    .local v3, "param":Ljavax/lang/model/element/Element;
    iget-object v5, v0, Lorg/checkerframework/checker/interning/InterningVisitor;->trees:Lcom/sun/source/util/Trees;

    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/checker/interning/InterningVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/sun/source/util/Trees;->getScope(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/Scope;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/checkerframework/checker/interning/InterningVisitor;->getThis(Lcom/sun/source/tree/Scope;)Ljavax/lang/model/element/Element;

    move-result-object v5

    .line 502
    .local v5, "thisElt":Ljavax/lang/model/element/Element;
    if-eqz v5, :cond_10

    .line 503
    invoke-virtual {v5, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-virtual {v3, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 504
    :cond_d
    invoke-virtual {v3, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-virtual {v5, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    :cond_e
    const/16 v16, 0x1

    goto :goto_4

    :cond_f
    const/16 v16, 0x0

    .line 503
    :goto_4
    return v16

    .line 502
    :cond_10
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 499
    .end local v3    # "param":Ljavax/lang/model/element/Element;
    .end local v5    # "thisElt":Ljavax/lang/model/element/Element;
    :cond_11
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 506
    :cond_12
    const-class v3, Ljava/lang/Comparable;

    const-string v5, "compareTo"

    invoke-direct {v0, v11, v3, v5}, Lorg/checkerframework/checker/interning/InterningVisitor;->overrides(Ljavax/lang/model/element/ExecutableElement;Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 508
    new-instance v3, Lorg/checkerframework/framework/util/Heuristics$Within;

    new-instance v5, Lorg/checkerframework/framework/util/Heuristics$OfKind;

    sget-object v8, Lcom/sun/source/tree/Tree$Kind;->IF:Lcom/sun/source/tree/Tree$Kind;

    invoke-direct {v5, v8, v14}, Lorg/checkerframework/framework/util/Heuristics$OfKind;-><init>(Lcom/sun/source/tree/Tree$Kind;Lorg/checkerframework/framework/util/Heuristics$Matcher;)V

    invoke-direct {v3, v5}, Lorg/checkerframework/framework/util/Heuristics$Within;-><init>(Lorg/checkerframework/framework/util/Heuristics$Matcher;)V

    .line 510
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/checker/interning/InterningVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/checkerframework/framework/util/Heuristics$Within;->match(Lcom/sun/source/util/TreePath;)Z

    move-result v3

    .line 512
    .local v3, "returnsZero":Z
    if-nez v3, :cond_13

    .line 513
    const/4 v5, 0x0

    return v5

    .line 516
    :cond_13
    const/4 v5, 0x0

    invoke-interface {v11}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v15, 0x1

    if-ne v8, v15, :cond_18

    .line 517
    invoke-interface {v11}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v5, v8

    check-cast v5, Ljavax/lang/model/element/Element;

    .line 518
    .local v5, "param":Ljavax/lang/model/element/Element;
    iget-object v8, v0, Lorg/checkerframework/checker/interning/InterningVisitor;->trees:Lcom/sun/source/util/Trees;

    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/checker/interning/InterningVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v15

    invoke-virtual {v8, v15}, Lcom/sun/source/util/Trees;->getScope(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/Scope;

    move-result-object v8

    invoke-direct {v0, v8}, Lorg/checkerframework/checker/interning/InterningVisitor;->getThis(Lcom/sun/source/tree/Scope;)Ljavax/lang/model/element/Element;

    move-result-object v8

    .line 519
    .local v8, "thisElt":Ljavax/lang/model/element/Element;
    if-eqz v8, :cond_17

    .line 520
    invoke-virtual {v8, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_14

    invoke-virtual {v5, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_15

    .line 521
    :cond_14
    invoke-virtual {v5, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16

    invoke-virtual {v8, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16

    :cond_15
    const/16 v16, 0x1

    goto :goto_5

    :cond_16
    const/16 v16, 0x0

    .line 520
    :goto_5
    return v16

    .line 519
    :cond_17
    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    .line 516
    .end local v5    # "param":Ljavax/lang/model/element/Element;
    .end local v8    # "thisElt":Ljavax/lang/model/element/Element;
    :cond_18
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 523
    .end local v3    # "returnsZero":Z
    :cond_19
    const/4 v3, 0x0

    return v3

    .line 451
    .end local v12    # "lhs":Ljavax/lang/model/element/Element;
    .end local v13    # "rhs":Ljavax/lang/model/element/Element;
    .end local v14    # "matcherIfReturnsZero":Lorg/checkerframework/framework/util/Heuristics$Matcher;
    :cond_1a
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 443
    .end local v11    # "enclosing":Ljavax/lang/model/element/ExecutableElement;
    :cond_1b
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 438
    .end local v9    # "stmnt":Lcom/sun/source/tree/StatementTree;
    :cond_1c
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 436
    :cond_1d
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 408
    .end local v4    # "parentPath":Lcom/sun/source/util/TreePath;
    .end local v6    # "ifStatementTree":Lcom/sun/source/tree/Tree;
    .end local v7    # "methodTree":Lcom/sun/source/tree/MethodTree;
    .end local v10    # "tree":Lcom/sun/source/tree/Tree;
    :cond_1e
    :goto_6
    const/4 v3, 0x0

    return v3
.end method


# virtual methods
.method protected checkConstructorResult(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljavax/lang/model/element/ExecutableElement;)V
    .locals 2
    .param p1, "constructorType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p2, "constructorElement"    # Ljavax/lang/model/element/ExecutableElement;

    .line 273
    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->ENUM:Ljavax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_0

    .line 275
    return-void

    .line 277
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkConstructorResult(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljavax/lang/model/element/ExecutableElement;)V

    .line 278
    return-void
.end method

.method protected isTypeCastSafe(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 1
    .param p1, "castType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "exprType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 891
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/lang/model/type/TypeKind;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 892
    const/4 v0, 0x1

    return v0

    .line 894
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->isTypeCastSafe(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    return v0
.end method

.method public processClassTree(Lcom/sun/source/tree/ClassTree;)V
    .locals 7
    .param p1, "classTree"    # Lcom/sun/source/tree/ClassTree;

    .line 244
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/ClassTree;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    .line 245
    .local v0, "elt":Ljavax/lang/model/element/TypeElement;
    iget-object v1, p0, Lorg/checkerframework/checker/interning/InterningVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;

    const-class v2, Lorg/checkerframework/checker/interning/qual/UsesObjectEquals;

    invoke-virtual {v1, v0, v2}, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 249
    .local v1, "annotation":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v1, :cond_1

    .line 251
    invoke-direct {p0, p1}, Lorg/checkerframework/checker/interning/InterningVisitor;->overridesEquals(Lcom/sun/source/tree/ClassTree;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 252
    iget-object v2, p0, Lorg/checkerframework/checker/interning/InterningVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v4, "overrides.equals"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v4

    invoke-virtual {v2, v4, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 254
    :cond_0
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getSuperclass()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    .line 255
    .local v2, "superClass":Ljavax/lang/model/type/TypeMirror;
    if-eqz v2, :cond_1

    .line 256
    invoke-static {v2}, Lorg/checkerframework/javacutil/TypesUtils;->getTypeElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/TypeElement;

    move-result-object v4

    .line 258
    .local v4, "superClassElement":Ljavax/lang/model/element/TypeElement;
    if-eqz v4, :cond_1

    .line 259
    invoke-static {v4}, Lorg/checkerframework/javacutil/ElementUtils;->isObject(Ljavax/lang/model/element/TypeElement;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lorg/checkerframework/checker/interning/InterningVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v5, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;

    const-class v6, Lorg/checkerframework/checker/interning/qual/UsesObjectEquals;

    .line 260
    invoke-virtual {v5, v4, v6}, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v5

    if-nez v5, :cond_1

    .line 262
    iget-object v5, p0, Lorg/checkerframework/checker/interning/InterningVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v6, "superclass.notannotated"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v6, v3}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v3

    invoke-virtual {v5, v3, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 267
    .end local v2    # "superClass":Ljavax/lang/model/type/TypeMirror;
    .end local v4    # "superClassElement":Ljavax/lang/model/element/TypeElement;
    :cond_1
    invoke-super {p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->processClassTree(Lcom/sun/source/tree/ClassTree;)V

    .line 268
    return-void
.end method

.method typeToCheck()Ljavax/lang/model/type/DeclaredType;
    .locals 4

    .line 876
    iget-object v0, p0, Lorg/checkerframework/checker/interning/InterningVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v1, "checkclass"

    invoke-virtual {v0, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 877
    .local v0, "className":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 878
    return-object v1

    .line 881
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/checker/interning/InterningVisitor;->elements:Ljavax/lang/model/util/Elements;

    invoke-interface {v2, v0}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v2

    .line 882
    .local v2, "classElt":Ljavax/lang/model/element/TypeElement;
    if-nez v2, :cond_1

    .line 883
    return-object v1

    .line 886
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/checker/interning/InterningVisitor;->types:Ljavax/lang/model/util/Types;

    const/4 v3, 0x0

    new-array v3, v3, [Ljavax/lang/model/type/TypeMirror;

    invoke-interface {v1, v2, v3}, Ljavax/lang/model/util/Types;->getDeclaredType(Ljavax/lang/model/element/TypeElement;[Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object v1

    return-object v1
.end method

.method public validateTypeOf(Lcom/sun/source/tree/Tree;)Z
    .locals 6
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 284
    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sun/source/tree/MethodTree;

    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->isConstructor(Lcom/sun/source/tree/MethodTree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    const/4 v0, 0x1

    return v0

    .line 286
    :cond_0
    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->NEW_CLASS:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_1

    .line 287
    move-object v0, p1

    check-cast v0, Lcom/sun/source/tree/NewClassTree;

    .line 288
    .local v0, "newClassTree":Lcom/sun/source/tree/NewClassTree;
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 289
    .local v1, "typeMirror":Ljavax/lang/model/type/TypeMirror;
    iget-object v2, p0, Lorg/checkerframework/checker/interning/InterningVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;

    invoke-virtual {v2, v1}, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;->getTypeDeclarationBounds(Ljavax/lang/model/type/TypeMirror;)Ljava/util/Set;

    move-result-object v2

    .line 292
    .local v2, "bounds":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v3, p0, Lorg/checkerframework/checker/interning/InterningVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v3, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;

    const-class v4, Lorg/checkerframework/checker/interning/qual/Interned;

    invoke-virtual {v3, v2, v4}, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;->containsSameByClass(Ljava/util/Collection;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 293
    iget-object v3, p0, Lorg/checkerframework/checker/interning/InterningVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v3, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;

    invoke-virtual {v3, v0}, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;->constructorFromUse(Lcom/sun/source/tree/NewClassTree;)Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;

    move-result-object v3

    .line 294
    .local v3, "fromUse":Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;
    iget-object v4, v3, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;->executableType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 295
    .local v4, "constructor":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    invoke-direct {p0, v0, v4}, Lorg/checkerframework/checker/interning/InterningVisitor;->checkCreationOfInternedObject(Lcom/sun/source/tree/NewClassTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 296
    const/4 v5, 0x0

    return v5

    .line 300
    .end local v0    # "newClassTree":Lcom/sun/source/tree/NewClassTree;
    .end local v1    # "typeMirror":Ljavax/lang/model/type/TypeMirror;
    .end local v2    # "bounds":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    .end local v3    # "fromUse":Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;
    .end local v4    # "constructor":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    :cond_1
    invoke-super {p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->validateTypeOf(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 64
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/interning/InterningVisitor;->visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "node"    # Lcom/sun/source/tree/BinaryTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 108
    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->EQUAL_TO:Lcom/sun/source/tree/Tree$Kind;

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->NOT_EQUAL_TO:Lcom/sun/source/tree/Tree$Kind;

    if-eq v0, v1, :cond_0

    .line 109
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0

    .line 112
    :cond_0
    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getLeftOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 113
    .local v0, "leftOp":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getRightOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    .line 116
    .local v1, "rightOp":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {v0}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->NULL_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    if-eq v2, v3, :cond_11

    .line 117
    invoke-interface {v1}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->NULL_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    .line 121
    :cond_1
    iget-object v2, p0, Lorg/checkerframework/checker/interning/InterningVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;

    invoke-virtual {v2, v0}, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 122
    .local v2, "left":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v3, p0, Lorg/checkerframework/checker/interning/InterningVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v3, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;

    invoke-virtual {v3, v1}, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    .line 125
    .local v3, "right":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/lang/model/type/TypeKind;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/lang/model/type/TypeKind;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_1

    .line 129
    :cond_2
    iget-object v4, p0, Lorg/checkerframework/checker/interning/InterningVisitor;->INTERNED_DISTINCT:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasEffectiveAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v4

    if-nez v4, :cond_f

    iget-object v4, p0, Lorg/checkerframework/checker/interning/InterningVisitor;->INTERNED_DISTINCT:Ljavax/lang/model/element/AnnotationMirror;

    .line 130
    invoke-virtual {v3, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasEffectiveAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_0

    .line 160
    :cond_3
    invoke-direct {p0, v0}, Lorg/checkerframework/checker/interning/InterningVisitor;->shouldCheckExpression(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-direct {p0, v1}, Lorg/checkerframework/checker/interning/InterningVisitor;->shouldCheckExpression(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 161
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Void;

    return-object v4

    .line 165
    :cond_4
    invoke-direct {p0, p1}, Lorg/checkerframework/checker/interning/InterningVisitor;->suppressInsideComparison(Lcom/sun/source/tree/BinaryTree;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 166
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Void;

    return-object v4

    .line 168
    :cond_5
    invoke-direct {p0, p1}, Lorg/checkerframework/checker/interning/InterningVisitor;->suppressEarlyEquals(Lcom/sun/source/tree/BinaryTree;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 169
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Void;

    return-object v4

    .line 171
    :cond_6
    invoke-direct {p0, p1}, Lorg/checkerframework/checker/interning/InterningVisitor;->suppressEarlyCompareTo(Lcom/sun/source/tree/BinaryTree;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 172
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Void;

    return-object v4

    .line 175
    :cond_7
    invoke-direct {p0, v2, v3}, Lorg/checkerframework/checker/interning/InterningVisitor;->suppressEqualsIfClassIsAnnotated(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 176
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Void;

    return-object v4

    .line 179
    :cond_8
    const/4 v4, 0x0

    .line 180
    .local v4, "leftElt":Ljavax/lang/model/element/Element;
    const/4 v5, 0x0

    .line 181
    .local v5, "rightElt":Ljavax/lang/model/element/Element;
    instance-of v6, v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    if-eqz v6, :cond_9

    .line 182
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v6

    check-cast v6, Ljavax/lang/model/type/DeclaredType;

    invoke-interface {v6}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v4

    .line 184
    :cond_9
    instance-of v6, v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    if-eqz v6, :cond_a

    .line 185
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v6

    check-cast v6, Ljavax/lang/model/type/DeclaredType;

    invoke-interface {v6}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v5

    .line 192
    :cond_a
    iget-object v6, p0, Lorg/checkerframework/checker/interning/InterningVisitor;->INTERNED:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v2, v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasEffectiveAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v6

    const-string v7, "not.interned"

    if-nez v6, :cond_c

    if-eqz v4, :cond_b

    const-class v6, Lorg/checkerframework/checker/interning/qual/UsesObjectEquals;

    .line 193
    invoke-interface {v4, v6}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    if-nez v6, :cond_c

    .line 194
    :cond_b
    iget-object v6, p0, Lorg/checkerframework/checker/interning/InterningVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v8

    invoke-virtual {v6, v8, v0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 196
    :cond_c
    iget-object v6, p0, Lorg/checkerframework/checker/interning/InterningVisitor;->INTERNED:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v3, v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasEffectiveAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v6

    if-nez v6, :cond_e

    if-eqz v5, :cond_d

    const-class v6, Lorg/checkerframework/checker/interning/qual/UsesObjectEquals;

    .line 197
    invoke-interface {v5, v6}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    if-nez v6, :cond_e

    .line 198
    :cond_d
    iget-object v6, p0, Lorg/checkerframework/checker/interning/InterningVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 200
    :cond_e
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Void;

    return-object v6

    .line 131
    .end local v4    # "leftElt":Ljavax/lang/model/element/Element;
    .end local v5    # "rightElt":Ljavax/lang/model/element/Element;
    :cond_f
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Void;

    return-object v4

    .line 126
    :cond_10
    :goto_1
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Void;

    return-object v4

    .line 118
    .end local v2    # "left":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v3    # "right":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_11
    :goto_2
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Void;

    return-object v2
.end method

.method public bridge synthetic visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 64
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/interning/InterningVisitor;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "node"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 209
    invoke-direct {p0, p1}, Lorg/checkerframework/checker/interning/InterningVisitor;->isInvocationOfEquals(Lcom/sun/source/tree/MethodInvocationTree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lorg/checkerframework/checker/interning/InterningVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v0, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;->getReceiverType(Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 211
    .local v0, "recv":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v1, p0, Lorg/checkerframework/checker/interning/InterningVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;

    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/source/tree/Tree;

    invoke-virtual {v1, v2}, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 213
    .local v1, "comp":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v2, p0, Lorg/checkerframework/checker/interning/InterningVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v4, "dotequals"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getLintOption(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/checkerframework/checker/interning/InterningVisitor;->INTERNED:Ljavax/lang/model/element/AnnotationMirror;

    .line 214
    invoke-virtual {v0, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasEffectiveAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/checkerframework/checker/interning/InterningVisitor;->INTERNED:Ljavax/lang/model/element/AnnotationMirror;

    .line 215
    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasEffectiveAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    iget-object v2, p0, Lorg/checkerframework/checker/interning/InterningVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v4, "unnecessary.equals"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v3}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 220
    .end local v0    # "recv":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v1    # "comp":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
