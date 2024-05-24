.class public Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;
.super Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;
.source "LowerBoundAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory$LowerBoundTreeAnnotator;
    }
.end annotation


# instance fields
.field public final BOTTOM:Ljavax/lang/model/element/AnnotationMirror;

.field public final GTEN1:Ljavax/lang/model/element/AnnotationMirror;

.field public final NN:Ljavax/lang/model/element/AnnotationMirror;

.field public final POLY:Ljavax/lang/model/element/AnnotationMirror;

.field public final POS:Ljavax/lang/model/element/AnnotationMirror;

.field public final UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

.field private final imf:Lorg/checkerframework/checker/index/IndexMethodIdentifier;


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 4
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 109
    invoke-direct {p0, p1}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 90
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/checker/index/qual/GTENegativeOne;

    .line 91
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->GTEN1:Ljavax/lang/model/element/AnnotationMirror;

    .line 93
    iget-object v1, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v2, Lorg/checkerframework/checker/index/qual/NonNegative;

    invoke-static {v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->NN:Ljavax/lang/model/element/AnnotationMirror;

    .line 95
    iget-object v2, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v3, Lorg/checkerframework/checker/index/qual/Positive;

    invoke-static {v2, v3}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->POS:Ljavax/lang/model/element/AnnotationMirror;

    .line 97
    iget-object v2, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v3, Lorg/checkerframework/checker/index/qual/LowerBoundBottom;

    .line 98
    invoke-static {v2, v3}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->BOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    .line 100
    iget-object v2, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v3, Lorg/checkerframework/checker/index/qual/LowerBoundUnknown;

    .line 101
    invoke-static {v2, v3}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    .line 103
    iget-object v2, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v3, Lorg/checkerframework/checker/index/qual/PolyLowerBound;

    .line 104
    invoke-static {v2, v3}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->POLY:Ljavax/lang/model/element/AnnotationMirror;

    .line 114
    const-class v3, Lorg/checkerframework/checker/index/qual/IndexFor;

    invoke-virtual {p0, v3, v1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->addAliasedAnnotation(Ljava/lang/Class;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 115
    const-class v3, Lorg/checkerframework/checker/index/qual/IndexOrLow;

    invoke-virtual {p0, v3, v0}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->addAliasedAnnotation(Ljava/lang/Class;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 116
    const-class v3, Lorg/checkerframework/checker/index/qual/IndexOrHigh;

    invoke-virtual {p0, v3, v1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->addAliasedAnnotation(Ljava/lang/Class;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 117
    const-class v3, Lorg/checkerframework/checker/index/qual/LengthOf;

    invoke-virtual {p0, v3, v1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->addAliasedAnnotation(Ljava/lang/Class;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 118
    const-class v1, Lorg/checkerframework/checker/index/qual/PolyIndex;

    invoke-virtual {p0, v1, v2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->addAliasedAnnotation(Ljava/lang/Class;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 119
    const-class v1, Lorg/checkerframework/checker/index/qual/SubstringIndexFor;

    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->addAliasedAnnotation(Ljava/lang/Class;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 121
    new-instance v0, Lorg/checkerframework/checker/index/IndexMethodIdentifier;

    invoke-direct {v0, p0}, Lorg/checkerframework/checker/index/IndexMethodIdentifier;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    iput-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->imf:Lorg/checkerframework/checker/index/IndexMethodIdentifier;

    .line 123
    invoke-virtual {p0}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->postInit()V

    .line 124
    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;)Lorg/checkerframework/checker/index/IndexMethodIdentifier;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    .line 87
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->imf:Lorg/checkerframework/checker/index/IndexMethodIdentifier;

    return-object v0
.end method

.method static synthetic access$100(Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;)Lorg/checkerframework/framework/type/QualifierHierarchy;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    .line 87
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    return-object v0
.end method

.method private addLowerBoundTypeFromValueType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 3
    .param p1, "valueType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 148
    invoke-direct {p0, p1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->getLowerBoundAnnotationFromValueType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 149
    .local v0, "anm":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v1, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->isAnnotatedInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 150
    const-class v1, Lorg/checkerframework/checker/index/qual/LowerBoundUnknown;

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 153
    :cond_0
    return-void

    .line 155
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    iget-object v2, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 156
    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 158
    :cond_2
    return-void
.end method

.method private checkForMathRandomSpecialCase(Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .param p1, "randTree"    # Lcom/sun/source/tree/Tree;
    .param p2, "arrLenTree"    # Lcom/sun/source/tree/Tree;

    .line 422
    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->METHOD_INVOCATION:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_1

    .line 423
    invoke-static {p2}, Lorg/checkerframework/javacutil/TreeUtils;->isArrayLengthAccess(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    move-object v0, p1

    check-cast v0, Lcom/sun/source/tree/MethodInvocationTree;

    .line 426
    .local v0, "miTree":Lcom/sun/source/tree/MethodInvocationTree;
    iget-object v1, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->imf:Lorg/checkerframework/checker/index/IndexMethodIdentifier;

    iget-object v2, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-virtual {v1, v0, v2}, Lorg/checkerframework/checker/index/IndexMethodIdentifier;->isMathRandom(Lcom/sun/source/tree/Tree;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    iget-object v1, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->NN:Ljavax/lang/model/element/AnnotationMirror;

    return-object v1

    .line 431
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->imf:Lorg/checkerframework/checker/index/IndexMethodIdentifier;

    iget-object v2, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-virtual {v1, v0, v2}, Lorg/checkerframework/checker/index/IndexMethodIdentifier;->isRandomNextDouble(Lcom/sun/source/tree/Tree;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 433
    iget-object v1, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->NN:Ljavax/lang/model/element/AnnotationMirror;

    return-object v1

    .line 436
    .end local v0    # "miTree":Lcom/sun/source/tree/MethodInvocationTree;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getLowerBoundAnnotationFromValueType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 7
    .param p1, "valueType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 201
    nop

    .line 202
    invoke-virtual {p0}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->getValueAnnotatedTypeFactory()Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getPossibleValues(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    .line 204
    .local v0, "possibleValues":Lorg/checkerframework/common/value/util/Range;
    if-nez v0, :cond_1

    .line 207
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    const-class v2, Lorg/checkerframework/common/value/qual/BottomVal;

    invoke-virtual {p0, v1, v2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->containsSameByClass(Ljava/util/Collection;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->BOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    return-object v1

    .line 210
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    return-object v1

    .line 213
    :cond_1
    iget-wide v1, v0, Lorg/checkerframework/common/value/util/Range;->from:J

    .line 215
    .local v1, "lvalMin":J
    const-wide/32 v3, 0x7fffffff

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    const-wide/32 v5, -0x80000000

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    .line 216
    .local v3, "valMin":I
    int-to-long v4, v3

    invoke-virtual {p0, v4, v5}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->anmFromVal(J)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public addComputedTypeAnnotations(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Z)V
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "iUseFlow"    # Z

    .line 174
    invoke-super {p0, p1, p2, p3}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->addComputedTypeAnnotations(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Z)V

    .line 178
    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isExpressionTree(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->getValueAnnotatedTypeFactory()Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 180
    .local v0, "valueType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-direct {p0, v0, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->addLowerBoundTypeFromValueType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 182
    .end local v0    # "valueType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    return-void
.end method

.method public addComputedTypeAnnotations(Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 1
    .param p1, "element"    # Ljavax/lang/model/element/Element;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 163
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->addComputedTypeAnnotations(Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 164
    if-eqz p1, :cond_0

    .line 165
    nop

    .line 166
    invoke-virtual {p0}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->getValueAnnotatedTypeFactory()Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 167
    .local v0, "valueType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-direct {p0, v0, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->addLowerBoundTypeFromValueType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 169
    .end local v0    # "valueType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    return-void
.end method

.method anmFromVal(J)Ljavax/lang/model/element/AnnotationMirror;
    .locals 2
    .param p1, "val"    # J

    .line 221
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 222
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->POS:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 223
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 224
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->NN:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 225
    :cond_1
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    .line 226
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->GTEN1:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 228
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0
.end method

.method checkForMathRandomSpecialCase(Lorg/checkerframework/dataflow/cfg/node/NumericalMultiplicationNode;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/NumericalMultiplicationNode;

    .line 402
    nop

    .line 404
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/NumericalMultiplicationNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/NumericalMultiplicationNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v1

    .line 403
    invoke-direct {p0, v0, v1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->checkForMathRandomSpecialCase(Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 405
    .local v0, "forwardRes":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v0, :cond_0

    .line 406
    return-object v0

    .line 408
    :cond_0
    nop

    .line 410
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/NumericalMultiplicationNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/NumericalMultiplicationNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v2

    .line 409
    invoke-direct {p0, v1, v2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->checkForMathRandomSpecialCase(Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 411
    .local v1, "backwardsRes":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v1, :cond_1

    .line 412
    return-object v1

    .line 414
    :cond_1
    const/4 v2, 0x0

    return-object v2
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

    .line 129
    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lorg/checkerframework/checker/index/qual/Positive;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lorg/checkerframework/checker/index/qual/NonNegative;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lorg/checkerframework/checker/index/qual/GTENegativeOne;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lorg/checkerframework/checker/index/qual/LowerBoundUnknown;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lorg/checkerframework/checker/index/qual/PolyLowerBound;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Lorg/checkerframework/checker/index/qual/LowerBoundBottom;

    aput-object v3, v1, v2

    .line 130
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 129
    return-object v0
.end method

.method public createTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
    .locals 4

    .line 234
    new-instance v0, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    new-instance v2, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory$LowerBoundTreeAnnotator;

    invoke-direct {v2, p0, p0}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory$LowerBoundTreeAnnotator;-><init>(Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 235
    invoke-super {p0}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->createTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;-><init>([Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;)V

    .line 234
    return-object v0
.end method

.method public getLessThanAnnotatedTypeFactory()Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;
    .locals 1

    .line 196
    const-class v0, Lorg/checkerframework/checker/index/inequality/LessThanChecker;

    invoke-virtual {p0, v0}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->getTypeFactoryOfSubchecker(Ljava/lang/Class;)Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;

    return-object v0
.end method

.method getMinLenFromMemberSelectTree(Lcom/sun/source/tree/MemberSelectTree;)Ljava/lang/Integer;
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/MemberSelectTree;

    .line 374
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isArrayLengthAccess(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {p0}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->getValueAnnotatedTypeFactory()Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getMinLenFromTree(Lcom/sun/source/tree/Tree;Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 377
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getMinLenFromMethodInvocationTree(Lcom/sun/source/tree/MethodInvocationTree;)Ljava/lang/Integer;
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/MethodInvocationTree;

    .line 385
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->imf:Lorg/checkerframework/checker/index/IndexMethodIdentifier;

    invoke-virtual {v0, p1}, Lorg/checkerframework/checker/index/IndexMethodIdentifier;->isLengthOfMethodInvocation(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {p0}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->getValueAnnotatedTypeFactory()Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getMinLenFromTree(Lcom/sun/source/tree/Tree;Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 388
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSearchIndexAnnotatedTypeFactory()Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;
    .locals 1

    .line 191
    const-class v0, Lorg/checkerframework/checker/index/searchindex/SearchIndexChecker;

    invoke-virtual {p0, v0}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->getTypeFactoryOfSubchecker(Ljava/lang/Class;)Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;

    return-object v0
.end method

.method public getValueAnnotatedTypeFactory()Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;
    .locals 1

    .line 186
    const-class v0, Lorg/checkerframework/common/value/ValueChecker;

    invoke-virtual {p0, v0}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->getTypeFactoryOfSubchecker(Ljava/lang/Class;)Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    return-object v0
.end method

.method public isNonNegative(Lcom/sun/source/tree/Tree;)Z
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 442
    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 443
    .local v0, "treeType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    const-class v1, Lorg/checkerframework/checker/index/qual/NonNegative;

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Lorg/checkerframework/checker/index/qual/Positive;

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method
