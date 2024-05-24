.class public Lorg/checkerframework/common/basetype/BaseTypeVisitor;
.super Lorg/checkerframework/framework/source/SourceVisitor;
.source "BaseTypeVisitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;,
        Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Factory:",
        "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<",
        "****>;>",
        "Lorg/checkerframework/framework/source/SourceVisitor<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static checkContainsSameToString:Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static checkedJDK:Z


# instance fields
.field protected final TARGET:Ljavax/lang/model/element/AnnotationMirror;

.field protected final atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TFactory;"
        }
    .end annotation
.end field

.field protected final checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

.field protected final contractsUtils:Lorg/checkerframework/framework/util/ContractsUtils;

.field private final functionApply:Ljavax/lang/model/element/ExecutableElement;

.field private getExceptionParameterLowerBoundAnnotationsCache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation
.end field

.field private final objectEquals:Ljavax/lang/model/element/ExecutableElement;

.field protected final positions:Lcom/sun/source/util/SourcePositions;

.field protected final targetValueElement:Ljavax/lang/model/element/ExecutableElement;

.field protected final typeValidator:Lorg/checkerframework/common/basetype/TypeValidator;

.field private final vectorCopyInto:Ljavax/lang/model/element/ExecutableElement;

.field private final vectorType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

.field protected final visitorState:Lorg/checkerframework/framework/type/VisitorState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 166
    nop

    .line 2436
    new-instance v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$1;

    invoke-direct {v0}, Lorg/checkerframework/common/basetype/BaseTypeVisitor$1;-><init>()V

    sput-object v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkContainsSameToString:Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner;

    .line 3895
    const/4 v0, 0x0

    sput-boolean v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkedJDK:Z

    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 1
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 208
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;)V

    .line 209
    return-void
.end method

.method protected constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;)V
    .locals 6
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/common/basetype/BaseTypeChecker;",
            "TFactory;)V"
        }
    .end annotation

    .line 216
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    .local p2, "typeFactory":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "TFactory;"
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/source/SourceVisitor;-><init>(Lorg/checkerframework/framework/source/SourceChecker;)V

    .line 197
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Ljava/lang/annotation/Target;

    .line 198
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->TARGET:Ljavax/lang/model/element/AnnotationMirror;

    .line 2042
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->getExceptionParameterLowerBoundAnnotationsCache:Ljava/util/Set;

    .line 218
    iput-object p1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 219
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->createTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 220
    invoke-static {v0}, Lorg/checkerframework/framework/util/ContractsUtils;->getInstance(Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;)Lorg/checkerframework/framework/util/ContractsUtils;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->contractsUtils:Lorg/checkerframework/framework/util/ContractsUtils;

    .line 221
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->trees:Lcom/sun/source/util/Trees;

    invoke-virtual {v1}, Lcom/sun/source/util/Trees;->getSourcePositions()Lcom/sun/source/util/SourcePositions;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->positions:Lcom/sun/source/util/SourcePositions;

    .line 222
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getVisitorState()Lorg/checkerframework/framework/type/VisitorState;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    .line 223
    invoke-virtual {p0}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->createTypeValidator()Lorg/checkerframework/common/basetype/TypeValidator;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->typeValidator:Lorg/checkerframework/common/basetype/TypeValidator;

    .line 224
    invoke-virtual {p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getProcessingEnvironment()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v1

    .line 225
    .local v1, "env":Ljavax/annotation/processing/ProcessingEnvironment;
    const-string v2, "java.lang.Object"

    const-string v3, "equals"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4, v1}, Lorg/checkerframework/javacutil/TreeUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;ILjavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->objectEquals:Ljavax/lang/model/element/ExecutableElement;

    .line 226
    const-string v2, "copyInto"

    const-string v3, "java.util.Vector"

    invoke-static {v3, v2, v4, v1}, Lorg/checkerframework/javacutil/TreeUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;ILjavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->vectorCopyInto:Ljavax/lang/model/element/ExecutableElement;

    .line 227
    const-string v2, "java.util.function.Function"

    const-string v5, "apply"

    invoke-static {v2, v5, v4, v1}, Lorg/checkerframework/javacutil/TreeUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;ILjavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->functionApply:Ljavax/lang/model/element/ExecutableElement;

    .line 228
    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->elements:Ljavax/lang/model/util/Elements;

    invoke-interface {v2, v3}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->fromElement(Ljavax/lang/model/element/TypeElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->vectorType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 229
    const-class v0, Ljava/lang/annotation/Target;

    .line 230
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "value"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lorg/checkerframework/javacutil/TreeUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;ILjavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->targetValueElement:Ljavax/lang/model/element/ExecutableElement;

    .line 232
    invoke-virtual {p0}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkForAnnotatedJdk()V

    .line 233
    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p1, "x1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 166
    invoke-static {p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->shouldPrintVerbose(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;)Z
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p1, "x1"    # Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;

    .line 166
    invoke-static {p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->shouldPrintVerbose(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lorg/checkerframework/common/basetype/BaseTypeVisitor;)Ljavax/lang/model/element/ExecutableElement;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    .line 166
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->functionApply:Ljavax/lang/model/element/ExecutableElement;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/checkerframework/common/basetype/BaseTypeVisitor;)Lcom/sun/source/tree/CompilationUnitTree;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    .line 166
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->root:Lcom/sun/source/tree/CompilationUnitTree;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/checkerframework/common/basetype/BaseTypeVisitor;)Lcom/sun/source/tree/CompilationUnitTree;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    .line 166
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->root:Lcom/sun/source/tree/CompilationUnitTree;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/checkerframework/common/basetype/BaseTypeVisitor;)Lcom/sun/source/tree/CompilationUnitTree;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    .line 166
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->root:Lcom/sun/source/tree/CompilationUnitTree;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/checkerframework/common/basetype/BaseTypeVisitor;)Lcom/sun/source/tree/CompilationUnitTree;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    .line 166
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->root:Lcom/sun/source/tree/CompilationUnitTree;

    return-object v0
.end method

.method static synthetic access$200(Lorg/checkerframework/common/basetype/BaseTypeVisitor;Ljava/util/Set;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/common/basetype/BaseTypeVisitor;
    .param p1, "x1"    # Ljava/util/Set;
    .param p2, "x2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 166
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->resolveContracts(Ljava/util/Set;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/checkerframework/common/basetype/BaseTypeVisitor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/checkerframework/common/basetype/BaseTypeVisitor;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/util/Set;
    .param p6, "x6"    # Ljava/util/Set;
    .param p7, "x7"    # Ljava/lang/String;

    .line 166
    invoke-direct/range {p0 .. p7}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkContractsSubset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lorg/checkerframework/common/basetype/BaseTypeVisitor;Ljava/util/Set;Z)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/common/basetype/BaseTypeVisitor;
    .param p1, "x1"    # Ljava/util/Set;
    .param p2, "x2"    # Z

    .line 166
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->filterConditionalPostconditions(Ljava/util/Set;Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lorg/checkerframework/common/basetype/BaseTypeVisitor;)Ljavax/lang/model/util/Types;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    .line 166
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->types:Ljavax/lang/model/util/Types;

    return-object v0
.end method

.method static synthetic access$600(Lorg/checkerframework/common/basetype/BaseTypeVisitor;)Lcom/sun/source/tree/CompilationUnitTree;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    .line 166
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->root:Lcom/sun/source/tree/CompilationUnitTree;

    return-object v0
.end method

.method static synthetic access$700(Lorg/checkerframework/common/basetype/BaseTypeVisitor;)Lcom/sun/source/tree/CompilationUnitTree;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    .line 166
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->root:Lcom/sun/source/tree/CompilationUnitTree;

    return-object v0
.end method

.method static synthetic access$800(Lorg/checkerframework/common/basetype/BaseTypeVisitor;)Lcom/sun/source/tree/CompilationUnitTree;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    .line 166
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->root:Lcom/sun/source/tree/CompilationUnitTree;

    return-object v0
.end method

.method static synthetic access$900(Lorg/checkerframework/common/basetype/BaseTypeVisitor;)Lcom/sun/source/tree/CompilationUnitTree;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    .line 166
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->root:Lcom/sun/source/tree/CompilationUnitTree;

    return-object v0
.end method

.method private checkContractsAtMethodDeclaration(Lcom/sun/source/tree/MethodTree;Ljavax/lang/model/element/ExecutableElement;Ljava/util/List;Z)V
    .locals 18
    .param p1, "node"    # Lcom/sun/source/tree/MethodTree;
    .param p2, "methodElement"    # Ljavax/lang/model/element/ExecutableElement;
    .param p4, "abstractMethod"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/MethodTree;",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 777
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    .local p3, "formalParamNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    iget-object v0, v7, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->contractsUtils:Lorg/checkerframework/framework/util/ContractsUtils;

    invoke-virtual {v0, v9}, Lorg/checkerframework/framework/util/ContractsUtils;->getContracts(Ljavax/lang/model/element/ExecutableElement;)Ljava/util/Set;

    move-result-object v11

    .line 779
    .local v11, "contracts":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/Contract;>;"
    invoke-interface {v11}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 780
    return-void

    .line 783
    :cond_0
    nop

    .line 785
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    iget-object v1, v7, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getContext()Lorg/checkerframework/common/basetype/BaseTypeContext;

    move-result-object v1

    .line 784
    invoke-static {v8, v0, v1}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->buildContextForMethodDeclaration(Lcom/sun/source/tree/MethodTree;Lcom/sun/source/util/TreePath;Lorg/checkerframework/framework/util/BaseContext;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    move-result-object v12

    .line 787
    .local v12, "flowExprContext":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lorg/checkerframework/framework/util/Contract;

    .line 788
    .local v14, "contract":Lorg/checkerframework/framework/util/Contract;
    iget-object v15, v14, Lorg/checkerframework/framework/util/Contract;->expression:Ljava/lang/String;

    .line 789
    .local v15, "expression":Ljava/lang/String;
    iget-object v0, v14, Lorg/checkerframework/framework/util/Contract;->annotation:Ljavax/lang/model/element/AnnotationMirror;

    .line 791
    .local v0, "annotation":Ljavax/lang/model/element/AnnotationMirror;
    nop

    .line 793
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v1

    .line 792
    invoke-direct {v7, v0, v12, v1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->standardizeAnnotationFromContract(Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v6

    .line 795
    .end local v0    # "annotation":Ljavax/lang/model/element/AnnotationMirror;
    .local v6, "annotation":Ljavax/lang/model/element/AnnotationMirror;
    const/4 v1, 0x0

    .line 797
    .local v1, "expr":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    nop

    .line 799
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    .line 798
    const/4 v2, 0x0

    invoke-static {v15, v12, v0, v2}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->parse(Ljava/lang/String;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Z)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v0
    :try_end_0
    .catch Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 802
    goto :goto_1

    .line 800
    :catch_0
    move-exception v0

    .line 801
    .local v0, "e":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;
    iget-object v2, v7, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {v0}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;->getResult()Lorg/checkerframework/framework/source/Result;

    move-result-object v3

    invoke-virtual {v2, v3, v8}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 804
    .end local v0    # "e":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;
    :goto_1
    if-eqz v1, :cond_1

    invoke-static {v1}, Lorg/checkerframework/framework/flow/CFAbstractStore;->canInsertReceiver(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 805
    iget-object v0, v7, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v2, "flowexpr.parse.error"

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v2

    invoke-virtual {v0, v2, v8}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 806
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_2

    .line 808
    :cond_1
    move-object v0, v1

    .end local v1    # "expr":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .local v0, "expr":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :goto_2
    if-eqz v0, :cond_2

    if-nez p4, :cond_2

    .line 809
    sget-object v1, Lorg/checkerframework/common/basetype/BaseTypeVisitor$2;->$SwitchMap$org$checkerframework$framework$util$Contract$Kind:[I

    iget-object v2, v14, Lorg/checkerframework/framework/util/Contract;->kind:Lorg/checkerframework/framework/util/Contract$Kind;

    invoke-virtual {v2}, Lorg/checkerframework/framework/util/Contract$Kind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    move-object/from16 v17, v11

    move-object v11, v6

    .end local v6    # "annotation":Ljavax/lang/model/element/AnnotationMirror;
    .local v11, "annotation":Ljavax/lang/model/element/AnnotationMirror;
    .local v17, "contracts":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/Contract;>;"
    goto :goto_3

    .line 814
    .end local v17    # "contracts":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/Contract;>;"
    .restart local v6    # "annotation":Ljavax/lang/model/element/AnnotationMirror;
    .local v11, "contracts":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/Contract;>;"
    :pswitch_0
    iget-object v4, v14, Lorg/checkerframework/framework/util/Contract;->contractAnnotation:Ljavax/lang/model/element/AnnotationMirror;

    move-object v1, v14

    check-cast v1, Lorg/checkerframework/framework/util/Contract$ConditionalPostcondition;

    iget-boolean v5, v1, Lorg/checkerframework/framework/util/Contract$ConditionalPostcondition;->resultValue:Z

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v6

    move/from16 v16, v5

    move-object v5, v0

    move-object/from16 v17, v11

    move-object v11, v6

    .end local v6    # "annotation":Ljavax/lang/model/element/AnnotationMirror;
    .local v11, "annotation":Ljavax/lang/model/element/AnnotationMirror;
    .restart local v17    # "contracts":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/Contract;>;"
    move/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkConditionalPostcondition(Lcom/sun/source/tree/MethodTree;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Z)V

    .line 820
    goto :goto_3

    .line 811
    .end local v17    # "contracts":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/Contract;>;"
    .restart local v6    # "annotation":Ljavax/lang/model/element/AnnotationMirror;
    .local v11, "contracts":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/Contract;>;"
    :pswitch_1
    move-object/from16 v17, v11

    move-object v11, v6

    .end local v6    # "annotation":Ljavax/lang/model/element/AnnotationMirror;
    .local v11, "annotation":Ljavax/lang/model/element/AnnotationMirror;
    .restart local v17    # "contracts":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/Contract;>;"
    iget-object v1, v14, Lorg/checkerframework/framework/util/Contract;->contractAnnotation:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v7, v8, v11, v1, v0}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkPostcondition(Lcom/sun/source/tree/MethodTree;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)V

    .line 812
    goto :goto_3

    .line 808
    .end local v17    # "contracts":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/Contract;>;"
    .restart local v6    # "annotation":Ljavax/lang/model/element/AnnotationMirror;
    .local v11, "contracts":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/Contract;>;"
    :cond_2
    move-object/from16 v17, v11

    move-object v11, v6

    .line 827
    .end local v6    # "annotation":Ljavax/lang/model/element/AnnotationMirror;
    .local v11, "annotation":Ljavax/lang/model/element/AnnotationMirror;
    .restart local v17    # "contracts":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/Contract;>;"
    :goto_3
    if-eqz v10, :cond_3

    invoke-interface {v10, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 829
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contracts."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v14, Lorg/checkerframework/framework/util/Contract;->kind:Lorg/checkerframework/framework/util/Contract$Kind;

    iget-object v2, v2, Lorg/checkerframework/framework/util/Contract$Kind;->errorKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".expression.parameter.name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 830
    .local v1, "key":Ljava/lang/String;
    iget-object v2, v7, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    iget-object v3, v14, Lorg/checkerframework/framework/util/Contract;->contractAnnotation:Ljavax/lang/model/element/AnnotationMirror;

    .line 834
    invoke-interface {v3}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v3

    .line 835
    invoke-interface {v3}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v3

    .line 836
    invoke-interface {v3}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v3

    .line 837
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/MethodTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 839
    invoke-interface {v10, v15}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v4, v15, v5, v15}, [Ljava/lang/Object;

    move-result-object v3

    .line 831
    invoke-static {v1, v3}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v3

    .line 830
    invoke-virtual {v2, v3, v8}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 844
    .end local v1    # "key":Ljava/lang/String;
    :cond_3
    invoke-direct {v7, v8, v9, v15}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkParametersAreEffectivelyFinal(Lcom/sun/source/tree/MethodTree;Ljavax/lang/model/element/ExecutableElement;Ljava/lang/String;)V

    .line 845
    .end local v0    # "expr":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .end local v11    # "annotation":Ljavax/lang/model/element/AnnotationMirror;
    .end local v14    # "contract":Lorg/checkerframework/framework/util/Contract;
    .end local v15    # "expression":Ljava/lang/String;
    move-object/from16 v11, v17

    goto/16 :goto_0

    .line 846
    .end local v17    # "contracts":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/Contract;>;"
    .local v11, "contracts":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/Contract;>;"
    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkContractsSubset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V
    .locals 12
    .param p1, "overriderMeth"    # Ljava/lang/String;
    .param p2, "overriderTyp"    # Ljava/lang/String;
    .param p3, "overriddenMeth"    # Ljava/lang/String;
    .param p4, "overriddenTyp"    # Ljava/lang/String;
    .param p7, "messageKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/javacutil/Pair<",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;>;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/javacutil/Pair<",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3598
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    .local p5, "mustSubset":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/javacutil/Pair<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;>;>;"
    .local p6, "set":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/javacutil/Pair<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;>;>;"
    move-object v0, p0

    invoke-interface/range {p5 .. p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/javacutil/Pair;

    .line 3599
    .local v2, "weak":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;>;"
    const/4 v3, 0x0

    .line 3601
    .local v3, "found":Z
    invoke-interface/range {p6 .. p6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/javacutil/Pair;

    .line 3603
    .local v5, "strong":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v6, v2, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    iget-object v7, v5, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3605
    iget-object v6, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v6}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v6

    .line 3606
    .local v6, "qualifierHierarchy":Lorg/checkerframework/framework/type/QualifierHierarchy;
    iget-object v7, v5, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljavax/lang/model/element/AnnotationMirror;

    iget-object v8, v2, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v6, v7, v8}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3607
    const/4 v3, 0x1

    .line 3608
    goto :goto_2

    .line 3611
    .end local v5    # "strong":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;>;"
    .end local v6    # "qualifierHierarchy":Lorg/checkerframework/framework/type/QualifierHierarchy;
    :cond_0
    goto :goto_1

    .line 3613
    :cond_1
    :goto_2
    if-nez v3, :cond_2

    .line 3614
    iget-object v4, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v4}, Lorg/checkerframework/framework/type/VisitorState;->getMethodTree()Lcom/sun/source/tree/MethodTree;

    move-result-object v4

    .line 3615
    .local v4, "method":Lcom/sun/source/tree/MethodTree;
    iget-object v5, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    iget-object v10, v2, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    iget-object v11, v2, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    filled-new-array/range {v6 .. v11}, [Ljava/lang/Object;

    move-result-object v6

    .line 3616
    move-object/from16 v7, p7

    invoke-static {v7, v6}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v6

    .line 3615
    invoke-virtual {v5, v6, v4}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    goto :goto_3

    .line 3613
    .end local v4    # "method":Lcom/sun/source/tree/MethodTree;
    :cond_2
    move-object/from16 v7, p7

    .line 3626
    .end local v2    # "weak":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;>;"
    .end local v3    # "found":Z
    :goto_3
    goto :goto_0

    .line 3627
    :cond_3
    move-object/from16 v7, p7

    return-void
.end method

.method private checkMethodReferenceInference(Lcom/sun/source/tree/MemberReferenceTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 4
    .param p1, "memberReferenceTree"    # Lcom/sun/source/tree/MemberReferenceTree;
    .param p2, "invocationType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p3, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 3006
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    const/4 v0, 0x0

    .line 3010
    .local v0, "requiresInference":Z
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getTypeVariables()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3011
    invoke-interface {p1}, Lcom/sun/source/tree/MemberReferenceTree;->getTypeArguments()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3012
    invoke-interface {p1}, Lcom/sun/source/tree/MemberReferenceTree;->getTypeArguments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3014
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3015
    :cond_1
    invoke-interface {p1}, Lcom/sun/source/tree/MemberReferenceTree;->getMode()Lcom/sun/source/tree/MemberReferenceTree$ReferenceMode;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/MemberReferenceTree$ReferenceMode;->NEW:Lcom/sun/source/tree/MemberReferenceTree$ReferenceMode;

    if-ne v1, v2, :cond_2

    .line 3016
    invoke-virtual {p3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_2

    move-object v1, p3

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->wasRaw()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3018
    const/4 v0, 0x1

    .line 3021
    :cond_2
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 3022
    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v3, "conservativeUninferredTypeArguments"

    invoke-virtual {v2, v3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3023
    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    new-array v1, v1, [Ljava/lang/Object;

    .line 3024
    const-string v3, "methodref.inference.unimplemented"

    invoke-static {v3, v1}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v1

    .line 3023
    invoke-virtual {v2, v1, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 3026
    :cond_3
    const/4 v1, 0x1

    return v1

    .line 3028
    :cond_4
    return v1
.end method

.method private checkParametersAreEffectivelyFinal(Lcom/sun/source/tree/MethodTree;Ljavax/lang/model/element/ExecutableElement;Ljava/lang/String;)V
    .locals 7
    .param p1, "node"    # Lcom/sun/source/tree/MethodTree;
    .param p2, "method"    # Ljavax/lang/model/element/ExecutableElement;
    .param p3, "stringExpr"    # Ljava/lang/String;

    .line 873
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    invoke-static {p3}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->parameterIndices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 874
    .local v0, "parameterIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 875
    .local v2, "idx":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 878
    goto :goto_0

    .line 880
    :cond_0
    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/VariableElement;

    .line 881
    .local v3, "parameter":Ljavax/lang/model/element/VariableElement;
    invoke-static {v3}, Lorg/checkerframework/javacutil/ElementUtils;->isEffectivelyFinal(Ljavax/lang/model/element/Element;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 882
    iget-object v4, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5, p3}, [Ljava/lang/Object;

    move-result-object v5

    .line 883
    const-string v6, "flowexpr.parameter.not.final"

    invoke-static {v6, v5}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v5

    .line 882
    invoke-virtual {v4, v5, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 886
    .end local v2    # "idx":Ljava/lang/Integer;
    .end local v3    # "parameter":Ljavax/lang/model/element/VariableElement;
    :cond_1
    goto :goto_0

    .line 887
    :cond_2
    return-void
.end method

.method private static varargs containsSameToString([Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 6
    .param p0, "atms"    # [Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 2469
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 2470
    .local v3, "atm":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    sget-object v4, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkContainsSameToString:Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner;

    invoke-virtual {v4, v3}, Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 2471
    .local v4, "result":Ljava/lang/Boolean;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2472
    const/4 v0, 0x1

    return v0

    .line 2475
    :cond_0
    sget-object v5, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkContainsSameToString:Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner;

    invoke-virtual {v5}, Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner;->reset()V

    .line 2469
    .end local v3    # "atm":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v4    # "result":Ljava/lang/Boolean;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2478
    :cond_1
    return v1
.end method

.method private filterConditionalPostconditions(Ljava/util/Set;Z)Ljava/util/Set;
    .locals 8
    .param p2, "b"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/Contract$ConditionalPostcondition;",
            ">;Z)",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/Contract$Postcondition;",
            ">;"
        }
    .end annotation

    .line 3575
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    .local p1, "conditionalPostconditions":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/Contract$ConditionalPostcondition;>;"
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 3576
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/Contract$Postcondition;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/util/Contract;

    .line 3577
    .local v2, "c":Lorg/checkerframework/framework/util/Contract;
    move-object v3, v2

    check-cast v3, Lorg/checkerframework/framework/util/Contract$ConditionalPostcondition;

    .line 3578
    .local v3, "p":Lorg/checkerframework/framework/util/Contract$ConditionalPostcondition;
    iget-boolean v4, v3, Lorg/checkerframework/framework/util/Contract$ConditionalPostcondition;->resultValue:Z

    if-ne v4, p2, :cond_0

    .line 3579
    new-instance v4, Lorg/checkerframework/framework/util/Contract$Postcondition;

    iget-object v5, v3, Lorg/checkerframework/framework/util/Contract$ConditionalPostcondition;->expression:Ljava/lang/String;

    iget-object v6, v3, Lorg/checkerframework/framework/util/Contract$ConditionalPostcondition;->annotation:Ljavax/lang/model/element/AnnotationMirror;

    iget-object v7, v3, Lorg/checkerframework/framework/util/Contract$ConditionalPostcondition;->contractAnnotation:Ljavax/lang/model/element/AnnotationMirror;

    invoke-direct {v4, v5, v6, v7}, Lorg/checkerframework/framework/util/Contract$Postcondition;-><init>(Ljava/lang/String;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3581
    .end local v2    # "c":Lorg/checkerframework/framework/util/Contract;
    .end local v3    # "p":Lorg/checkerframework/framework/util/Contract$ConditionalPostcondition;
    :cond_0
    goto :goto_0

    .line 3582
    :cond_1
    return-object v0
.end method

.method private getExceptionParameterLowerBoundAnnotationsCached()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 2045
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->getExceptionParameterLowerBoundAnnotationsCache:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2046
    nop

    .line 2047
    invoke-virtual {p0}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->getExceptionParameterLowerBoundAnnotations()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->getExceptionParameterLowerBoundAnnotationsCache:Ljava/util/Set;

    .line 2049
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->getExceptionParameterLowerBoundAnnotationsCache:Ljava/util/Set;

    return-object v0
.end method

.method private isIgnoredUninferredWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 2578
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    iget-boolean v0, v0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->ignoreUninferredTypeArguments:Z

    if-eqz v0, :cond_0

    .line 2579
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 2580
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->isUninferredTypeArgument()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2578
    :goto_0
    return v0
.end method

.method private isTypeAnnotation(Lcom/sun/source/tree/AnnotationTree;)Z
    .locals 11
    .param p1, "anno"    # Lcom/sun/source/tree/AnnotationTree;

    .line 1132
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    invoke-interface {p1}, Lcom/sun/source/tree/AnnotationTree;->getAnnotationType()Lcom/sun/source/tree/Tree;

    move-result-object v0

    .line 1134
    .local v0, "annoType":Lcom/sun/source/tree/Tree;
    sget-object v1, Lorg/checkerframework/common/basetype/BaseTypeVisitor$2;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {v0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1142
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled kind: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1139
    :pswitch_0
    move-object v1, v0

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lcom/sun/tools/javac/code/Symbol;

    check-cast v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 1140
    .local v1, "annoSymbol":Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    goto :goto_0

    .line 1136
    .end local v1    # "annoSymbol":Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    :pswitch_1
    move-object v1, v0

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->sym:Lcom/sun/tools/javac/code/Symbol;

    check-cast v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 1137
    .restart local v1    # "annoSymbol":Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    nop

    .line 1144
    :goto_0
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->getAnnotationMirrors()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/AnnotationMirror;

    .line 1145
    .local v3, "metaAnno":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v5, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->TARGET:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {v3, v5}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1146
    invoke-interface {v3}, Ljavax/lang/model/element/AnnotationMirror;->getElementValues()Ljava/util/Map;

    move-result-object v2

    iget-object v5, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->targetValueElement:Ljavax/lang/model/element/ExecutableElement;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationValue;

    .line 1148
    .local v2, "valueValue":Ljavax/lang/model/element/AnnotationValue;
    nop

    .line 1149
    invoke-interface {v2}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1150
    .local v5, "targets":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/AnnotationValue;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/lang/model/element/AnnotationValue;

    .line 1151
    .local v7, "target":Ljavax/lang/model/element/AnnotationValue;
    move-object v8, v7

    check-cast v8, Lcom/sun/tools/javac/code/Attribute$Enum;

    iget-object v8, v8, Lcom/sun/tools/javac/code/Attribute$Enum;->value:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 1152
    .local v8, "targetSymbol":Lcom/sun/tools/javac/code/Symbol$VarSymbol;
    invoke-virtual {v8}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "TYPE_USE"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1153
    const/4 v4, 0x1

    return v4

    .line 1155
    .end local v7    # "target":Ljavax/lang/model/element/AnnotationValue;
    .end local v8    # "targetSymbol":Lcom/sun/tools/javac/code/Symbol$VarSymbol;
    :cond_0
    goto :goto_2

    .line 1156
    :cond_1
    return v4

    .line 1158
    .end local v2    # "valueValue":Ljavax/lang/model/element/AnnotationValue;
    .end local v3    # "metaAnno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v5    # "targets":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/AnnotationValue;>;"
    :cond_2
    goto :goto_1

    .line 1160
    :cond_3
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private reportPurityError(Ljava/lang/String;Lorg/checkerframework/javacutil/Pair;)V
    .locals 6
    .param p1, "msgPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/checkerframework/javacutil/Pair<",
            "Lcom/sun/source/tree/Tree;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 761
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    .local p2, "r":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/Tree;Ljava/lang/String;>;"
    iget-object v0, p2, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 763
    .local v0, "reason":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 764
    .local v1, "msg":Ljava/lang/String;
    const-string v2, "call"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 765
    iget-object v2, p2, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/sun/source/tree/MethodInvocationTree;

    .line 766
    .local v2, "mitree":Lcom/sun/source/tree/MethodInvocationTree;
    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-interface {v2}, Lcom/sun/source/tree/MethodInvocationTree;->getMethodSelect()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v4

    iget-object v5, p2, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 767
    .end local v2    # "mitree":Lcom/sun/source/tree/MethodInvocationTree;
    goto :goto_0

    .line 768
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v3

    iget-object v4, p2, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 770
    :goto_0
    return-void
.end method

.method private resolveContracts(Ljava/util/Set;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)Ljava/util/Set;
    .locals 11
    .param p2, "method"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lorg/checkerframework/framework/util/Contract;",
            ">;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            ")",
            "Ljava/util/Set<",
            "Lorg/checkerframework/javacutil/Pair<",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;>;"
        }
    .end annotation

    .line 3635
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    .local p1, "contractSet":Ljava/util/Set;, "Ljava/util/Set<+Lorg/checkerframework/framework/util/Contract;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3636
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/javacutil/Pair<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;>;>;"
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/VisitorState;->getMethodTree()Lcom/sun/source/tree/MethodTree;

    move-result-object v1

    .line 3637
    .local v1, "methodTree":Lcom/sun/source/tree/MethodTree;
    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v2, v1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v2

    .line 3638
    .local v2, "path":Lcom/sun/source/util/TreePath;
    const/4 v3, 0x0

    .line 3639
    .local v3, "flowExprContext":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/util/Contract;

    .line 3640
    .local v5, "p":Lorg/checkerframework/framework/util/Contract;
    iget-object v6, v5, Lorg/checkerframework/framework/util/Contract;->expression:Ljava/lang/String;

    .line 3641
    .local v6, "expression":Ljava/lang/String;
    iget-object v7, v5, Lorg/checkerframework/framework/util/Contract;->annotation:Ljavax/lang/model/element/AnnotationMirror;

    .line 3642
    .local v7, "annotation":Ljavax/lang/model/element/AnnotationMirror;
    if-nez v3, :cond_0

    .line 3643
    nop

    .line 3646
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v8

    invoke-virtual {v8}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v8

    iget-object v9, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 3647
    invoke-virtual {v9}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getContext()Lorg/checkerframework/common/basetype/BaseTypeContext;

    move-result-object v9

    .line 3644
    invoke-static {v1, v8, v9}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->buildContextForMethodDeclaration(Lcom/sun/source/tree/MethodTree;Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/util/BaseContext;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    move-result-object v3

    .line 3650
    :cond_0
    invoke-direct {p0, v7, v3, v2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->standardizeAnnotationFromContract(Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v7

    .line 3656
    nop

    .line 3657
    const/4 v8, 0x0

    :try_start_0
    invoke-static {v6, v3, v2, v8}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->parse(Ljava/lang/String;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Z)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v8

    .line 3658
    .local v8, "expr":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    invoke-static {v8, v7}, Lorg/checkerframework/javacutil/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3662
    nop

    .end local v8    # "expr":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    goto :goto_1

    .line 3659
    :catch_0
    move-exception v8

    .line 3661
    .local v8, "e":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;
    iget-object v9, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {v8}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;->getResult()Lorg/checkerframework/framework/source/Result;

    move-result-object v10

    invoke-virtual {v9, v10, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 3663
    .end local v5    # "p":Lorg/checkerframework/framework/util/Contract;
    .end local v6    # "expression":Ljava/lang/String;
    .end local v7    # "annotation":Ljavax/lang/model/element/AnnotationMirror;
    .end local v8    # "e":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;
    :goto_1
    goto :goto_0

    .line 3664
    :cond_1
    return-object v0
.end method

.method private shouldBeCaptureConverted(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;)Z
    .locals 2
    .param p1, "typeArg"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "bounds"    # Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;

    .line 2592
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_0

    .line 2593
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2592
    :goto_0
    return v0
.end method

.method private static shouldPrintVerbose(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 3
    .param p0, "atm1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p1, "atm2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 2409
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2410
    return v2

    .line 2412
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    aput-object p1, v0, v2

    invoke-static {v0}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->containsSameToString([Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    return v0
.end method

.method private static shouldPrintVerbose(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;)Z
    .locals 3
    .param p0, "atm"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p1, "bounds"    # Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;

    .line 2426
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2427
    return v2

    .line 2429
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->containsSameToString([Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    return v0
.end method

.method private standardizeAnnotationFromContract(Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .param p1, "annoFromContract"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "flowExprContext"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    .param p3, "path"    # Lcom/sun/source/util/TreePath;

    .line 853
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getDependentTypesHelper()Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    move-result-object v0

    .line 854
    .local v0, "dependentTypesHelper":Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;
    if-eqz v0, :cond_0

    .line 855
    nop

    .line 856
    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, p1, v1}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->standardizeAnnotation(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Ljavax/lang/model/element/AnnotationMirror;Z)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 858
    .local v1, "anno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p3}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->checkAnnotation(Ljavax/lang/model/element/AnnotationMirror;Lcom/sun/source/tree/Tree;)V

    .line 859
    return-object v1

    .line 861
    .end local v1    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    return-object p1
.end method

.method private warnAboutTypeAnnotationsTooEarly(Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/ModifiersTree;)V
    .locals 10
    .param p1, "node"    # Lcom/sun/source/tree/Tree;
    .param p2, "modifiersTree"    # Lcom/sun/source/tree/ModifiersTree;

    .line 1060
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->VARIABLE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sun/source/tree/VariableTree;

    .line 1061
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/VariableTree;)Ljavax/lang/model/element/VariableElement;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/element/VariableElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->ENUM_CONSTANT:Ljavax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_0

    .line 1065
    return-void

    .line 1067
    :cond_0
    invoke-interface {p2}, Lcom/sun/source/tree/ModifiersTree;->getFlags()Ljava/util/Set;

    move-result-object v0

    .line 1068
    .local v0, "modifierSet":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/Modifier;>;"
    invoke-interface {p2}, Lcom/sun/source/tree/ModifiersTree;->getAnnotations()Ljava/util/List;

    move-result-object v1

    .line 1070
    .local v1, "annotations":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/AnnotationTree;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1071
    return-void

    .line 1080
    :cond_1
    const/4 v2, -0x1

    .line 1081
    .local v2, "lastDeclAnnoIndex":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-lez v3, :cond_3

    .line 1082
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/source/tree/AnnotationTree;

    invoke-direct {p0, v4}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->isTypeAnnotation(Lcom/sun/source/tree/AnnotationTree;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1083
    move v2, v3

    .line 1084
    goto :goto_1

    .line 1081
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1087
    .end local v3    # "i":I
    :cond_3
    :goto_1
    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    .line 1088
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1089
    .local v3, "badTypeAnnos":Ljava/util/List;, "Ljava/util/List<Lcom/sun/source/tree/AnnotationTree;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v2, :cond_5

    .line 1090
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/source/tree/AnnotationTree;

    .line 1091
    .local v5, "anno":Lcom/sun/source/tree/AnnotationTree;
    invoke-direct {p0, v5}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->isTypeAnnotation(Lcom/sun/source/tree/AnnotationTree;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1092
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1089
    .end local v5    # "anno":Lcom/sun/source/tree/AnnotationTree;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1095
    .end local v4    # "i":I
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1096
    iget-object v4, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 1100
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 1097
    const-string v6, "type.anno.before.decl.anno"

    invoke-static {v6, v5}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v5

    .line 1096
    invoke-virtual {v4, v5, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 1112
    .end local v3    # "badTypeAnnos":Ljava/util/List;, "Ljava/util/List<Lcom/sun/source/tree/AnnotationTree;>;"
    :cond_6
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/source/tree/AnnotationTree;

    .line 1113
    .local v3, "firstAnno":Lcom/sun/source/tree/AnnotationTree;
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-direct {p0, v3}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->isTypeAnnotation(Lcom/sun/source/tree/AnnotationTree;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1114
    const/4 v4, 0x0

    .line 1115
    .local v4, "precedingTextLength":I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/lang/model/element/Modifier;

    .line 1116
    .local v6, "m":Ljavax/lang/model/element/Modifier;
    invoke-virtual {v6}, Ljavax/lang/model/element/Modifier;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v4, v7

    .line 1117
    .end local v6    # "m":Ljavax/lang/model/element/Modifier;
    goto :goto_3

    .line 1118
    :cond_7
    move-object v5, v3

    check-cast v5, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v5}, Lcom/sun/tools/javac/tree/JCTree;->getStartPosition()I

    move-result v5

    .line 1119
    .local v5, "annoStartPos":I
    move-object v6, p1

    check-cast v6, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v6}, Lcom/sun/tools/javac/tree/JCTree;->getStartPosition()I

    move-result v6

    .line 1120
    .local v6, "varStartPos":I
    add-int v7, v6, v4

    if-ge v5, v7, :cond_8

    .line 1121
    iget-object v7, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v8

    .line 1122
    const-string v9, "type.anno.before.modifier"

    invoke-static {v9, v8}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v8

    .line 1121
    invoke-virtual {v7, v8, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 1125
    .end local v4    # "precedingTextLength":I
    .end local v5    # "annoStartPos":I
    .end local v6    # "varStartPos":I
    :cond_8
    return-void
.end method


# virtual methods
.method protected checkAccess(Lcom/sun/source/tree/IdentifierTree;Ljava/lang/Void;)V
    .locals 7
    .param p1, "node"    # Lcom/sun/source/tree/IdentifierTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 3704
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    invoke-virtual {p0}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->enclosingMemberSelect()Lcom/sun/source/tree/MemberSelectTree;

    move-result-object v0

    .line 3708
    .local v0, "memberSel":Lcom/sun/source/tree/MemberSelectTree;
    if-nez v0, :cond_0

    .line 3709
    move-object v1, p1

    .line 3710
    .local v1, "tree":Lcom/sun/source/tree/ExpressionTree;
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v2

    .local v2, "elem":Ljavax/lang/model/element/Element;
    goto :goto_0

    .line 3712
    .end local v1    # "tree":Lcom/sun/source/tree/ExpressionTree;
    .end local v2    # "elem":Ljavax/lang/model/element/Element;
    :cond_0
    move-object v1, v0

    .line 3713
    .restart local v1    # "tree":Lcom/sun/source/tree/ExpressionTree;
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v2

    .line 3716
    .restart local v2    # "elem":Ljavax/lang/model/element/Element;
    :goto_0
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/lang/model/element/ElementKind;->isField()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 3720
    :cond_1
    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v3, v1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getReceiverType(Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    .line 3722
    .local v3, "receiver":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p0, v2, v3, v1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->isAccessAllowed(Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3723
    iget-object v4, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v5, "unallowed.access"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 3725
    :cond_2
    return-void

    .line 3717
    .end local v3    # "receiver":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_3
    :goto_1
    return-void
.end method

.method protected checkArguments(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/sun/source/tree/ExpressionTree;",
            ">;)V"
        }
    .end annotation

    .line 2730
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    .local p1, "requiredArgs":Ljava/util/List;, "Ljava/util/List<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .local p2, "passedArgs":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 2737
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/VisitorState;->getAssignmentContext()Lorg/checkerframework/javacutil/Pair;

    move-result-object v0

    .line 2739
    .local v0, "preAssCtxt":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2740
    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, Lcom/sun/source/tree/Tree;

    .line 2741
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-static {v3, v4}, Lorg/checkerframework/javacutil/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v4

    .line 2740
    invoke-virtual {v2, v4}, Lorg/checkerframework/framework/type/VisitorState;->setAssignmentContext(Lorg/checkerframework/javacutil/Pair;)V

    .line 2742
    nop

    .line 2743
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/source/tree/ExpressionTree;

    const-string v5, "argument.type.incompatible"

    .line 2742
    invoke-virtual {p0, v2, v4, v5}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)V

    .line 2746
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/source/tree/Tree;

    invoke-virtual {p0, v2, v3}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2739
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2749
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v1, v0}, Lorg/checkerframework/framework/type/VisitorState;->setAssignmentContext(Lorg/checkerframework/javacutil/Pair;)V

    .line 2750
    nop

    .line 2751
    return-void

    .line 2749
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v2, v0}, Lorg/checkerframework/framework/type/VisitorState;->setAssignmentContext(Lorg/checkerframework/javacutil/Pair;)V

    throw v1

    .line 2730
    .end local v0    # "preAssCtxt":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mismatch between required args ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") and passed args ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method protected checkArrayInitialization(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List;)V
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Ljava/util/List<",
            "+",
            "Lcom/sun/source/tree/ExpressionTree;",
            ">;)V"
        }
    .end annotation

    .line 2485
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    .local p2, "initializers":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/ExpressionTree;

    .line 2486
    .local v1, "init":Lcom/sun/source/tree/ExpressionTree;
    const-string v2, "array.initializer.type.incompatible"

    invoke-virtual {p0, p1, v1, v2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)V

    .line 2487
    .end local v1    # "init":Lcom/sun/source/tree/ExpressionTree;
    goto :goto_0

    .line 2488
    :cond_0
    return-void
.end method

.method protected checkConditionalPostcondition(Lcom/sun/source/tree/MethodTree;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Z)V
    .locals 16
    .param p1, "node"    # Lcom/sun/source/tree/MethodTree;
    .param p2, "annotation"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p3, "contractAnnotation"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p4, "expression"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .param p5, "result"    # Z

    .line 945
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p5

    .line 946
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/MethodTree;->getReturnType()Lcom/sun/source/tree/Tree;

    move-result-object v5

    invoke-static {v5}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    invoke-static {v5}, Lorg/checkerframework/javacutil/TypesUtils;->isBooleanType(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v5

    .line 947
    .local v5, "booleanReturnType":Z
    if-nez v5, :cond_0

    .line 948
    iget-object v6, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    .line 949
    const-string v8, "contracts.conditional.postcondition.invalid.returntype"

    invoke-static {v8, v7}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v7

    .line 948
    invoke-virtual {v6, v7, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 952
    return-void

    .line 955
    :cond_0
    iget-object v6, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v6, v1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getReturnStatementStores(Lcom/sun/source/tree/MethodTree;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/javacutil/Pair;

    .line 956
    .local v7, "pair":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lorg/checkerframework/dataflow/cfg/node/ReturnNode;*>;"
    iget-object v8, v7, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lorg/checkerframework/dataflow/cfg/node/ReturnNode;

    .line 958
    .local v8, "returnStmt":Lorg/checkerframework/dataflow/cfg/node/ReturnNode;
    invoke-virtual {v8}, Lorg/checkerframework/dataflow/cfg/node/ReturnNode;->getResult()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v9

    .line 960
    .local v9, "retValNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    instance-of v10, v9, Lorg/checkerframework/dataflow/cfg/node/BooleanLiteralNode;

    if-eqz v10, :cond_1

    .line 961
    move-object v10, v9

    check-cast v10, Lorg/checkerframework/dataflow/cfg/node/BooleanLiteralNode;

    invoke-virtual {v10}, Lorg/checkerframework/dataflow/cfg/node/BooleanLiteralNode;->getValue()Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_1

    .line 962
    :cond_1
    const/4 v10, 0x0

    :goto_1
    nop

    .line 964
    .local v10, "retVal":Ljava/lang/Boolean;
    iget-object v11, v7, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    check-cast v11, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 965
    .local v11, "transferResult":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<**>;"
    if-nez v11, :cond_2

    .line 967
    goto :goto_0

    .line 971
    :cond_2
    if-eqz v4, :cond_3

    .line 972
    invoke-virtual {v11}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getThenStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v12

    goto :goto_2

    .line 973
    :cond_3
    invoke-virtual {v11}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getElseStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v12

    :goto_2
    check-cast v12, Lorg/checkerframework/framework/flow/CFAbstractStore;

    .line 974
    .local v12, "exitStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<**>;"
    invoke-virtual {v12, v3}, Lorg/checkerframework/framework/flow/CFAbstractStore;->getValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v13

    .line 978
    .local v13, "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "Lorg/checkerframework/framework/flow/CFAbstractValue<*>;"
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eq v14, v4, :cond_4

    .line 979
    goto :goto_0

    .line 981
    :cond_4
    const/4 v14, 0x0

    .line 982
    .local v14, "inferredAnno":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v13, :cond_5

    .line 983
    iget-object v15, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v15}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v15

    .line 984
    .local v15, "hierarchy":Lorg/checkerframework/framework/type/QualifierHierarchy;
    invoke-virtual {v13}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    .line 985
    .local v1, "annos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {v15, v1, v2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->findAnnotationInSameHierarchy(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v14

    .line 988
    .end local v1    # "annos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    .end local v15    # "hierarchy":Lorg/checkerframework/framework/type/QualifierHierarchy;
    :cond_5
    invoke-virtual {v0, v3, v2, v14, v12}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkContract(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/flow/CFAbstractStore;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 989
    iget-object v1, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 992
    invoke-interface/range {p3 .. p3}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v15

    invoke-interface {v15}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v15

    invoke-interface {v15}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v15

    .line 993
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v15, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 990
    const-string v15, "contracts.conditional.postcondition.not.satisfied"

    invoke-static {v15, v0}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v0

    .line 994
    invoke-virtual {v8}, Lorg/checkerframework/dataflow/cfg/node/ReturnNode;->getTree()Lcom/sun/source/tree/ReturnTree;

    move-result-object v15

    .line 989
    invoke-virtual {v1, v0, v15}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 996
    .end local v7    # "pair":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lorg/checkerframework/dataflow/cfg/node/ReturnNode;*>;"
    .end local v8    # "returnStmt":Lorg/checkerframework/dataflow/cfg/node/ReturnNode;
    .end local v9    # "retValNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v10    # "retVal":Ljava/lang/Boolean;
    .end local v11    # "transferResult":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<**>;"
    .end local v12    # "exitStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<**>;"
    .end local v13    # "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "Lorg/checkerframework/framework/flow/CFAbstractValue<*>;"
    .end local v14    # "inferredAnno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_0

    .line 997
    :cond_7
    return-void
.end method

.method protected checkConstructorInvocation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lcom/sun/source/tree/NewClassTree;)V
    .locals 7
    .param p1, "invocation"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "constructor"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p3, "newClassTree"    # Lcom/sun/source/tree/NewClassTree;

    .line 2678
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 2679
    invoke-virtual {v0, p3}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->fromNewClass(Lcom/sun/source/tree/NewClassTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getAnnotations()Ljava/util/Set;

    move-result-object v0

    .line 2680
    .local v0, "explicitAnnos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2681
    return-void

    .line 2683
    :cond_0
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    .line 2684
    .local v1, "resultAnnos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/AnnotationMirror;

    .line 2685
    .local v3, "explicit":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v4, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 2687
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v4

    .line 2688
    invoke-virtual {v4, v1, v3}, Lorg/checkerframework/framework/type/QualifierHierarchy;->findAnnotationInSameHierarchy(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    .line 2691
    .local v4, "resultAnno":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v5, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v5}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 2692
    invoke-virtual {v5}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2693
    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 2696
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5, v3, v4}, [Ljava/lang/Object;

    move-result-object v5

    .line 2694
    const-string v6, "constructor.invocation.invalid"

    invoke-static {v6, v5}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v5

    .line 2693
    invoke-virtual {v2, v5, p3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 2700
    return-void

    .line 2701
    :cond_1
    iget-object v5, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v5}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2704
    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    filled-new-array {v4, v3}, [Ljava/lang/Object;

    move-result-object v5

    .line 2705
    const-string v6, "cast.unsafe.constructor.invocation"

    invoke-static {v6, v5}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v5

    .line 2704
    invoke-virtual {v2, v5, p3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 2707
    return-void

    .line 2709
    .end local v3    # "explicit":Ljavax/lang/model/element/AnnotationMirror;
    .end local v4    # "resultAnno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_2
    goto :goto_0

    .line 2713
    :cond_3
    return-void
.end method

.method protected checkConstructorResult(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljavax/lang/model/element/ExecutableElement;)V
    .locals 9
    .param p1, "constructorType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p2, "constructorElement"    # Ljavax/lang/model/element/ExecutableElement;

    .line 714
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v0

    .line 715
    .local v0, "qualifierHierarchy":Lorg/checkerframework/framework/type/QualifierHierarchy;
    nop

    .line 716
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    .line 717
    .local v1, "constructorAnnotations":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getTopAnnotations()Ljava/util/Set;

    move-result-object v2

    .line 719
    .local v2, "tops":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/AnnotationMirror;

    .line 720
    .local v4, "top":Ljavax/lang/model/element/AnnotationMirror;
    nop

    .line 721
    invoke-virtual {v0, v1, v4}, Lorg/checkerframework/framework/type/QualifierHierarchy;->findAnnotationInHierarchy(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v5

    .line 722
    .local v5, "constructorAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v0, v4, v5}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 723
    iget-object v6, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v7

    .line 724
    const-string v8, "inconsistent.constructor.type"

    invoke-static {v8, v7}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v7

    .line 723
    invoke-virtual {v6, v7, p2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 727
    .end local v4    # "top":Ljavax/lang/model/element/AnnotationMirror;
    .end local v5    # "constructorAnno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_0

    .line 728
    :cond_1
    return-void
.end method

.method protected checkContract(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/flow/CFAbstractStore;)Z
    .locals 1
    .param p1, "expr"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .param p2, "necessaryAnnotation"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p3, "inferredAnnotation"    # Ljavax/lang/model/element/AnnotationMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Lorg/checkerframework/framework/flow/CFAbstractStore<",
            "**>;)Z"
        }
    .end annotation

    .line 1480
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    .local p4, "store":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<**>;"
    if-eqz p3, :cond_0

    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 1482
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v0

    .line 1483
    invoke-virtual {v0, p3, p2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1480
    :goto_0
    return v0
.end method

.method protected checkDefaultConstructor(Lcom/sun/source/tree/ClassTree;)V
    .locals 0
    .param p1, "node"    # Lcom/sun/source/tree/ClassTree;

    .line 541
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    return-void
.end method

.method protected checkExceptionParameter(Lcom/sun/source/tree/CatchTree;)V
    .locals 13
    .param p1, "node"    # Lcom/sun/source/tree/CatchTree;

    .line 2064
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    nop

    .line 2065
    invoke-direct {p0}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->getExceptionParameterLowerBoundAnnotationsCached()Ljava/util/Set;

    move-result-object v0

    .line 2066
    .local v0, "requiredAnnotations":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-interface {p1}, Lcom/sun/source/tree/CatchTree;->getParameter()Lcom/sun/source/tree/VariableTree;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 2068
    .local v1, "exPar":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/AnnotationMirror;

    .line 2069
    .local v3, "required":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v1, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    .line 2070
    .local v4, "found":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v4, :cond_3

    .line 2071
    iget-object v5, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v5}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v5

    const-string v6, "exception.parameter.invalid"

    if-nez v5, :cond_0

    .line 2072
    iget-object v5, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    filled-new-array {v4, v3}, [Ljava/lang/Object;

    move-result-object v7

    .line 2073
    invoke-static {v6, v7}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v7

    .line 2074
    invoke-interface {p1}, Lcom/sun/source/tree/CatchTree;->getParameter()Lcom/sun/source/tree/VariableTree;

    move-result-object v8

    .line 2072
    invoke-virtual {v5, v7, v8}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 2077
    :cond_0
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v5

    sget-object v7, Ljavax/lang/model/type/TypeKind;->UNION:Ljavax/lang/model/type/TypeKind;

    if-ne v5, v7, :cond_2

    .line 2078
    move-object v5, v1

    check-cast v5, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;

    .line 2079
    .local v5, "aut":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;->getAlternatives()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 2080
    .local v8, "alterntive":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v8, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v9

    .line 2081
    .local v9, "foundAltern":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v10, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v10}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v10

    invoke-virtual {v10, v3, v9}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 2082
    iget-object v10, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    filled-new-array {v9, v3}, [Ljava/lang/Object;

    move-result-object v11

    .line 2083
    invoke-static {v6, v11}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v11

    .line 2085
    invoke-interface {p1}, Lcom/sun/source/tree/CatchTree;->getParameter()Lcom/sun/source/tree/VariableTree;

    move-result-object v12

    .line 2082
    invoke-virtual {v10, v11, v12}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 2087
    .end local v8    # "alterntive":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v9    # "foundAltern":Ljavax/lang/model/element/AnnotationMirror;
    :cond_1
    goto :goto_1

    .line 2089
    .end local v3    # "required":Ljavax/lang/model/element/AnnotationMirror;
    .end local v4    # "found":Ljavax/lang/model/element/AnnotationMirror;
    .end local v5    # "aut":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    :cond_2
    goto :goto_0

    .line 2070
    .restart local v3    # "required":Ljavax/lang/model/element/AnnotationMirror;
    .restart local v4    # "found":Ljavax/lang/model/element/AnnotationMirror;
    :cond_3
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 2090
    .end local v3    # "required":Ljavax/lang/model/element/AnnotationMirror;
    .end local v4    # "found":Ljavax/lang/model/element/AnnotationMirror;
    :cond_4
    return-void
.end method

.method protected checkExtendsImplements(Lcom/sun/source/tree/ClassTree;)V
    .locals 11
    .param p1, "classTree"    # Lcom/sun/source/tree/ClassTree;

    .line 389
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isAnonymous(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 394
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getTypeDeclarationBounds(Ljavax/lang/model/type/TypeMirror;)Ljava/util/Set;

    move-result-object v0

    .line 395
    .local v0, "classBounds":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v1

    .line 400
    .local v1, "qualifierHierarchy":Lorg/checkerframework/framework/type/QualifierHierarchy;
    invoke-interface {p1}, Lcom/sun/source/tree/ClassTree;->getExtendsClause()Lcom/sun/source/tree/Tree;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 401
    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 403
    invoke-interface {p1}, Lcom/sun/source/tree/ClassTree;->getExtendsClause()Lcom/sun/source/tree/Tree;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getTypeOfExtendsImplements(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 404
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v2

    .line 405
    .local v2, "extendsAnnos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/AnnotationMirror;

    .line 406
    .local v4, "classAnno":Ljavax/lang/model/element/AnnotationMirror;
    nop

    .line 407
    invoke-virtual {v1, v2, v4}, Lorg/checkerframework/framework/type/QualifierHierarchy;->findAnnotationInSameHierarchy(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v5

    .line 408
    .local v5, "extendsAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v1, v4, v5}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 409
    iget-object v6, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v7

    .line 410
    const-string v8, "declaration.inconsistent.with.extends.clause"

    invoke-static {v8, v7}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v7

    .line 414
    invoke-interface {p1}, Lcom/sun/source/tree/ClassTree;->getExtendsClause()Lcom/sun/source/tree/Tree;

    move-result-object v8

    .line 409
    invoke-virtual {v6, v7, v8}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 416
    .end local v4    # "classAnno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v5    # "extendsAnno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_1
    goto :goto_0

    .line 419
    .end local v2    # "extendsAnnos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_2
    invoke-interface {p1}, Lcom/sun/source/tree/ClassTree;->getImplementsClause()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/source/tree/Tree;

    .line 420
    .local v3, "implementsClause":Lcom/sun/source/tree/Tree;
    iget-object v4, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 421
    invoke-virtual {v4, v3}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getTypeOfExtendsImplements(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v4

    .line 423
    .local v4, "implementsClauseAnnos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/lang/model/element/AnnotationMirror;

    .line 424
    .local v6, "classAnno":Ljavax/lang/model/element/AnnotationMirror;
    nop

    .line 425
    invoke-virtual {v1, v4, v6}, Lorg/checkerframework/framework/type/QualifierHierarchy;->findAnnotationInSameHierarchy(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v7

    .line 427
    .local v7, "implementsAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v1, v6, v7}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 428
    iget-object v8, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v9

    .line 429
    const-string v10, "declaration.inconsistent.with.implements.clause"

    invoke-static {v10, v9}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v9

    .line 428
    invoke-virtual {v8, v9, v3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 435
    .end local v6    # "classAnno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v7    # "implementsAnno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_3
    goto :goto_2

    .line 436
    .end local v3    # "implementsClause":Lcom/sun/source/tree/Tree;
    .end local v4    # "implementsClauseAnnos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_4
    goto :goto_1

    .line 437
    :cond_5
    return-void
.end method

.method protected checkFieldInvariantDeclarations(Lcom/sun/source/tree/ClassTree;)V
    .locals 21
    .param p1, "classTree"    # Lcom/sun/source/tree/ClassTree;

    .line 460
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/ClassTree;)Ljavax/lang/model/element/TypeElement;

    move-result-object v1

    .line 461
    .local v1, "elt":Ljavax/lang/model/element/TypeElement;
    iget-object v2, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v2, v1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getFieldInvariants(Ljavax/lang/model/element/TypeElement;)Lorg/checkerframework/framework/util/FieldInvariants;

    move-result-object v2

    .line 462
    .local v2, "invariants":Lorg/checkerframework/framework/util/FieldInvariants;
    if-nez v2, :cond_0

    .line 464
    return-void

    .line 468
    :cond_0
    iget-object v3, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 470
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/ClassTree;->getModifiers()Lcom/sun/source/tree/ModifiersTree;

    move-result-object v4

    invoke-interface {v4}, Lcom/sun/source/tree/ModifiersTree;->getAnnotations()Ljava/util/List;

    move-result-object v4

    .line 469
    invoke-virtual {v3, v4}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getFieldInvariantAnnotationTree(Ljava/util/List;)Lcom/sun/source/tree/AnnotationTree;

    move-result-object v3

    .line 471
    .local v3, "errorTree":Lcom/sun/source/tree/Tree;
    if-nez v3, :cond_1

    .line 474
    move-object/from16 v3, p1

    .line 478
    :cond_1
    invoke-virtual {v2}, Lorg/checkerframework/framework/util/FieldInvariants;->isWellFormed()Z

    move-result v4

    if-nez v4, :cond_2

    .line 479
    iget-object v4, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "field.invariant.not.wellformed"

    invoke-static {v6, v5}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 480
    return-void

    .line 483
    :cond_2
    invoke-interface {v1}, Ljavax/lang/model/element/TypeElement;->getSuperclass()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    .line 484
    .local v4, "superClass":Ljavax/lang/model/type/TypeMirror;
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lorg/checkerframework/framework/util/FieldInvariants;->getFields()Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 485
    .local v5, "fieldsNotFound":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 486
    invoke-static {v4, v5}, Lorg/checkerframework/javacutil/ElementUtils;->findFieldsInTypeOrSuperType(Ljavax/lang/model/type/TypeMirror;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v6

    .line 489
    .local v6, "fieldElts":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/VariableElement;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    const-string v8, ", "

    if-nez v7, :cond_3

    .line 490
    invoke-static {v8, v5}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    .line 491
    .local v7, "notFoundString":Ljava/lang/String;
    iget-object v9, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v10, "field.invariant.not.found"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v10

    invoke-virtual {v9, v10, v3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 494
    .end local v7    # "notFoundString":Ljava/lang/String;
    :cond_3
    iget-object v7, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 495
    invoke-static {v4}, Lorg/checkerframework/javacutil/TypesUtils;->getTypeElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/TypeElement;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getFieldInvariants(Ljavax/lang/model/element/TypeElement;)Lorg/checkerframework/framework/util/FieldInvariants;

    move-result-object v7

    .line 496
    .local v7, "superInvar":Lorg/checkerframework/framework/util/FieldInvariants;
    if-eqz v7, :cond_4

    .line 498
    iget-object v9, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v2, v7, v9}, Lorg/checkerframework/framework/util/FieldInvariants;->isSuperInvariant(Lorg/checkerframework/framework/util/FieldInvariants;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/source/Result;

    move-result-object v9

    .line 499
    .local v9, "superError":Lorg/checkerframework/framework/source/Result;
    if-eqz v9, :cond_4

    .line 500
    iget-object v10, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {v10, v9, v3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 504
    .end local v9    # "superError":Lorg/checkerframework/framework/source/Result;
    :cond_4
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 505
    .local v9, "notFinal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavax/lang/model/element/VariableElement;

    .line 506
    .local v11, "field":Ljavax/lang/model/element/VariableElement;
    invoke-interface {v11}, Ljavax/lang/model/element/VariableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 507
    .local v12, "fieldName":Ljava/lang/String;
    invoke-static {v11}, Lorg/checkerframework/javacutil/ElementUtils;->isFinal(Ljavax/lang/model/element/Element;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 508
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    :cond_5
    iget-object v13, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v13, v11}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v13

    .line 512
    .local v13, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {v11}, Ljavax/lang/model/element/VariableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v14

    invoke-virtual {v2, v14}, Lorg/checkerframework/framework/util/FieldInvariants;->getQualifiersFor(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v14

    .line 513
    .local v14, "annos":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v1

    .end local v1    # "elt":Ljavax/lang/model/element/TypeElement;
    .local v17, "elt":Ljavax/lang/model/element/TypeElement;
    move-object/from16 v1, v16

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    .line 514
    .local v1, "invariantAnno":Ljavax/lang/model/element/AnnotationMirror;
    nop

    .line 515
    move-object/from16 v16, v2

    .end local v2    # "invariants":Lorg/checkerframework/framework/util/FieldInvariants;
    .local v16, "invariants":Lorg/checkerframework/framework/util/FieldInvariants;
    invoke-virtual {v13, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 516
    .local v2, "declaredAnno":Ljavax/lang/model/element/AnnotationMirror;
    if-nez v2, :cond_6

    .line 518
    move-object/from16 v2, v16

    move-object/from16 v1, v17

    goto :goto_1

    .line 521
    :cond_6
    move-object/from16 v18, v4

    .end local v4    # "superClass":Ljavax/lang/model/type/TypeMirror;
    .local v18, "superClass":Ljavax/lang/model/type/TypeMirror;
    iget-object v4, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v4}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 523
    iget-object v4, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    move-object/from16 v19, v5

    .end local v5    # "fieldsNotFound":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v19, "fieldsNotFound":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    filled-new-array {v12, v1, v2}, [Ljava/lang/Object;

    move-result-object v5

    .line 524
    move-object/from16 v20, v1

    .end local v1    # "invariantAnno":Ljavax/lang/model/element/AnnotationMirror;
    .local v20, "invariantAnno":Ljavax/lang/model/element/AnnotationMirror;
    const-string v1, "field.invariant.not.subtype"

    invoke-static {v1, v5}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v1

    .line 523
    invoke-virtual {v4, v1, v3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    goto :goto_2

    .line 521
    .end local v19    # "fieldsNotFound":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "invariantAnno":Ljavax/lang/model/element/AnnotationMirror;
    .restart local v1    # "invariantAnno":Ljavax/lang/model/element/AnnotationMirror;
    .restart local v5    # "fieldsNotFound":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    move-object/from16 v20, v1

    move-object/from16 v19, v5

    .line 531
    .end local v1    # "invariantAnno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v2    # "declaredAnno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v5    # "fieldsNotFound":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "fieldsNotFound":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    move-object/from16 v2, v16

    move-object/from16 v1, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    goto :goto_1

    .line 513
    .end local v16    # "invariants":Lorg/checkerframework/framework/util/FieldInvariants;
    .end local v17    # "elt":Ljavax/lang/model/element/TypeElement;
    .end local v18    # "superClass":Ljavax/lang/model/type/TypeMirror;
    .end local v19    # "fieldsNotFound":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "elt":Ljavax/lang/model/element/TypeElement;
    .local v2, "invariants":Lorg/checkerframework/framework/util/FieldInvariants;
    .restart local v4    # "superClass":Ljavax/lang/model/type/TypeMirror;
    .restart local v5    # "fieldsNotFound":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    move-object/from16 v17, v1

    move-object/from16 v16, v2

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    .line 532
    .end local v1    # "elt":Ljavax/lang/model/element/TypeElement;
    .end local v2    # "invariants":Lorg/checkerframework/framework/util/FieldInvariants;
    .end local v4    # "superClass":Ljavax/lang/model/type/TypeMirror;
    .end local v5    # "fieldsNotFound":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "field":Ljavax/lang/model/element/VariableElement;
    .end local v12    # "fieldName":Ljava/lang/String;
    .end local v13    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v14    # "annos":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/AnnotationMirror;>;"
    .restart local v16    # "invariants":Lorg/checkerframework/framework/util/FieldInvariants;
    .restart local v17    # "elt":Ljavax/lang/model/element/TypeElement;
    .restart local v18    # "superClass":Ljavax/lang/model/type/TypeMirror;
    .restart local v19    # "fieldsNotFound":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_0

    .line 535
    .end local v16    # "invariants":Lorg/checkerframework/framework/util/FieldInvariants;
    .end local v17    # "elt":Ljavax/lang/model/element/TypeElement;
    .end local v18    # "superClass":Ljavax/lang/model/type/TypeMirror;
    .end local v19    # "fieldsNotFound":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "elt":Ljavax/lang/model/element/TypeElement;
    .restart local v2    # "invariants":Lorg/checkerframework/framework/util/FieldInvariants;
    .restart local v4    # "superClass":Ljavax/lang/model/type/TypeMirror;
    .restart local v5    # "fieldsNotFound":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_9
    move-object/from16 v17, v1

    move-object/from16 v16, v2

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    .end local v1    # "elt":Ljavax/lang/model/element/TypeElement;
    .end local v2    # "invariants":Lorg/checkerframework/framework/util/FieldInvariants;
    .end local v4    # "superClass":Ljavax/lang/model/type/TypeMirror;
    .end local v5    # "fieldsNotFound":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "invariants":Lorg/checkerframework/framework/util/FieldInvariants;
    .restart local v17    # "elt":Ljavax/lang/model/element/TypeElement;
    .restart local v18    # "superClass":Ljavax/lang/model/type/TypeMirror;
    .restart local v19    # "fieldsNotFound":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 536
    invoke-static {v8, v9}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 537
    .local v1, "notFinalString":Ljava/lang/String;
    iget-object v2, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v4, "field.invariant.not.final"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 539
    .end local v1    # "notFinalString":Ljava/lang/String;
    :cond_a
    return-void
.end method

.method protected checkForAnnotatedJdk()V
    .locals 9

    .line 3900
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    sget-boolean v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkedJDK:Z

    if-eqz v0, :cond_0

    .line 3901
    return-void

    .line 3903
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkedJDK:Z

    .line 3904
    invoke-static {}, Lorg/checkerframework/javacutil/PluginUtil;->getJreVersion()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 3905
    const-string v1, "permitMissingJdk"

    invoke-virtual {v0, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 3907
    const-string v1, "nocheckjdk"

    invoke-virtual {v0, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 3910
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->elements:Ljavax/lang/model/util/Elements;

    const-string v1, "java.lang.Object"

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    .line 3911
    .local v0, "objectTE":Ljavax/lang/model/element/TypeElement;
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->elements:Ljavax/lang/model/util/Elements;

    .line 3912
    invoke-interface {v1, v0}, Ljavax/lang/model/util/Elements;->getAllMembers(Ljavax/lang/model/element/TypeElement;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljavax/lang/model/util/ElementFilter;->methodsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 3916
    .local v1, "memberMethods":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/ExecutableElement;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/ExecutableElement;

    .line 3917
    .local v3, "m":Ljavax/lang/model/element/ExecutableElement;
    iget-object v4, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->objectEquals:Ljavax/lang/model/element/ExecutableElement;

    iget-object v5, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {v5}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getProcessingEnvironment()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lorg/checkerframework/javacutil/ElementUtils;->isMethod(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/ExecutableElement;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3918
    goto :goto_0

    .line 3933
    :cond_2
    move-object v4, v3

    check-cast v4, Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Symbol;->getRawTypeAttributes()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/tools/javac/code/Attribute$TypeCompound;

    .line 3934
    .local v5, "tc":Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    iget-object v6, v5, Lcom/sun/tools/javac/code/Attribute$TypeCompound;->position:Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    iget-object v6, v6, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->type:Lcom/sun/tools/javac/code/TargetType;

    sget-object v7, Lcom/sun/tools/javac/code/TargetType;->METHOD_FORMAL_PARAMETER:Lcom/sun/tools/javac/code/TargetType;

    if-ne v6, v7, :cond_3

    iget-object v6, v5, Lcom/sun/tools/javac/code/Attribute$TypeCompound;->position:Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    iget v6, v6, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->parameter_index:I

    if-nez v6, :cond_3

    iget-object v6, v5, Lcom/sun/tools/javac/code/Attribute$TypeCompound;->type:Lcom/sun/tools/javac/code/Type;

    .line 3941
    invoke-virtual {v6}, Lcom/sun/tools/javac/code/Type;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3942
    const-string v7, "org.checkerframework.checker.nullness.qual.Nullable"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3943
    return-void

    .line 3945
    .end local v5    # "tc":Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    :cond_3
    goto :goto_1

    .line 3947
    :cond_4
    invoke-static {}, Lorg/checkerframework/javacutil/PluginUtil;->getJdkJarName()Ljava/lang/String;

    move-result-object v4

    .line 3948
    .local v4, "jdkJarName":Ljava/lang/String;
    iget-object v5, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    sget-object v6, Ljavax/tools/Diagnostic$Kind;->WARNING:Ljavax/tools/Diagnostic$Kind;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "You do not seem to be using the distributed annotated JDK. To fix the problem, supply javac an argument like:  -Xbootclasspath/p:.../checker/dist/ . Currently using: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7, v8}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->message(Ljavax/tools/Diagnostic$Kind;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3954
    .end local v3    # "m":Ljavax/lang/model/element/ExecutableElement;
    .end local v4    # "jdkJarName":Ljava/lang/String;
    goto :goto_0

    .line 3955
    :cond_5
    return-void

    .line 3908
    .end local v0    # "objectTE":Ljavax/lang/model/element/TypeElement;
    .end local v1    # "memberMethods":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/ExecutableElement;>;"
    :cond_6
    :goto_2
    return-void
.end method

.method protected checkMethodInvocability(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lcom/sun/source/tree/MethodInvocationTree;)V
    .locals 10
    .param p1, "method"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p2, "node"    # Lcom/sun/source/tree/MethodInvocationTree;

    .line 2626
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2628
    return-void

    .line 2630
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getElement()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->CONSTRUCTOR:Ljavax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_1

    .line 2636
    return-void

    .line 2639
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getErased()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    .line 2640
    .local v0, "methodReceiver":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->shallowCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v7

    .line 2641
    .local v7, "treeReceiver":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v1, p2}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getReceiverType(Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v8

    .line 2643
    .local v8, "rcv":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v8}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotations()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotations(Ljava/lang/Iterable;)V

    .line 2645
    invoke-virtual {p0, p2, v0, v8}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->skipReceiverSubtypeCheck(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2646
    invoke-virtual {p0, v0, v7, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->commonAssignmentCheckStartDiagnostic(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;)V

    .line 2647
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 2648
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getTypeHierarchy()Lorg/checkerframework/framework/type/TypeHierarchy;

    move-result-object v1

    invoke-interface {v1, v7, v0}, Lorg/checkerframework/framework/type/TypeHierarchy;->isSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v9

    .line 2649
    .local v9, "success":Z
    const/4 v3, 0x0

    move-object v1, p0

    move v2, v9

    move-object v4, v0

    move-object v5, v7

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->commonAssignmentCheckEndDiagnostic(ZLjava/lang/String;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;)V

    .line 2650
    if-nez v9, :cond_2

    .line 2651
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 2654
    invoke-static {p2}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v2

    .line 2655
    invoke-virtual {v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2656
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 2652
    const-string v3, "method.invocation.invalid"

    invoke-static {v3, v2}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v2

    .line 2651
    invoke-virtual {v1, v2, p2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 2660
    .end local v9    # "success":Z
    :cond_2
    return-void
.end method

.method protected checkMethodReferenceAsOverride(Lcom/sun/source/tree/MemberReferenceTree;Ljava/lang/Void;)Z
    .locals 21
    .param p1, "memberReferenceTree"    # Lcom/sun/source/tree/MemberReferenceTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 2877
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget-object v0, v8, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 2878
    invoke-virtual {v0, v9}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getFnInterfaceFromTree(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v10

    .line 2881
    .local v10, "result":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;>;"
    iget-object v0, v10, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 2883
    .local v11, "functionalInterface":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v0, v10, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 2891
    .local v0, "functionType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/MemberReferenceTree;->getQualifierExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v12

    .line 2892
    .local v12, "qualifierExpression":Lcom/sun/source/tree/ExpressionTree;
    move-object v1, v9

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCMemberReference;

    iget-object v13, v1, Lcom/sun/tools/javac/tree/JCTree$JCMemberReference;->kind:Lcom/sun/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    .line 2894
    .local v13, "memRefKind":Lcom/sun/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/MemberReferenceTree;->getMode()Lcom/sun/source/tree/MemberReferenceTree$ReferenceMode;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/MemberReferenceTree$ReferenceMode;->NEW:Lcom/sun/source/tree/MemberReferenceTree$ReferenceMode;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/sun/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->UNBOUND:Lcom/sun/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    if-eq v13, v1, :cond_1

    sget-object v1, Lcom/sun/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->STATIC:Lcom/sun/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    if-ne v13, v1, :cond_0

    goto :goto_0

    .line 2901
    :cond_0
    iget-object v1, v8, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v1, v12}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .local v1, "enclosingType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_1

    .line 2898
    .end local v1    # "enclosingType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_1
    :goto_0
    iget-object v1, v8, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v1, v12}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedTypeFromTypeTree(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 2906
    .restart local v1    # "enclosingType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_1
    nop

    .line 2907
    invoke-static/range {p1 .. p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljavax/lang/model/element/ExecutableElement;

    .line 2909
    .local v14, "compileTimeDeclaration":Ljavax/lang/model/element/ExecutableElement;
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v2, v3, :cond_2

    move-object v2, v1

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 2910
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->wasRaw()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2911
    sget-object v2, Lcom/sun/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->UNBOUND:Lcom/sun/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    if-ne v13, v2, :cond_2

    .line 2917
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 2918
    .local v2, "p1":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    nop

    .line 2920
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    .line 2921
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    iget-object v5, v8, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 2922
    invoke-virtual {v5}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getProcessingEnv()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v5

    .line 2919
    invoke-static {v3, v4, v5}, Lorg/checkerframework/javacutil/TypesUtils;->asSuper(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    .line 2923
    .local v3, "asSuper":Ljavax/lang/model/type/TypeMirror;
    if-eqz v3, :cond_2

    .line 2924
    iget-object v4, v8, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-static {v4, v2, v1}, Lorg/checkerframework/framework/util/AnnotatedTypes;->asSuper(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    move-object v15, v1

    goto :goto_2

    .line 2934
    .end local v2    # "p1":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v3    # "asSuper":Ljavax/lang/model/type/TypeMirror;
    :cond_2
    move-object v15, v1

    .end local v1    # "enclosingType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .local v15, "enclosingType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_2
    iget-object v1, v8, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 2935
    invoke-virtual {v1, v9, v14, v15}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->methodFromUse(Lcom/sun/source/tree/ExpressionTree;Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;

    move-result-object v1

    iget-object v7, v1, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;->executableType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 2939
    .local v7, "invocationType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    invoke-direct {v8, v9, v7, v15}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkMethodReferenceInference(Lcom/sun/source/tree/MemberReferenceTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 2942
    return v2

    .line 2947
    :cond_3
    invoke-virtual {v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getTypeVariables()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2948
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getTypeVariables()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2949
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getErased()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    move-result-object v0

    move-object v6, v0

    goto :goto_3

    .line 2953
    :cond_4
    move-object v6, v0

    .end local v0    # "functionType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .local v6, "functionType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    :goto_3
    iget-object v0, v8, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getQualifierPolymorphism()Lorg/checkerframework/framework/type/poly/QualifierPolymorphism;

    move-result-object v5

    .line 2954
    .local v5, "poly":Lorg/checkerframework/framework/type/poly/QualifierPolymorphism;
    invoke-interface {v5, v6, v7}, Lorg/checkerframework/framework/type/poly/QualifierPolymorphism;->resolve(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)V

    .line 2957
    invoke-interface {v14}, Ljavax/lang/model/element/ExecutableElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->CONSTRUCTOR:Ljavax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_6

    .line 2958
    invoke-virtual {v15}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_5

    .line 2960
    move-object v0, v15

    move-object/from16 v16, v0

    .local v0, "invocationReturnType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_4

    .line 2962
    .end local v0    # "invocationReturnType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_5
    iget-object v0, v8, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 2963
    invoke-virtual {v0, v9, v7}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getResultingTypeOfConstructorMemberReference(Lcom/sun/source/tree/MemberReferenceTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    move-object/from16 v16, v0

    .restart local v0    # "invocationReturnType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_4

    .line 2967
    .end local v0    # "invocationReturnType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_6
    invoke-virtual {v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    move-object/from16 v16, v0

    .line 2970
    .local v16, "invocationReturnType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_4
    invoke-virtual {v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 2971
    .local v0, "functionTypeReturnType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v3, Ljavax/lang/model/type/TypeKind;->VOID:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v3, :cond_7

    .line 2974
    move-object/from16 v0, v16

    move-object/from16 v17, v0

    goto :goto_5

    .line 2971
    :cond_7
    move-object/from16 v17, v0

    .line 2977
    .end local v0    # "functionTypeReturnType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .local v17, "functionTypeReturnType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_5
    invoke-virtual {v11}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_8

    .line 2979
    move-object/from16 v18, v11

    check-cast v18, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 2980
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v19, v5

    .end local v5    # "poly":Lorg/checkerframework/framework/type/poly/QualifierPolymorphism;
    .local v19, "poly":Lorg/checkerframework/framework/type/poly/QualifierPolymorphism;
    move-object v5, v6

    move-object/from16 v20, v6

    .end local v6    # "functionType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .local v20, "functionType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    move-object/from16 v6, v18

    move-object/from16 v18, v7

    .end local v7    # "invocationType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .local v18, "invocationType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    move-object/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->createOverrideChecker(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;

    move-result-object v0

    .line 2988
    .local v0, "overrideChecker":Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>.OverrideChecker;"
    invoke-virtual {v0}, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->checkOverride()Z

    move-result v1

    return v1

    .line 2992
    .end local v0    # "overrideChecker":Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>.OverrideChecker;"
    .end local v18    # "invocationType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .end local v19    # "poly":Lorg/checkerframework/framework/type/poly/QualifierPolymorphism;
    .end local v20    # "functionType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .restart local v5    # "poly":Lorg/checkerframework/framework/type/poly/QualifierPolymorphism;
    .restart local v6    # "functionType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .restart local v7    # "invocationType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    :cond_8
    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v18, v7

    .end local v5    # "poly":Lorg/checkerframework/framework/type/poly/QualifierPolymorphism;
    .end local v6    # "functionType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .end local v7    # "invocationType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .restart local v18    # "invocationType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .restart local v19    # "poly":Lorg/checkerframework/framework/type/poly/QualifierPolymorphism;
    .restart local v20    # "functionType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    iget-object v0, v8, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    iget-boolean v0, v0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->ignoreUninferredTypeArguments:Z

    xor-int/2addr v0, v2

    return v0
.end method

.method protected checkOverride(Lcom/sun/source/tree/MethodTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)Z
    .locals 7
    .param p1, "overriderTree"    # Lcom/sun/source/tree/MethodTree;
    .param p2, "overridingType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p3, "overridden"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p4, "overriddenType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 2821
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/MethodTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    move-result-object v0

    .line 2825
    .local v0, "overrider":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkOverride(Lcom/sun/source/tree/MethodTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)Z

    move-result v1

    return v1
.end method

.method protected checkOverride(Lcom/sun/source/tree/MethodTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)Z
    .locals 8
    .param p1, "overriderTree"    # Lcom/sun/source/tree/MethodTree;
    .param p2, "overrider"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p3, "overridingType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p4, "overridden"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p5, "overriddenType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 2851
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getTypeVariables()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getTypeVariables()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2852
    invoke-virtual {p4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getErased()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    move-result-object p4

    .line 2855
    :cond_0
    nop

    .line 2860
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    .line 2863
    invoke-virtual {p4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v7

    .line 2856
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->createOverrideChecker(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;

    move-result-object v0

    .line 2865
    .local v0, "overrideChecker":Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>.OverrideChecker;"
    invoke-virtual {v0}, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->checkOverride()Z

    move-result v1

    return v1
.end method

.method protected checkPostcondition(Lcom/sun/source/tree/MethodTree;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)V
    .locals 6
    .param p1, "methodTree"    # Lcom/sun/source/tree/MethodTree;
    .param p2, "annotation"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p3, "contractAnnotation"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p4, "expression"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 904
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getRegularExitStore(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/flow/CFAbstractStore;

    move-result-object v0

    .line 905
    .local v0, "exitStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<**>;"
    if-nez v0, :cond_0

    goto :goto_0

    .line 910
    :cond_0
    invoke-virtual {v0, p4}, Lorg/checkerframework/framework/flow/CFAbstractStore;->getValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v1

    .line 911
    .local v1, "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "Lorg/checkerframework/framework/flow/CFAbstractValue<*>;"
    const/4 v2, 0x0

    .line 912
    .local v2, "inferredAnno":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v1, :cond_1

    .line 913
    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v3}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v3

    .line 914
    .local v3, "hierarchy":Lorg/checkerframework/framework/type/QualifierHierarchy;
    invoke-virtual {v1}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getAnnotations()Ljava/util/Set;

    move-result-object v4

    .line 915
    .local v4, "annos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {v3, v4, p2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->findAnnotationInSameHierarchy(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 917
    .end local v3    # "hierarchy":Lorg/checkerframework/framework/type/QualifierHierarchy;
    .end local v4    # "annos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_1
    invoke-virtual {p0, p4, p2, v2, v0}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkContract(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/flow/CFAbstractStore;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 918
    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 921
    invoke-interface {p3}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v4

    invoke-interface {v4}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v4

    invoke-interface {v4}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v4

    .line 922
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 919
    const-string v5, "contracts.postcondition.not.satisfied"

    invoke-static {v5, v4}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v4

    .line 918
    invoke-virtual {v3, v4, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 926
    .end local v1    # "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "Lorg/checkerframework/framework/flow/CFAbstractValue<*>;"
    .end local v2    # "inferredAnno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_2
    :goto_0
    return-void
.end method

.method protected checkPreconditions(Lcom/sun/source/tree/MethodInvocationTree;Ljava/util/Set;)V
    .locals 16
    .param p1, "tree"    # Lcom/sun/source/tree/MethodInvocationTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/MethodInvocationTree;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/Contract$Precondition;",
            ">;)V"
        }
    .end annotation

    .line 1415
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    .local p2, "preconditions":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/Contract$Precondition;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1416
    return-void

    .line 1418
    :cond_0
    iget-object v0, v1, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 1419
    invoke-virtual {v0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getContext()Lorg/checkerframework/common/basetype/BaseTypeContext;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->buildContextForMethodUse(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/util/BaseContext;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    move-result-object v3

    .line 1421
    .local v3, "flowExprContext":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    if-nez v3, :cond_1

    .line 1422
    iget-object v0, v1, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v4, "flowexpr.parse.context.not.determined"

    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 1423
    return-void

    .line 1426
    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/util/Contract;

    .line 1427
    .local v4, "c":Lorg/checkerframework/framework/util/Contract;
    move-object v5, v4

    check-cast v5, Lorg/checkerframework/framework/util/Contract$Precondition;

    .line 1428
    .local v5, "p":Lorg/checkerframework/framework/util/Contract$Precondition;
    iget-object v6, v5, Lorg/checkerframework/framework/util/Contract$Precondition;->expression:Ljava/lang/String;

    .line 1429
    .local v6, "expression":Ljava/lang/String;
    iget-object v7, v5, Lorg/checkerframework/framework/util/Contract$Precondition;->annotation:Ljavax/lang/model/element/AnnotationMirror;

    .line 1431
    .local v7, "anno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v8

    invoke-direct {v1, v7, v3, v8}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->standardizeAnnotationFromContract(Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v7

    .line 1435
    nop

    .line 1437
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v8

    .line 1436
    const/4 v9, 0x0

    invoke-static {v6, v3, v8, v9}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->parse(Ljava/lang/String;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Z)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v8
    :try_end_0
    .catch Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1442
    .local v8, "expr":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    nop

    .line 1444
    iget-object v9, v1, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v9, v2}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getStoreBefore(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/flow/CFAbstractStore;

    move-result-object v9

    .line 1445
    .local v9, "store":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<**>;"
    const/4 v10, 0x0

    .line 1446
    .local v10, "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "Lorg/checkerframework/framework/flow/CFAbstractValue<*>;"
    invoke-static {v8}, Lorg/checkerframework/framework/flow/CFAbstractStore;->canInsertReceiver(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1447
    invoke-virtual {v9, v8}, Lorg/checkerframework/framework/flow/CFAbstractStore;->getValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v10

    .line 1449
    :cond_2
    const/4 v11, 0x0

    .line 1450
    .local v11, "inferredAnno":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v10, :cond_3

    .line 1451
    iget-object v12, v1, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v12}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v12

    .line 1452
    .local v12, "hierarchy":Lorg/checkerframework/framework/type/QualifierHierarchy;
    invoke-virtual {v10}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getAnnotations()Ljava/util/Set;

    move-result-object v13

    .line 1453
    .local v13, "annos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {v12, v13, v7}, Lorg/checkerframework/framework/type/QualifierHierarchy;->findAnnotationInSameHierarchy(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v11

    .line 1455
    .end local v12    # "hierarchy":Lorg/checkerframework/framework/type/QualifierHierarchy;
    .end local v13    # "annos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_3
    invoke-virtual {v1, v8, v7, v11, v9}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkContract(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/flow/CFAbstractStore;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 1457
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->containsUnknown()Z

    move-result v12

    if-eqz v12, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_5
    :goto_1
    move-object v12, v6

    .line 1458
    .local v12, "expressionString":Ljava/lang/String;
    :goto_2
    iget-object v13, v1, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 1461
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/MethodInvocationTree;->getMethodSelect()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    filled-new-array {v14, v12}, [Ljava/lang/Object;

    move-result-object v14

    .line 1459
    const-string v15, "contracts.precondition.not.satisfied"

    invoke-static {v15, v14}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v14

    .line 1458
    invoke-virtual {v13, v14, v2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 1465
    .end local v4    # "c":Lorg/checkerframework/framework/util/Contract;
    .end local v5    # "p":Lorg/checkerframework/framework/util/Contract$Precondition;
    .end local v6    # "expression":Ljava/lang/String;
    .end local v7    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v8    # "expr":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .end local v9    # "store":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<**>;"
    .end local v10    # "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "Lorg/checkerframework/framework/flow/CFAbstractValue<*>;"
    .end local v11    # "inferredAnno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v12    # "expressionString":Ljava/lang/String;
    :cond_6
    goto :goto_0

    .line 1438
    .restart local v4    # "c":Lorg/checkerframework/framework/util/Contract;
    .restart local v5    # "p":Lorg/checkerframework/framework/util/Contract$Precondition;
    .restart local v6    # "expression":Ljava/lang/String;
    .restart local v7    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    :catch_0
    move-exception v0

    .line 1440
    .local v0, "e":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;
    iget-object v8, v1, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {v0}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;->getResult()Lorg/checkerframework/framework/source/Result;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 1441
    return-void

    .line 1466
    .end local v0    # "e":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;
    .end local v4    # "c":Lorg/checkerframework/framework/util/Contract;
    .end local v5    # "p":Lorg/checkerframework/framework/util/Contract$Precondition;
    .end local v6    # "expression":Ljava/lang/String;
    .end local v7    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_7
    return-void
.end method

.method protected checkPurity(Lcom/sun/source/tree/MethodTree;)V
    .locals 13
    .param p1, "node"    # Lcom/sun/source/tree/MethodTree;

    .line 647
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-static {v0, p1}, Lorg/checkerframework/dataflow/util/PurityUtils;->hasPurityAnnotation(Lorg/checkerframework/javacutil/AnnotationProvider;Lcom/sun/source/tree/MethodTree;)Z

    move-result v0

    .line 648
    .local v0, "anyPurityAnnotation":Z
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v2, "suggestPureMethods"

    invoke-virtual {v1, v2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v1

    .line 649
    .local v1, "checkPurityAlways":Z
    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v3, "checkPurityAnnotations"

    invoke-virtual {v2, v3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v2

    .line 651
    .local v2, "checkPurityAnnotations":Z
    if-eqz v2, :cond_d

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 656
    :cond_0
    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-static {v3, p1}, Lorg/checkerframework/dataflow/util/PurityUtils;->getPurityKinds(Lorg/checkerframework/javacutil/AnnotationProvider;Lcom/sun/source/tree/MethodTree;)Ljava/util/List;

    move-result-object v3

    .line 658
    .local v3, "kinds":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/qual/Pure$Kind;>;"
    sget-object v4, Lorg/checkerframework/dataflow/qual/Pure$Kind;->DETERMINISTIC:Lorg/checkerframework/dataflow/qual/Pure$Kind;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 659
    .local v4, "isDeterministic":Z
    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 660
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isConstructor(Lcom/sun/source/tree/MethodTree;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 661
    iget-object v6, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v7, "purity.deterministic.constructor"

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v7

    invoke-virtual {v6, v7, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    goto :goto_0

    .line 662
    :cond_1
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getReturnType()Lcom/sun/source/tree/Tree;

    move-result-object v6

    invoke-static {v6}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v6

    invoke-interface {v6}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v6

    sget-object v7, Ljavax/lang/model/type/TypeKind;->VOID:Ljavax/lang/model/type/TypeKind;

    if-ne v6, v7, :cond_2

    .line 663
    iget-object v6, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v7, "purity.deterministic.void.method"

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v7

    invoke-virtual {v6, v7, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 668
    :cond_2
    :goto_0
    iget-object v6, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 670
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getBody()Lcom/sun/source/tree/BlockTree;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v6

    iget-object v7, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    iget-object v8, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 672
    const-string v9, "assumeSideEffectFree"

    invoke-virtual {v8, v9}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "assumePure"

    const/4 v10, 0x1

    if-nez v8, :cond_4

    iget-object v8, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 673
    invoke-virtual {v8, v9}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    :cond_3
    move v8, v5

    goto :goto_2

    :cond_4
    :goto_1
    move v8, v10

    :goto_2
    iget-object v11, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 674
    const-string v12, "assumeDeterministic"

    invoke-virtual {v11, v12}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    iget-object v11, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 675
    invoke-virtual {v11, v9}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_5
    move v5, v10

    .line 669
    :cond_6
    invoke-static {v6, v7, v8, v5}, Lorg/checkerframework/dataflow/util/PurityChecker;->checkPurity(Lcom/sun/source/util/TreePath;Lorg/checkerframework/javacutil/AnnotationProvider;ZZ)Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;

    move-result-object v5

    .line 676
    .local v5, "r":Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;
    invoke-virtual {v5, v3}, Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;->isPure(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 677
    invoke-virtual {p0, v5, p1, v3}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->reportPurityErrors(Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;Lcom/sun/source/tree/MethodTree;Ljava/util/Collection;)V

    .line 682
    :cond_7
    if-eqz v1, :cond_c

    .line 683
    new-instance v6, Ljava/util/HashSet;

    invoke-virtual {v5}, Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;->getTypes()Ljava/util/EnumSet;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 684
    .local v6, "additionalKinds":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/checkerframework/dataflow/qual/Pure$Kind;>;"
    invoke-interface {v6, v3}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 685
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isConstructor(Lcom/sun/source/tree/MethodTree;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 686
    sget-object v7, Lorg/checkerframework/dataflow/qual/Pure$Kind;->DETERMINISTIC:Lorg/checkerframework/dataflow/qual/Pure$Kind;

    invoke-interface {v6, v7}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 688
    :cond_8
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_c

    .line 689
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_9

    .line 690
    iget-object v7, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "purity.more.pure"

    invoke-static {v9, v8}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v8

    invoke-virtual {v7, v8, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    goto :goto_3

    .line 691
    :cond_9
    sget-object v7, Lorg/checkerframework/dataflow/qual/Pure$Kind;->SIDE_EFFECT_FREE:Lorg/checkerframework/dataflow/qual/Pure$Kind;

    invoke-interface {v6, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 692
    iget-object v7, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 693
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "purity.more.sideeffectfree"

    invoke-static {v9, v8}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v8

    .line 692
    invoke-virtual {v7, v8, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    goto :goto_3

    .line 694
    :cond_a
    sget-object v7, Lorg/checkerframework/dataflow/qual/Pure$Kind;->DETERMINISTIC:Lorg/checkerframework/dataflow/qual/Pure$Kind;

    invoke-interface {v6, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 695
    iget-object v7, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 696
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "purity.more.deterministic"

    invoke-static {v9, v8}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v8

    .line 695
    invoke-virtual {v7, v8, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    goto :goto_3

    .line 698
    :cond_b
    new-instance v7, Ljava/lang/AssertionError;

    const-string v8, "BaseTypeVisitor reached undesirable state"

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 702
    .end local v6    # "additionalKinds":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/checkerframework/dataflow/qual/Pure$Kind;>;"
    :cond_c
    :goto_3
    return-void

    .line 652
    .end local v3    # "kinds":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/qual/Pure$Kind;>;"
    .end local v4    # "isDeterministic":Z
    .end local v5    # "r":Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;
    :cond_d
    :goto_4
    return-void
.end method

.method protected checkSuperConstructorCall(Lcom/sun/source/tree/MethodInvocationTree;)V
    .locals 1
    .param p1, "superCall"    # Lcom/sun/source/tree/MethodInvocationTree;

    .line 1307
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    const-string v0, "super.invocation.invalid"

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkThisOrSuperConstructorCall(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/String;)V

    .line 1308
    return-void
.end method

.method protected checkThisConstructorCall(Lcom/sun/source/tree/MethodInvocationTree;)V
    .locals 1
    .param p1, "thisCall"    # Lcom/sun/source/tree/MethodInvocationTree;

    .line 1295
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    const-string v0, "this.invocation.invalid"

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkThisOrSuperConstructorCall(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/String;)V

    .line 1296
    return-void
.end method

.method protected checkThisOrSuperConstructorCall(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/String;)V
    .locals 11
    .param p1, "superCall"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p2, "errorKey"    # Ljava/lang/String;

    .line 1316
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v0

    .line 1317
    .local v0, "path":Lcom/sun/source/util/TreePath;
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingMethod(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/MethodTree;

    move-result-object v1

    .line 1318
    .local v1, "enclosingMethod":Lcom/sun/source/tree/MethodTree;
    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v2, p1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 1319
    .local v2, "superType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v3, v1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/MethodTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    move-result-object v3

    .line 1320
    .local v3, "constructorType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    iget-object v4, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 1321
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getTopAnnotations()Ljava/util/Set;

    move-result-object v4

    .line 1322
    .local v4, "topAnnotations":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/lang/model/element/AnnotationMirror;

    .line 1323
    .local v6, "topAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v2, v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v7

    .line 1324
    .local v7, "superTypeMirror":Ljavax/lang/model/element/AnnotationMirror;
    nop

    .line 1325
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v8

    invoke-virtual {v8, v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v8

    .line 1327
    .local v8, "constructorTypeMirror":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v9, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 1328
    invoke-virtual {v9}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v9

    .line 1329
    invoke-virtual {v9, v7, v8}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1330
    iget-object v9, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    filled-new-array {v8, p1, v7}, [Ljava/lang/Object;

    move-result-object v10

    .line 1331
    invoke-static {p2, v10}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v10

    .line 1330
    invoke-virtual {v9, v10, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 1334
    .end local v6    # "topAnno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v7    # "superTypeMirror":Ljavax/lang/model/element/AnnotationMirror;
    .end local v8    # "constructorTypeMirror":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_0

    .line 1335
    :cond_1
    return-void
.end method

.method protected checkThrownExpression(Lcom/sun/source/tree/ThrowTree;)V
    .locals 10
    .param p1, "node"    # Lcom/sun/source/tree/ThrowTree;

    .line 2124
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-interface {p1}, Lcom/sun/source/tree/ThrowTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 2125
    .local v0, "throwType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p0}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->getThrowUpperBoundAnnotations()Ljava/util/Set;

    move-result-object v1

    .line 2126
    .local v1, "required":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;"
    sget-object v2, Lorg/checkerframework/common/basetype/BaseTypeVisitor$2;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-string v3, "throw.type.invalid"

    packed-switch v2, :pswitch_data_0

    .line 2166
    new-instance v2, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected throw expression type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2147
    :pswitch_0
    move-object v2, v0

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;

    .line 2148
    .local v2, "unionType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;->getAnnotations()Ljava/util/Set;

    move-result-object v4

    .line 2149
    .local v4, "foundPrimary":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v5, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v5}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2150
    iget-object v5, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v6

    .line 2151
    invoke-static {v3, v6}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v6

    .line 2152
    invoke-interface {p1}, Lcom/sun/source/tree/ThrowTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v7

    .line 2150
    invoke-virtual {v5, v6, v7}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 2154
    :cond_0
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;->getAlternatives()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 2155
    .local v6, "altern":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v7, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 2156
    invoke-virtual {v7}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v7

    .line 2157
    invoke-virtual {v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2158
    iget-object v7, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 2160
    invoke-virtual {v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v8

    filled-new-array {v8, v1}, [Ljava/lang/Object;

    move-result-object v8

    .line 2159
    invoke-static {v3, v8}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v8

    .line 2161
    invoke-interface {p1}, Lcom/sun/source/tree/ThrowTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v9

    .line 2158
    invoke-virtual {v7, v8, v9}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 2163
    .end local v6    # "altern":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_1
    goto :goto_0

    .line 2164
    :cond_2
    goto :goto_1

    .line 2139
    .end local v2    # "unionType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .end local v4    # "foundPrimary":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    :pswitch_1
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotations()Ljava/util/Set;

    move-result-object v2

    .line 2140
    .local v2, "foundEffective":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v4, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v4}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2141
    iget-object v4, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v5

    .line 2142
    invoke-static {v3, v5}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v3

    .line 2143
    invoke-interface {p1}, Lcom/sun/source/tree/ThrowTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v5

    .line 2141
    invoke-virtual {v4, v3, v5}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    goto :goto_1

    .line 2129
    .end local v2    # "foundEffective":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    :pswitch_2
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v2

    .line 2130
    .local v2, "found":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v4, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v4}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2131
    iget-object v4, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v5

    .line 2132
    invoke-static {v3, v5}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v3

    .line 2133
    invoke-interface {p1}, Lcom/sun/source/tree/ThrowTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v5

    .line 2131
    invoke-virtual {v4, v3, v5}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 2168
    .end local v2    # "found":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected checkTypeArguments(Lcom/sun/source/tree/Tree;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .param p1, "toptree"    # Lcom/sun/source/tree/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/Tree;",
            "Ljava/util/List<",
            "+",
            "Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/sun/source/tree/Tree;",
            ">;)V"
        }
    .end annotation

    .line 2510
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    .local p2, "paramBounds":Ljava/util/List;, "Ljava/util/List<+Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;>;"
    .local p3, "typeargs":Ljava/util/List;, "Ljava/util/List<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .local p4, "typeargTrees":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2511
    return-void

    .line 2514
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 2520
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2521
    .local v0, "boundsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2523
    .local v1, "argIter":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2525
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;

    .line 2526
    .local v2, "bounds":Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 2528
    .local v3, "typeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->isIgnoredUninferredWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2529
    invoke-direct {p0, v3}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->isIgnoredUninferredWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2530
    goto :goto_0

    .line 2533
    :cond_2
    invoke-direct {p0, v3, v2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->shouldBeCaptureConverted(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2534
    goto :goto_0

    .line 2537
    :cond_3
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    .line 2538
    .local v4, "paramUpperBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v5

    sget-object v6, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-ne v5, v6, :cond_4

    .line 2539
    iget-object v5, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-object v6, v3

    check-cast v6, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 2540
    invoke-virtual {v5, v4, v6}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->widenToUpperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    .line 2544
    :cond_4
    const-string v5, "type.argument.type.incompatible"

    if-eqz p4, :cond_6

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_1

    .line 2552
    :cond_5
    nop

    .line 2555
    invoke-interface {p3, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/source/tree/Tree;

    .line 2552
    invoke-virtual {p0, v4, v3, v6, v5}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;Ljava/lang/String;)V

    goto :goto_2

    .line 2549
    :cond_6
    :goto_1
    invoke-virtual {p0, v4, v3, p1, v5}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;Ljava/lang/String;)V

    .line 2559
    :goto_2
    iget-object v6, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v6}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getTypeHierarchy()Lorg/checkerframework/framework/type/TypeHierarchy;

    move-result-object v6

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v7

    invoke-interface {v6, v7, v3}, Lorg/checkerframework/framework/type/TypeHierarchy;->isSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 2560
    invoke-static {v3, v2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;->of(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;)Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;

    move-result-object v6

    .line 2561
    .local v6, "fr":Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;
    if-eqz p4, :cond_8

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_3

    .line 2568
    :cond_7
    iget-object v7, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    iget-object v8, v6, Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;->found:Ljava/lang/String;

    iget-object v9, v6, Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;->required:Ljava/lang/String;

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    .line 2569
    invoke-static {v5, v8}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v5

    .line 2571
    invoke-interface {p3, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-interface {p4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 2568
    invoke-virtual {v7, v5, v8}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    goto :goto_4

    .line 2563
    :cond_8
    :goto_3
    iget-object v7, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    iget-object v8, v6, Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;->found:Ljava/lang/String;

    iget-object v9, v6, Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;->required:Ljava/lang/String;

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    .line 2564
    invoke-static {v5, v8}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v5

    .line 2563
    invoke-virtual {v7, v5, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 2574
    .end local v2    # "bounds":Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;
    .end local v3    # "typeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v4    # "paramUpperBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v6    # "fr":Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;
    :cond_9
    :goto_4
    goto/16 :goto_0

    .line 2575
    :cond_a
    return-void

    .line 2514
    .end local v0    # "boundsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;>;"
    .end local v1    # "argIter":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BaseTypeVisitor.checkTypeArguments: mismatch between type arguments: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and type parameter bounds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method protected checkTypecastRedundancy(Lcom/sun/source/tree/TypeCastTree;)V
    .locals 5
    .param p1, "typeCastTree"    # Lcom/sun/source/tree/TypeCastTree;

    .line 1851
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v1, "cast:redundant"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getLintOption(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1852
    return-void

    .line 1855
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 1856
    .local v0, "castType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-interface {p1}, Lcom/sun/source/tree/TypeCastTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 1858
    .local v1, "exprType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1859
    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v3, "cast.redundant"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 1861
    :cond_1
    return-void
.end method

.method protected checkTypecastSafety(Lcom/sun/source/tree/TypeCastTree;)V
    .locals 5
    .param p1, "typeCastTree"    # Lcom/sun/source/tree/TypeCastTree;

    .line 1869
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v1, "cast:unsafe"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getLintOption(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1870
    return-void

    .line 1872
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 1873
    .local v0, "castType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-interface {p1}, Lcom/sun/source/tree/TypeCastTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 1877
    .local v1, "exprType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->isTypeCastSafe(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1878
    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 1879
    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->toString(Z)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "cast.unsafe"

    invoke-static {v4, v2}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v2

    .line 1878
    invoke-virtual {v3, v2, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 1882
    :cond_1
    return-void
.end method

.method protected checkVarargs(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lcom/sun/source/tree/Tree;)V
    .locals 8
    .param p1, "invokedMethod"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p2, "tree"    # Lcom/sun/source/tree/Tree;

    .line 1350
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->isVarArgs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1351
    return-void

    .line 1354
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v0

    .line 1355
    .local v0, "formals":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1356
    .local v1, "numFormals":I
    add-int/lit8 v2, v1, -0x1

    .line 1357
    .local v2, "lastArgIndex":I
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    .line 1363
    .local v3, "lastParamAnnotatedType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    sget-object v4, Lorg/checkerframework/common/basetype/BaseTypeVisitor$2;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {p2}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1371
    new-instance v4, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected kind of tree: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1368
    :pswitch_0
    move-object v4, p2

    check-cast v4, Lcom/sun/source/tree/NewClassTree;

    invoke-interface {v4}, Lcom/sun/source/tree/NewClassTree;->getArguments()Ljava/util/List;

    move-result-object v4

    .line 1369
    .local v4, "args":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    goto :goto_0

    .line 1365
    .end local v4    # "args":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    :pswitch_1
    move-object v4, p2

    check-cast v4, Lcom/sun/source/tree/MethodInvocationTree;

    invoke-interface {v4}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v4

    .line 1366
    .restart local v4    # "args":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    nop

    .line 1373
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ne v1, v5, :cond_1

    .line 1374
    iget-object v5, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 1375
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/source/tree/Tree;

    invoke-virtual {v5, v6}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v5

    .line 1376
    .local v5, "lastArgType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v6

    sget-object v7, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v6, v7, :cond_1

    .line 1377
    invoke-static {v3}, Lorg/checkerframework/framework/util/AnnotatedTypes;->getArrayDepth(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;)I

    move-result v6

    move-object v7, v5

    check-cast v7, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    .line 1378
    invoke-static {v7}, Lorg/checkerframework/framework/util/AnnotatedTypes;->getArrayDepth(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;)I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 1379
    return-void

    .line 1383
    .end local v5    # "lastArgType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_1
    iget-object v5, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v5, p2}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedTypeVarargsArray(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v5

    .line 1387
    .local v5, "wrappedVarargsType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    if-nez v5, :cond_2

    .line 1388
    return-void

    .line 1396
    :cond_2
    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v6

    sget-object v7, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v6, v7, :cond_3

    .line 1397
    move-object v6, v5

    check-cast v6, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    .line 1398
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->setComponentType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 1401
    :cond_3
    const-string v6, "varargs.type.incompatible"

    invoke-virtual {p0, v3, v5, p2, v6}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;Ljava/lang/String;)V

    .line 1403
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected commonAssignmentCheck(Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)V
    .locals 4
    .param p1, "varTree"    # Lcom/sun/source/tree/Tree;
    .param p2, "valueExp"    # Lcom/sun/source/tree/ExpressionTree;
    .param p3, "errorKey"    # Ljava/lang/String;

    .line 2196
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedTypeLhs(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 2197
    .local v0, "var":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    if-eqz v0, :cond_1

    .line 2199
    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->validateType(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2200
    return-void

    .line 2203
    :cond_0
    invoke-virtual {p0, v0, p2, p3}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)V

    .line 2204
    return-void

    .line 2197
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no variable found for tree: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method protected commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)V
    .locals 5
    .param p1, "varType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "valueExp"    # Lcom/sun/source/tree/ExpressionTree;
    .param p3, "errorKey"    # Ljava/lang/String;

    .line 2219
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    invoke-virtual {p0, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->shouldSkipUses(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2220
    return-void

    .line 2222
    :cond_0
    invoke-interface {p2}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->MEMBER_REFERENCE:Lcom/sun/source/tree/Tree$Kind;

    if-eq v0, v1, :cond_6

    .line 2223
    invoke-interface {p2}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->LAMBDA_EXPRESSION:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 2228
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_3

    instance-of v0, p2, Lcom/sun/source/tree/NewArrayTree;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Lcom/sun/source/tree/NewArrayTree;

    .line 2230
    invoke-interface {v0}, Lcom/sun/source/tree/NewArrayTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v0

    if-nez v0, :cond_3

    .line 2231
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 2232
    .local v0, "compType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    move-object v1, p2

    check-cast v1, Lcom/sun/source/tree/NewArrayTree;

    .line 2233
    .local v1, "arrayTree":Lcom/sun/source/tree/NewArrayTree;
    invoke-interface {v1}, Lcom/sun/source/tree/NewArrayTree;->getInitializers()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2235
    invoke-interface {v1}, Lcom/sun/source/tree/NewArrayTree;->getInitializers()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkArrayInitialization(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List;)V

    goto :goto_0

    .line 2233
    :cond_2
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "array initializers are not expected to be null in: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 2237
    .end local v0    # "compType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v1    # "arrayTree":Lcom/sun/source/tree/NewArrayTree;
    :cond_3
    :goto_0
    invoke-virtual {p0, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->validateTypeOf(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2238
    return-void

    .line 2240
    :cond_4
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v0, p2}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 2241
    .local v0, "valueType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    if-eqz v0, :cond_5

    .line 2242
    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;Ljava/lang/String;)V

    .line 2243
    return-void

    .line 2241
    :cond_5
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "null type for expression: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 2226
    .end local v0    # "valueType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_6
    :goto_1
    return-void
.end method

.method protected commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;Ljava/lang/String;)V
    .locals 7
    .param p1, "varType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "valueType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "valueTree"    # Lcom/sun/source/tree/Tree;
    .param p4, "errorKey"    # Ljava/lang/String;

    .line 2320
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->commonAssignmentCheckStartDiagnostic(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;)V

    .line 2322
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getTypeHierarchy()Lorg/checkerframework/framework/type/TypeHierarchy;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lorg/checkerframework/framework/type/TypeHierarchy;->isSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    .line 2325
    .local v0, "success":Z
    if-eqz v0, :cond_1

    .line 2327
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getSupportedMonotonicTypeQualifiers()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 2328
    .local v2, "mono":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p2, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2329
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 2332
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 2333
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 2334
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 2330
    const-string v4, "monotonic.type.incompatible"

    invoke-static {v4, v3}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v3

    .line 2329
    invoke-virtual {v1, v3, p3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 2336
    return-void

    .line 2338
    .end local v2    # "mono":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :cond_0
    goto :goto_0

    .line 2341
    :cond_1
    const/4 v3, 0x0

    move-object v1, p0

    move v2, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->commonAssignmentCheckEndDiagnostic(ZLjava/lang/String;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;)V

    .line 2344
    if-nez v0, :cond_2

    .line 2345
    invoke-static {p2, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;->of(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;

    move-result-object v1

    .line 2346
    .local v1, "pair":Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;
    iget-object v2, v1, Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;->found:Ljava/lang/String;

    .line 2347
    .local v2, "valueTypeString":Ljava/lang/String;
    iget-object v3, v1, Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;->required:Ljava/lang/String;

    .line 2348
    .local v3, "varTypeString":Ljava/lang/String;
    iget-object v4, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {p4, v5}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v5

    invoke-virtual {v4, v5, p3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 2350
    .end local v1    # "pair":Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;
    .end local v2    # "valueTypeString":Ljava/lang/String;
    .end local v3    # "varTypeString":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method protected final commonAssignmentCheckEndDiagnostic(ZLjava/lang/String;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;)V
    .locals 6
    .param p1, "success"    # Z
    .param p2, "extraMessage"    # Ljava/lang/String;
    .param p3, "varType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p4, "valueType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p5, "valueTree"    # Lcom/sun/source/tree/Tree;

    .line 2286
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v1, "showchecks"

    invoke-virtual {v0, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2287
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->positions:Lcom/sun/source/util/SourcePositions;

    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->root:Lcom/sun/source/tree/CompilationUnitTree;

    invoke-interface {v0, v1, p5}, Lcom/sun/source/util/SourcePositions;->getStartPosition(Lcom/sun/source/tree/CompilationUnitTree;Lcom/sun/source/tree/Tree;)J

    move-result-wide v0

    .line 2288
    .local v0, "valuePos":J
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/Object;

    .line 2290
    if-eqz p1, :cond_0

    .line 2291
    const-string v4, "success: actual is subtype of expected"

    goto :goto_0

    .line 2292
    :cond_0
    const-string v4, "FAILURE: actual is not subtype of expected"

    :goto_0
    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 2293
    if-nez p2, :cond_1

    const-string v4, ""

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " because "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 2294
    iget-object v4, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->root:Lcom/sun/source/tree/CompilationUnitTree;

    invoke-interface {v4}, Lcom/sun/source/tree/CompilationUnitTree;->getLineMap()Lcom/sun/source/tree/LineMap;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->root:Lcom/sun/source/tree/CompilationUnitTree;

    invoke-interface {v4}, Lcom/sun/source/tree/CompilationUnitTree;->getLineMap()Lcom/sun/source/tree/LineMap;

    move-result-object v4

    invoke-interface {v4, v0, v1}, Lcom/sun/source/tree/LineMap;->getLineNumber(J)J

    move-result-wide v4

    goto :goto_2

    :cond_2
    const-wide/16 v4, -0x1

    :goto_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 2295
    invoke-interface {p5}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    const/4 v4, 0x4

    aput-object p5, v3, v4

    .line 2297
    invoke-virtual {p4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v3, v5

    .line 2298
    invoke-virtual {p4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    aput-object v4, v3, v5

    .line 2299
    invoke-virtual {p3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    const/4 v5, 0x7

    aput-object v4, v3, v5

    .line 2300
    invoke-virtual {p3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x8

    aput-object v4, v3, v5

    .line 2288
    const-string v4, " %s%s (line %3d): %s %s%n     actual: %s %s%n   expected: %s %s%n"

    invoke-virtual {v2, v4, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 2302
    .end local v0    # "valuePos":J
    :cond_3
    return-void
.end method

.method protected final commonAssignmentCheckStartDiagnostic(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;)V
    .locals 6
    .param p1, "varType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "valueType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "valueTree"    # Lcom/sun/source/tree/Tree;

    .line 2254
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v1, "showchecks"

    invoke-virtual {v0, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2255
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->positions:Lcom/sun/source/util/SourcePositions;

    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->root:Lcom/sun/source/tree/CompilationUnitTree;

    invoke-interface {v0, v1, p3}, Lcom/sun/source/util/SourcePositions;->getStartPosition(Lcom/sun/source/tree/CompilationUnitTree;Lcom/sun/source/tree/Tree;)J

    move-result-wide v0

    .line 2256
    .local v0, "valuePos":J
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/Object;

    .line 2258
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    const-string v5, "about to test whether actual is a subtype of expected"

    aput-object v5, v3, v4

    .line 2260
    iget-object v4, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->root:Lcom/sun/source/tree/CompilationUnitTree;

    invoke-interface {v4}, Lcom/sun/source/tree/CompilationUnitTree;->getLineMap()Lcom/sun/source/tree/LineMap;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->root:Lcom/sun/source/tree/CompilationUnitTree;

    invoke-interface {v4}, Lcom/sun/source/tree/CompilationUnitTree;->getLineMap()Lcom/sun/source/tree/LineMap;

    move-result-object v4

    invoke-interface {v4, v0, v1}, Lcom/sun/source/tree/LineMap;->getLineNumber(J)J

    move-result-wide v4

    goto :goto_0

    :cond_0
    const-wide/16 v4, -0x1

    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 2261
    invoke-interface {p3}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    const/4 v4, 0x4

    aput-object p3, v3, v4

    .line 2263
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v3, v5

    .line 2264
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    aput-object v4, v3, v5

    .line 2265
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    const/4 v5, 0x7

    aput-object v4, v3, v5

    .line 2266
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x8

    aput-object v4, v3, v5

    .line 2256
    const-string v4, "%s %s (line %3d): %s %s%n     actual: %s %s%n   expected: %s %s%n"

    invoke-virtual {v2, v4, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 2268
    .end local v0    # "valuePos":J
    :cond_1
    return-void
.end method

.method protected createOverrideChecker(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;
    .locals 10
    .param p1, "overriderTree"    # Lcom/sun/source/tree/Tree;
    .param p2, "overrider"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p3, "overridingType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p4, "overridingReturnType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p5, "overridden"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p6, "overriddenType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p7, "overriddenReturnType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/Tree;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ")",
            "Lorg/checkerframework/common/basetype/BaseTypeVisitor<",
            "TFactory;>.OverrideChecker;"
        }
    .end annotation

    .line 2790
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    new-instance v9, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;-><init>(Lorg/checkerframework/common/basetype/BaseTypeVisitor;Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    return-object v9
.end method

.method protected createTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TFactory;"
        }
    .end annotation

    .line 251
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 252
    .local v0, "checkerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const-class v1, Lorg/checkerframework/common/basetype/BaseTypeChecker;

    if-eq v0, v1, :cond_1

    .line 253
    nop

    .line 255
    const-string v1, "AnnotatedTypeFactory"

    invoke-static {v0, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getRelatedClassName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lorg/checkerframework/common/basetype/BaseTypeChecker;

    aput-object v4, v2, v3

    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 254
    invoke-static {v1, v2, v3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->invokeConstructorFor(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 259
    .local v1, "result":Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    if-eqz v1, :cond_0

    .line 260
    move-object v2, v1

    check-cast v2, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    return-object v2

    .line 262
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 263
    .end local v1    # "result":Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    goto :goto_0

    .line 265
    :cond_1
    :try_start_0
    new-instance v1, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;

    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-direct {v1, v2}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 266
    :catchall_0
    move-exception v1

    .line 267
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 269
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " when invoking BaseAnnotatedTypeFactory for checker "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 271
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected createTypeValidator()Lorg/checkerframework/common/basetype/TypeValidator;
    .locals 3

    .line 3852
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    new-instance v0, Lorg/checkerframework/common/basetype/BaseTypeValidator;

    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-direct {v0, v1, p0, v2}, Lorg/checkerframework/common/basetype/BaseTypeValidator;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/common/basetype/BaseTypeVisitor;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    return-object v0
.end method

.method protected enclosingMemberSelect()Lcom/sun/source/tree/MemberSelectTree;
    .locals 4

    .line 3674
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    invoke-virtual {p0}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    .line 3675
    .local v0, "path":Lcom/sun/source/util/TreePath;
    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    invoke-interface {v1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->IDENTIFIER:Lcom/sun/source/tree/Tree$Kind;

    if-ne v1, v2, :cond_1

    .line 3677
    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    invoke-interface {v1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->MEMBER_SELECT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v1, v2, :cond_0

    .line 3678
    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/MemberSelectTree;

    return-object v1

    .line 3680
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 3675
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected identifier, found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3676
    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method protected enclosingStatement(Lcom/sun/source/tree/Tree;)Lcom/sun/source/tree/Tree;
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 3685
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    invoke-virtual {p0}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    .line 3686
    .local v0, "path":Lcom/sun/source/util/TreePath;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 3687
    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    goto :goto_0

    .line 3690
    :cond_0
    if-eqz v0, :cond_1

    .line 3691
    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    return-object v1

    .line 3693
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method protected getExceptionParameterLowerBoundAnnotations()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 2104
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getTopAnnotations()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected getThrowUpperBoundAnnotations()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 2182
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    invoke-virtual {p0}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->getExceptionParameterLowerBoundAnnotations()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TFactory;"
        }
    .end annotation

    .line 277
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    return-object v0
.end method

.method protected isAccessAllowed(Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/ExpressionTree;)Z
    .locals 7
    .param p1, "field"    # Ljavax/lang/model/element/Element;
    .param p2, "receiver"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "accessTree"    # Lcom/sun/source/tree/ExpressionTree;

    .line 3729
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    const-class v1, Lorg/checkerframework/framework/qual/Unused;

    invoke-virtual {v0, p1, v1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 3730
    .local v0, "unused":Ljavax/lang/model/element/AnnotationMirror;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3731
    return v1

    .line 3734
    :cond_0
    const-string v2, "when"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueClassName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Z)Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3735
    .local v2, "when":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v4

    invoke-static {v4, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->containsSameByName(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3736
    return v1

    .line 3739
    :cond_1
    invoke-virtual {p0, p3}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->enclosingStatement(Lcom/sun/source/tree/Tree;)Lcom/sun/source/tree/Tree;

    move-result-object v4

    .line 3742
    .local v4, "tree":Lcom/sun/source/tree/Tree;
    if-eqz v4, :cond_2

    .line 3743
    invoke-interface {v4}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v5

    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v5, v6, :cond_2

    move-object v5, v4

    check-cast v5, Lcom/sun/source/tree/AssignmentTree;

    .line 3744
    invoke-interface {v5}, Lcom/sun/source/tree/AssignmentTree;->getVariable()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v5

    if-ne v5, p3, :cond_2

    move-object v5, v4

    check-cast v5, Lcom/sun/source/tree/AssignmentTree;

    .line 3745
    invoke-interface {v5}, Lcom/sun/source/tree/AssignmentTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v5

    invoke-interface {v5}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v5

    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->NULL_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    if-ne v5, v6, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    .line 3742
    :goto_0
    return v1
.end method

.method protected isTypeCastSafe(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 10
    .param p1, "castType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "exprType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1895
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v0

    .line 1897
    .local v0, "qualifierHierarchy":Lorg/checkerframework/framework/type/QualifierHierarchy;
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    .line 1898
    .local v1, "castTypeKind":Ljavax/lang/model/type/TypeKind;
    sget-object v2, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 1901
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 1902
    .local v2, "castDeclared":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    iget-object v4, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 1903
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getTypeDeclarationBounds(Ljavax/lang/model/type/TypeMirror;)Ljava/util/Set;

    move-result-object v4

    .line 1905
    .local v4, "bounds":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getAnnotations()Ljava/util/Set;

    move-result-object v5

    invoke-static {v5, v4}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1906
    return v3

    .line 1910
    .end local v2    # "castDeclared":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v4    # "bounds":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v4, "checkCastElementType"

    invoke-virtual {v2, v4}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1912
    sget-object v2, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_1

    .line 1913
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .local v2, "newCastType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 1915
    .end local v2    # "newCastType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_1
    move-object v2, p1

    .line 1918
    .restart local v2    # "newCastType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_0
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v4, v5, :cond_2

    .line 1919
    move-object v4, p2

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    .local v4, "newExprType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_1

    .line 1921
    .end local v4    # "newExprType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_2
    move-object v4, p2

    .line 1924
    .restart local v4    # "newExprType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_1
    iget-object v5, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v5}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getTypeHierarchy()Lorg/checkerframework/framework/type/TypeHierarchy;

    move-result-object v5

    invoke-interface {v5, v4, v2}, Lorg/checkerframework/framework/type/TypeHierarchy;->isSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_3

    .line 1925
    return v6

    .line 1927
    :cond_3
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v5

    sget-object v7, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v5, v7, :cond_4

    .line 1928
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v5

    sget-object v7, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-eq v5, v7, :cond_4

    .line 1931
    return v6

    .line 1932
    :cond_4
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v5

    sget-object v7, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v5, v7, :cond_6

    .line 1933
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v5

    sget-object v7, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v5, v7, :cond_6

    .line 1934
    move-object v3, v2

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 1935
    .local v3, "castSize":I
    move-object v5, v4

    check-cast v5, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 1937
    .local v5, "exprSize":I
    if-eq v3, v5, :cond_5

    .line 1942
    return v6

    .line 1937
    .end local v3    # "castSize":I
    .end local v5    # "exprSize":I
    :cond_5
    goto :goto_3

    .line 1944
    :cond_6
    sget-object v5, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v5, :cond_8

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v5

    sget-object v7, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v5, v7, :cond_8

    .line 1947
    nop

    .line 1948
    invoke-static {v0, p1}, Lorg/checkerframework/framework/util/AnnotatedTypes;->findEffectiveLowerBoundAnnotations(Lorg/checkerframework/framework/type/QualifierHierarchy;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/util/Set;

    move-result-object v5

    .line 1950
    .local v5, "lowerBoundAnnotationsCast":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    nop

    .line 1951
    invoke-static {v0, p2}, Lorg/checkerframework/framework/util/AnnotatedTypes;->findEffectiveLowerBoundAnnotations(Lorg/checkerframework/framework/type/QualifierHierarchy;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/util/Set;

    move-result-object v7

    .line 1953
    .local v7, "lowerBoundAnnotationsExpr":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {v0, v7, v5}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1956
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotations()Ljava/util/Set;

    move-result-object v8

    .line 1957
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotations()Ljava/util/Set;

    move-result-object v9

    .line 1955
    invoke-virtual {v0, v8, v9}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_2

    :cond_7
    move v3, v6

    .line 1953
    :goto_2
    return v3

    .line 1944
    .end local v5    # "lowerBoundAnnotationsCast":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    .end local v7    # "lowerBoundAnnotationsExpr":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_8
    :goto_3
    nop

    .line 1960
    sget-object v3, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v3, :cond_9

    .line 1963
    nop

    .line 1964
    invoke-static {v0, p1}, Lorg/checkerframework/framework/util/AnnotatedTypes;->findEffectiveLowerBoundAnnotations(Lorg/checkerframework/framework/type/QualifierHierarchy;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/util/Set;

    move-result-object v3

    .local v3, "castAnnos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    goto :goto_4

    .line 1967
    .end local v3    # "castAnnos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_9
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v3

    .line 1970
    .restart local v3    # "castAnnos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    :goto_4
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotations()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v0, v5, v3}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v5

    return v5

    .line 1973
    .end local v2    # "newCastType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v3    # "castAnnos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    .end local v4    # "newExprType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_a
    nop

    .line 1974
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotations()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotations()Ljava/util/Set;

    move-result-object v3

    .line 1973
    invoke-virtual {v0, v2, v3}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v2

    return v2
.end method

.method public isValidUse(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lcom/sun/source/tree/Tree;)Z
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p2, "tree"    # Lcom/sun/source/tree/Tree;

    .line 3795
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 3796
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getUnderlyingType()Ljavax/lang/model/type/ArrayType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getTypeDeclarationBounds(Ljavax/lang/model/type/TypeMirror;)Ljava/util/Set;

    move-result-object v0

    .line 3797
    .local v0, "bounds":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getAnnotations()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v1

    return v1
.end method

.method public isValidUse(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lcom/sun/source/tree/Tree;)Z
    .locals 3
    .param p1, "declarationType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "useType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p3, "tree"    # Lcom/sun/source/tree/Tree;

    .line 3767
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 3768
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getTypeHierarchy()Lorg/checkerframework/framework/type/TypeHierarchy;

    move-result-object v0

    .line 3769
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getErased()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getErased()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/checkerframework/framework/type/TypeHierarchy;->isSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    .line 3767
    return v0
.end method

.method public isValidUse(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lcom/sun/source/tree/Tree;)Z
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p2, "tree"    # Lcom/sun/source/tree/Tree;

    .line 3780
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 3781
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;->getUnderlyingType()Ljavax/lang/model/type/PrimitiveType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getTypeDeclarationBounds(Ljavax/lang/model/type/TypeMirror;)Ljava/util/Set;

    move-result-object v0

    .line 3782
    .local v0, "bounds":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;->getAnnotations()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v1

    return v1
.end method

.method public processClassTree(Lcom/sun/source/tree/ClassTree;)V
    .locals 5
    .param p1, "classTree"    # Lcom/sun/source/tree/ClassTree;

    .line 353
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkFieldInvariantDeclarations(Lcom/sun/source/tree/ClassTree;)V

    .line 354
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->hasExplicitConstructor(Lcom/sun/source/tree/ClassTree;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    invoke-virtual {p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkDefaultConstructor(Lcom/sun/source/tree/ClassTree;)V

    .line 358
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/ClassTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    .line 359
    .local v0, "classType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getDependentTypesHelper()Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 360
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getDependentTypesHelper()Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->checkClass(Lcom/sun/source/tree/ClassTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)V

    .line 362
    :cond_1
    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->validateType(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    .line 364
    invoke-interface {p1}, Lcom/sun/source/tree/ClassTree;->getExtendsClause()Lcom/sun/source/tree/Tree;

    move-result-object v1

    .line 365
    .local v1, "ext":Lcom/sun/source/tree/Tree;
    if-eqz v1, :cond_2

    .line 366
    invoke-virtual {p0, v1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->validateTypeOf(Lcom/sun/source/tree/Tree;)Z

    .line 369
    :cond_2
    invoke-interface {p1}, Lcom/sun/source/tree/ClassTree;->getImplementsClause()Ljava/util/List;

    move-result-object v2

    .line 370
    .local v2, "impls":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    if-eqz v2, :cond_3

    .line 371
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/source/tree/Tree;

    .line 372
    .local v4, "im":Lcom/sun/source/tree/Tree;
    invoke-virtual {p0, v4}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->validateTypeOf(Lcom/sun/source/tree/Tree;)Z

    .line 373
    .end local v4    # "im":Lcom/sun/source/tree/Tree;
    goto :goto_0

    .line 376
    :cond_3
    invoke-virtual {p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkExtendsImplements(Lcom/sun/source/tree/ClassTree;)V

    .line 378
    const/4 v3, 0x0

    invoke-super {p0, p1, v3}, Lorg/checkerframework/framework/source/SourceVisitor;->visitClass(Lcom/sun/source/tree/ClassTree;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    return-void
.end method

.method protected reportPurityErrors(Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;Lcom/sun/source/tree/MethodTree;Ljava/util/Collection;)V
    .locals 5
    .param p1, "result"    # Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;
    .param p2, "node"    # Lcom/sun/source/tree/MethodTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;",
            "Lcom/sun/source/tree/MethodTree;",
            "Ljava/util/Collection<",
            "Lorg/checkerframework/dataflow/qual/Pure$Kind;",
            ">;)V"
        }
    .end annotation

    .line 733
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    .local p3, "expectedTypes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/checkerframework/dataflow/qual/Pure$Kind;>;"
    invoke-virtual {p1, p3}, Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;->isPure(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 734
    invoke-static {p3}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    .line 735
    .local v0, "t":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/checkerframework/dataflow/qual/Pure$Kind;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;->getTypes()Ljava/util/EnumSet;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 736
    sget-object v1, Lorg/checkerframework/dataflow/qual/Pure$Kind;->DETERMINISTIC:Lorg/checkerframework/dataflow/qual/Pure$Kind;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/checkerframework/dataflow/qual/Pure$Kind;->SIDE_EFFECT_FREE:Lorg/checkerframework/dataflow/qual/Pure$Kind;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 737
    :cond_0
    const-string v1, "purity.not.deterministic.not.sideeffectfree."

    .line 738
    .local v1, "msgPrefix":Ljava/lang/String;
    sget-object v2, Lorg/checkerframework/dataflow/qual/Pure$Kind;->SIDE_EFFECT_FREE:Lorg/checkerframework/dataflow/qual/Pure$Kind;

    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 739
    const-string v1, "purity.not.deterministic."

    goto :goto_0

    .line 740
    :cond_1
    sget-object v2, Lorg/checkerframework/dataflow/qual/Pure$Kind;->DETERMINISTIC:Lorg/checkerframework/dataflow/qual/Pure$Kind;

    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 741
    const-string v1, "purity.not.sideeffectfree."

    .line 743
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;->getNotBothReasons()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/javacutil/Pair;

    .line 744
    .local v3, "r":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/Tree;Ljava/lang/String;>;"
    invoke-direct {p0, v1, v3}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->reportPurityError(Ljava/lang/String;Lorg/checkerframework/javacutil/Pair;)V

    .line 745
    .end local v3    # "r":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/Tree;Ljava/lang/String;>;"
    goto :goto_1

    .line 746
    :cond_3
    sget-object v2, Lorg/checkerframework/dataflow/qual/Pure$Kind;->SIDE_EFFECT_FREE:Lorg/checkerframework/dataflow/qual/Pure$Kind;

    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 747
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;->getNotSEFreeReasons()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/javacutil/Pair;

    .line 748
    .restart local v3    # "r":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/Tree;Ljava/lang/String;>;"
    const-string v4, "purity.not.sideeffectfree."

    invoke-direct {p0, v4, v3}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->reportPurityError(Ljava/lang/String;Lorg/checkerframework/javacutil/Pair;)V

    .line 749
    .end local v3    # "r":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/Tree;Ljava/lang/String;>;"
    goto :goto_2

    .line 751
    :cond_4
    sget-object v2, Lorg/checkerframework/dataflow/qual/Pure$Kind;->DETERMINISTIC:Lorg/checkerframework/dataflow/qual/Pure$Kind;

    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 752
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;->getNotDetReasons()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/javacutil/Pair;

    .line 753
    .restart local v3    # "r":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/Tree;Ljava/lang/String;>;"
    const-string v4, "purity.not.deterministic."

    invoke-direct {p0, v4, v3}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->reportPurityError(Ljava/lang/String;Lorg/checkerframework/javacutil/Pair;)V

    .line 754
    .end local v3    # "r":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/Tree;Ljava/lang/String;>;"
    goto :goto_3

    .line 757
    .end local v1    # "msgPrefix":Ljava/lang/String;
    :cond_5
    return-void

    .line 733
    .end local v0    # "t":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/checkerframework/dataflow/qual/Pure$Kind;>;"
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 166
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 292
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    new-instance v1, Lcom/sun/source/util/TreePath;

    invoke-virtual {p0}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/sun/source/util/TreePath;-><init>(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)V

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/VisitorState;->setPath(Lcom/sun/source/util/TreePath;)V

    .line 295
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public setRoot(Lcom/sun/source/tree/CompilationUnitTree;)V
    .locals 1
    .param p1, "root"    # Lcom/sun/source/tree/CompilationUnitTree;

    .line 286
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->setRoot(Lcom/sun/source/tree/CompilationUnitTree;)V

    .line 287
    invoke-super {p0, p1}, Lorg/checkerframework/framework/source/SourceVisitor;->setRoot(Lcom/sun/source/tree/CompilationUnitTree;)V

    .line 288
    return-void
.end method

.method protected final shouldSkipUses(Lcom/sun/source/tree/ExpressionTree;)Z
    .locals 2
    .param p1, "exprTree"    # Lcom/sun/source/tree/ExpressionTree;

    .line 3872
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 3873
    .local v0, "elm":Ljavax/lang/model/element/Element;
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {v1, v0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->shouldSkipUses(Ljavax/lang/model/element/Element;)Z

    move-result v1

    return v1
.end method

.method protected skipReceiverSubtypeCheck(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p2, "methodDefinitionReceiver"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "methodCallReceiver"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 2610
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected testTypevarContainment(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 6
    .param p1, "inner"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "outer"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 2760
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_1

    .line 2762
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 2763
    .local v0, "innerAtv":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    move-object v1, p2

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 2765
    .local v1, "outerAtv":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->elements:Ljavax/lang/model/util/Elements;

    invoke-static {v3, v0, v1}, Lorg/checkerframework/framework/util/AnnotatedTypes;->areCorrespondingTypeVariables(Ljavax/lang/model/util/Elements;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2766
    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v3}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getTypeHierarchy()Lorg/checkerframework/framework/type/TypeHierarchy;

    move-result-object v3

    .line 2767
    .local v3, "typeHierarchy":Lorg/checkerframework/framework/type/TypeHierarchy;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/checkerframework/framework/type/TypeHierarchy;->isSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2769
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v5

    .line 2768
    invoke-interface {v3, v4, v5}, Lorg/checkerframework/framework/type/TypeHierarchy;->isSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 2767
    :goto_0
    return v2

    .line 2773
    .end local v0    # "innerAtv":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .end local v1    # "outerAtv":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .end local v3    # "typeHierarchy":Lorg/checkerframework/framework/type/TypeHierarchy;
    :cond_1
    return v2
.end method

.method protected typeCheckVectorCopyIntoArgument(Lcom/sun/source/tree/MethodInvocationTree;Ljava/util/List;)V
    .locals 10
    .param p1, "node"    # Lcom/sun/source/tree/MethodInvocationTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/MethodInvocationTree;",
            "Ljava/util/List<",
            "+",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)V"
        }
    .end annotation

    .line 1504
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    .local p2, "params":Ljava/util/List;, "Ljava/util/List<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1506
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 1509
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/Tree;

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 1510
    .local v0, "passed":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    .line 1512
    .local v1, "passedAsArray":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v3, p1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getReceiverType(Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    .line 1513
    .local v3, "receiver":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v4, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    iget-object v5, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->vectorType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 1514
    invoke-static {v4, v3, v5}, Lorg/checkerframework/framework/util/AnnotatedTypes;->asSuper(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 1515
    .local v4, "receiverAsVector":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1516
    return-void

    .line 1519
    :cond_0
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v5

    .line 1520
    .local v5, "argComponent":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1521
    .local v6, "vectorTypeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/source/tree/Tree;

    .line 1522
    .local v2, "errorLocation":Lcom/sun/source/tree/Tree;
    nop

    .line 1523
    invoke-virtual {v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v7

    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v8

    iget-object v9, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->types:Ljavax/lang/model/util/Types;

    .line 1522
    invoke-static {v7, v8, v9}, Lorg/checkerframework/javacutil/TypesUtils;->isErasedSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/util/Types;)Z

    move-result v7

    const-string v8, "vector.copyinto.type.incompatible"

    if-eqz v7, :cond_1

    .line 1524
    invoke-virtual {p0, v5, v6, v2, v8}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;Ljava/lang/String;)V

    goto :goto_0

    .line 1530
    :cond_1
    iget-object v7, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    filled-new-array {v6, v5}, [Ljava/lang/Object;

    move-result-object v9

    .line 1531
    invoke-static {v8, v9}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v8

    .line 1530
    invoke-virtual {v7, v8, v2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 1535
    :goto_0
    return-void

    .line 1506
    .end local v0    # "passed":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v1    # "passedAsArray":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .end local v2    # "errorLocation":Lcom/sun/source/tree/Tree;
    .end local v3    # "receiver":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v4    # "receiverAsVector":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v5    # "argComponent":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v6    # "vectorTypeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid no. of arguments in method invocation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1504
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid no. of parameters "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " found for method invocation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method protected validateType(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 3845
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->typeValidator:Lorg/checkerframework/common/basetype/TypeValidator;

    invoke-interface {v0, p2, p1}, Lorg/checkerframework/common/basetype/TypeValidator;->isValid(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;)Z

    move-result v0

    return v0
.end method

.method public validateTypeOf(Lcom/sun/source/tree/Tree;)Z
    .locals 3
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 3810
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    sget-object v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$2;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3831
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .local v0, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 3822
    .end local v0    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :pswitch_0
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-object v1, p1

    check-cast v1, Lcom/sun/source/tree/MethodTree;

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getMethodReturnType(Lcom/sun/source/tree/MethodTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 3823
    .restart local v0    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->VOID:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_1

    .line 3827
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 3819
    .end local v0    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :pswitch_1
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedTypeFromTypeTree(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 3820
    .restart local v0    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    nop

    .line 3833
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->validateType(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic visitAnnotation(Lcom/sun/source/tree/AnnotationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 166
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitAnnotation(Lcom/sun/source/tree/AnnotationTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitAnnotation(Lcom/sun/source/tree/AnnotationTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 17
    .param p1, "node"    # Lcom/sun/source/tree/AnnotationTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 1678
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/AnnotationTree;->getArguments()Ljava/util/List;

    move-result-object v3

    .line 1679
    .local v3, "args":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 1681
    return-object v4

    .line 1684
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/AnnotationTree;->getAnnotationType()Lcom/sun/source/tree/Tree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->symbol(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljavax/lang/model/element/TypeElement;

    .line 1686
    .local v5, "anno":Ljavax/lang/model/element/TypeElement;
    invoke-interface {v5}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v6

    .line 1687
    .local v6, "annoName":Ljavax/lang/model/element/Name;
    const-class v0, Lorg/checkerframework/framework/qual/DefaultQualifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    const-class v0, Ljava/lang/SuppressWarnings;

    .line 1688
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    .line 1694
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v7, v0

    .line 1695
    .local v7, "annoTypes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-interface {v5}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljavax/lang/model/util/ElementFilter;->methodsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/lang/model/element/Element;

    .line 1696
    .local v8, "encl":Ljavax/lang/model/element/Element;
    iget-object v9, v1, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 1697
    invoke-virtual {v9, v8}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v9

    check-cast v9, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 1698
    .local v9, "exeatm":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    invoke-virtual {v9}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v10

    .line 1699
    .local v10, "retty":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {v8}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1700
    .end local v8    # "encl":Ljavax/lang/model/element/Element;
    .end local v9    # "exeatm":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .end local v10    # "retty":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 1702
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/source/tree/ExpressionTree;

    .line 1703
    .local v8, "arg":Lcom/sun/source/tree/ExpressionTree;
    instance-of v9, v8, Lcom/sun/source/tree/AssignmentTree;

    if-nez v9, :cond_3

    .line 1705
    goto :goto_1

    .line 1708
    :cond_3
    move-object v9, v8

    check-cast v9, Lcom/sun/source/tree/AssignmentTree;

    .line 1711
    .local v9, "at":Lcom/sun/source/tree/AssignmentTree;
    invoke-interface {v9}, Lcom/sun/source/tree/AssignmentTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v10

    invoke-interface {v10}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v10

    sget-object v11, Lcom/sun/source/tree/Tree$Kind;->ANNOTATION:Lcom/sun/source/tree/Tree$Kind;

    if-ne v10, v11, :cond_4

    .line 1712
    invoke-interface {v9}, Lcom/sun/source/tree/AssignmentTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v10

    check-cast v10, Lcom/sun/source/tree/AnnotationTree;

    invoke-virtual {v1, v10, v2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitAnnotation(Lcom/sun/source/tree/AnnotationTree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 1713
    goto :goto_1

    .line 1715
    :cond_4
    invoke-interface {v9}, Lcom/sun/source/tree/AssignmentTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v10

    invoke-interface {v10}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v10

    sget-object v11, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    if-ne v10, v11, :cond_7

    .line 1716
    invoke-interface {v9}, Lcom/sun/source/tree/AssignmentTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v10

    check-cast v10, Lcom/sun/source/tree/NewArrayTree;

    .line 1717
    .local v10, "nat":Lcom/sun/source/tree/NewArrayTree;
    const/4 v11, 0x0

    .line 1718
    .local v11, "isAnno":Z
    invoke-interface {v10}, Lcom/sun/source/tree/NewArrayTree;->getInitializers()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sun/source/tree/ExpressionTree;

    .line 1719
    .local v13, "init":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {v13}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v14

    sget-object v15, Lcom/sun/source/tree/Tree$Kind;->ANNOTATION:Lcom/sun/source/tree/Tree$Kind;

    if-ne v14, v15, :cond_5

    .line 1720
    move-object v14, v13

    check-cast v14, Lcom/sun/source/tree/AnnotationTree;

    invoke-virtual {v1, v14, v2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitAnnotation(Lcom/sun/source/tree/AnnotationTree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 1721
    const/4 v11, 0x1

    .line 1723
    .end local v13    # "init":Lcom/sun/source/tree/ExpressionTree;
    :cond_5
    goto :goto_2

    .line 1724
    :cond_6
    if-eqz v11, :cond_7

    .line 1725
    goto :goto_1

    .line 1729
    .end local v10    # "nat":Lcom/sun/source/tree/NewArrayTree;
    .end local v11    # "isAnno":Z
    :cond_7
    invoke-interface {v9}, Lcom/sun/source/tree/AssignmentTree;->getVariable()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1730
    .local v10, "expected":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v11, v1, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v11}, Lorg/checkerframework/framework/type/VisitorState;->getAssignmentContext()Lorg/checkerframework/javacutil/Pair;

    move-result-object v11

    .line 1734
    .local v11, "preAssCtxt":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-interface {v9}, Lcom/sun/source/tree/AssignmentTree;->getVariable()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v12

    .line 1735
    .local v12, "var":Lcom/sun/source/tree/ExpressionTree;
    instance-of v13, v12, Lcom/sun/source/tree/IdentifierTree;

    if-eqz v13, :cond_b

    .line 1737
    iget-object v13, v1, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v13, v12}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v13

    .line 1738
    .local v13, "meth":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    instance-of v14, v13, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    if-eqz v14, :cond_a

    .line 1740
    move-object v14, v13

    check-cast v14, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    invoke-virtual {v14}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v14

    .line 1741
    .local v14, "newctx":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v15, v1, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    move-object/from16 v16, v4

    check-cast v16, Lcom/sun/source/tree/Tree;

    move-object/from16 v16, v0

    invoke-static {v4, v14}, Lorg/checkerframework/javacutil/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v0

    invoke-virtual {v15, v0}, Lorg/checkerframework/framework/type/VisitorState;->setAssignmentContext(Lorg/checkerframework/javacutil/Pair;)V

    .line 1745
    .end local v12    # "var":Lcom/sun/source/tree/ExpressionTree;
    .end local v13    # "meth":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v14    # "newctx":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :try_start_0
    iget-object v0, v1, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-interface {v9}, Lcom/sun/source/tree/AssignmentTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v12

    invoke-virtual {v0, v12}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 1746
    .local v0, "actual":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v10}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v12

    sget-object v13, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v14, "annotation.type.incompatible"

    if-eq v12, v13, :cond_8

    .line 1748
    nop

    .line 1749
    :try_start_1
    invoke-interface {v9}, Lcom/sun/source/tree/AssignmentTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v12

    .line 1748
    invoke-virtual {v1, v10, v0, v12, v14}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;Ljava/lang/String;)V

    goto :goto_3

    .line 1751
    :cond_8
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v12

    sget-object v13, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v12, v13, :cond_9

    .line 1753
    nop

    .line 1756
    invoke-interface {v9}, Lcom/sun/source/tree/AssignmentTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v12

    .line 1753
    invoke-virtual {v1, v10, v0, v12, v14}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;Ljava/lang/String;)V

    goto :goto_3

    .line 1761
    :cond_9
    move-object v12, v10

    check-cast v12, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    .line 1762
    invoke-virtual {v12}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v12

    .line 1764
    invoke-interface {v9}, Lcom/sun/source/tree/AssignmentTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v13

    .line 1761
    invoke-virtual {v1, v12, v0, v13, v14}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1769
    .end local v0    # "actual":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_3
    iget-object v0, v1, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v0, v11}, Lorg/checkerframework/framework/type/VisitorState;->setAssignmentContext(Lorg/checkerframework/javacutil/Pair;)V

    .line 1770
    nop

    .line 1771
    .end local v8    # "arg":Lcom/sun/source/tree/ExpressionTree;
    .end local v9    # "at":Lcom/sun/source/tree/AssignmentTree;
    .end local v10    # "expected":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v11    # "preAssCtxt":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    move-object/from16 v0, v16

    goto/16 :goto_1

    .line 1769
    .restart local v8    # "arg":Lcom/sun/source/tree/ExpressionTree;
    .restart local v9    # "at":Lcom/sun/source/tree/AssignmentTree;
    .restart local v10    # "expected":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .restart local v11    # "preAssCtxt":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    :catchall_0
    move-exception v0

    iget-object v4, v1, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v4, v11}, Lorg/checkerframework/framework/type/VisitorState;->setAssignmentContext(Lorg/checkerframework/javacutil/Pair;)V

    throw v0

    .line 1738
    .restart local v12    # "var":Lcom/sun/source/tree/ExpressionTree;
    .restart local v13    # "meth":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Expected AnnotatedExecutableType as context. Found: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1735
    .end local v13    # "meth":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Expected IdentifierTree as context. Found: "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1772
    .end local v8    # "arg":Lcom/sun/source/tree/ExpressionTree;
    .end local v9    # "at":Lcom/sun/source/tree/AssignmentTree;
    .end local v10    # "expected":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v11    # "preAssCtxt":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .end local v12    # "var":Lcom/sun/source/tree/ExpressionTree;
    :cond_c
    return-object v4

    .line 1690
    .end local v7    # "annoTypes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    :cond_d
    :goto_4
    return-object v4
.end method

.method public bridge synthetic visitArrayAccess(Lcom/sun/source/tree/ArrayAccessTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 166
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitArrayAccess(Lcom/sun/source/tree/ArrayAccessTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitArrayAccess(Lcom/sun/source/tree/ArrayAccessTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/ArrayAccessTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 2002
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/VisitorState;->getAssignmentContext()Lorg/checkerframework/javacutil/Pair;

    move-result-object v0

    .line 2004
    .local v0, "preAssCtxt":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    :try_start_0
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/VisitorState;->setAssignmentContext(Lorg/checkerframework/javacutil/Pair;)V

    .line 2005
    invoke-interface {p1}, Lcom/sun/source/tree/ArrayAccessTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 2006
    invoke-interface {p1}, Lcom/sun/source/tree/ArrayAccessTree;->getIndex()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2008
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v1, v0}, Lorg/checkerframework/framework/type/VisitorState;->setAssignmentContext(Lorg/checkerframework/javacutil/Pair;)V

    .line 2009
    nop

    .line 2010
    return-object v2

    .line 2008
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v2, v0}, Lorg/checkerframework/framework/type/VisitorState;->setAssignmentContext(Lorg/checkerframework/javacutil/Pair;)V

    throw v1
.end method

.method public bridge synthetic visitAssignment(Lcom/sun/source/tree/AssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 166
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitAssignment(Lcom/sun/source/tree/AssignmentTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitAssignment(Lcom/sun/source/tree/AssignmentTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "node"    # Lcom/sun/source/tree/AssignmentTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 1171
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/VisitorState;->getAssignmentContext()Lorg/checkerframework/javacutil/Pair;

    move-result-object v0

    .line 1172
    .local v0, "preAssCtxt":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    .line 1174
    invoke-interface {p1}, Lcom/sun/source/tree/AssignmentTree;->getVariable()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 1175
    invoke-interface {p1}, Lcom/sun/source/tree/AssignmentTree;->getVariable()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    .line 1173
    invoke-static {v2, v3}, Lorg/checkerframework/javacutil/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v2

    .line 1172
    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/VisitorState;->setAssignmentContext(Lorg/checkerframework/javacutil/Pair;)V

    .line 1177
    nop

    .line 1178
    :try_start_0
    invoke-interface {p1}, Lcom/sun/source/tree/AssignmentTree;->getVariable()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-interface {p1}, Lcom/sun/source/tree/AssignmentTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    const-string v3, "assignment.type.incompatible"

    .line 1177
    invoke-virtual {p0, v1, v2, v3}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->commonAssignmentCheck(Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)V

    .line 1179
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visitAssignment(Lcom/sun/source/tree/AssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Void;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1181
    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v2, v0}, Lorg/checkerframework/framework/type/VisitorState;->setAssignmentContext(Lorg/checkerframework/javacutil/Pair;)V

    .line 1179
    return-object v1

    .line 1181
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v2, v0}, Lorg/checkerframework/framework/type/VisitorState;->setAssignmentContext(Lorg/checkerframework/javacutil/Pair;)V

    throw v1
.end method

.method public bridge synthetic visitCatch(Lcom/sun/source/tree/CatchTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 166
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitCatch(Lcom/sun/source/tree/CatchTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitCatch(Lcom/sun/source/tree/CatchTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/CatchTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 2020
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkExceptionParameter(Lcom/sun/source/tree/CatchTree;)V

    .line 2021
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visitCatch(Lcom/sun/source/tree/CatchTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitClass(Lcom/sun/source/tree/ClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 166
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitClass(Lcom/sun/source/tree/ClassTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public final visitClass(Lcom/sun/source/tree/ClassTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10
    .param p1, "classTree"    # Lcom/sun/source/tree/ClassTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 308
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {v0, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->shouldSkipDefs(Lcom/sun/source/tree/ClassTree;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 312
    return-object v1

    .line 314
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->preProcessClassTree(Lcom/sun/source/tree/ClassTree;)V

    .line 316
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/VisitorState;->getPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    .line 317
    .local v0, "preTreePath":Lcom/sun/source/util/TreePath;
    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/VisitorState;->getClassType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v2

    .line 318
    .local v2, "preACT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v3}, Lorg/checkerframework/framework/type/VisitorState;->getClassTree()Lcom/sun/source/tree/ClassTree;

    move-result-object v3

    .line 319
    .local v3, "preCT":Lcom/sun/source/tree/ClassTree;
    iget-object v4, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v4}, Lorg/checkerframework/framework/type/VisitorState;->getMethodReceiver()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v4

    .line 320
    .local v4, "preAMT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    iget-object v5, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v5}, Lorg/checkerframework/framework/type/VisitorState;->getMethodTree()Lcom/sun/source/tree/MethodTree;

    move-result-object v5

    .line 321
    .local v5, "preMT":Lcom/sun/source/tree/MethodTree;
    iget-object v6, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v6}, Lorg/checkerframework/framework/type/VisitorState;->getAssignmentContext()Lorg/checkerframework/javacutil/Pair;

    move-result-object v6

    .line 324
    .local v6, "preAssCtxt":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    iget-object v7, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    iget-object v8, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->root:Lcom/sun/source/tree/CompilationUnitTree;

    invoke-static {v8, p1}, Lcom/sun/source/util/TreePath;->getPath(Lcom/sun/source/tree/CompilationUnitTree;Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/checkerframework/framework/type/VisitorState;->setPath(Lcom/sun/source/util/TreePath;)V

    .line 325
    iget-object v7, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    iget-object v8, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 326
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/ClassTree;)Ljavax/lang/model/element/TypeElement;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/TypeElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v8

    .line 325
    invoke-virtual {v7, v8}, Lorg/checkerframework/framework/type/VisitorState;->setClassType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)V

    .line 327
    iget-object v7, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v7, p1}, Lorg/checkerframework/framework/type/VisitorState;->setClassTree(Lcom/sun/source/tree/ClassTree;)V

    .line 328
    iget-object v7, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v7, v1}, Lorg/checkerframework/framework/type/VisitorState;->setMethodReceiver(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)V

    .line 329
    iget-object v7, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v7, v1}, Lorg/checkerframework/framework/type/VisitorState;->setMethodTree(Lcom/sun/source/tree/MethodTree;)V

    .line 330
    iget-object v7, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v7, v1}, Lorg/checkerframework/framework/type/VisitorState;->setAssignmentContext(Lorg/checkerframework/javacutil/Pair;)V

    .line 333
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->processClassTree(Lcom/sun/source/tree/ClassTree;)V

    .line 334
    iget-object v7, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v7, p1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->postProcessClassTree(Lcom/sun/source/tree/ClassTree;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    iget-object v7, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v7, v0}, Lorg/checkerframework/framework/type/VisitorState;->setPath(Lcom/sun/source/util/TreePath;)V

    .line 337
    iget-object v7, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v7, v2}, Lorg/checkerframework/framework/type/VisitorState;->setClassType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)V

    .line 338
    iget-object v7, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v7, v3}, Lorg/checkerframework/framework/type/VisitorState;->setClassTree(Lcom/sun/source/tree/ClassTree;)V

    .line 339
    iget-object v7, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v7, v4}, Lorg/checkerframework/framework/type/VisitorState;->setMethodReceiver(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)V

    .line 340
    iget-object v7, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v7, v5}, Lorg/checkerframework/framework/type/VisitorState;->setMethodTree(Lcom/sun/source/tree/MethodTree;)V

    .line 341
    iget-object v7, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v7, v6}, Lorg/checkerframework/framework/type/VisitorState;->setAssignmentContext(Lorg/checkerframework/javacutil/Pair;)V

    .line 342
    nop

    .line 343
    return-object v1

    .line 336
    :catchall_0
    move-exception v1

    iget-object v7, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v7, v0}, Lorg/checkerframework/framework/type/VisitorState;->setPath(Lcom/sun/source/util/TreePath;)V

    .line 337
    iget-object v7, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v7, v2}, Lorg/checkerframework/framework/type/VisitorState;->setClassType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)V

    .line 338
    iget-object v7, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v7, v3}, Lorg/checkerframework/framework/type/VisitorState;->setClassTree(Lcom/sun/source/tree/ClassTree;)V

    .line 339
    iget-object v7, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v7, v4}, Lorg/checkerframework/framework/type/VisitorState;->setMethodReceiver(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)V

    .line 340
    iget-object v7, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v7, v5}, Lorg/checkerframework/framework/type/VisitorState;->setMethodTree(Lcom/sun/source/tree/MethodTree;)V

    .line 341
    iget-object v7, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v7, v6}, Lorg/checkerframework/framework/type/VisitorState;->setAssignmentContext(Lorg/checkerframework/javacutil/Pair;)V

    throw v1
.end method

.method public bridge synthetic visitCompilationUnit(Lcom/sun/source/tree/CompilationUnitTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 166
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitCompilationUnit(Lcom/sun/source/tree/CompilationUnitTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitCompilationUnit(Lcom/sun/source/tree/CompilationUnitTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/CompilationUnitTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 3883
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    invoke-interface {p1}, Lcom/sun/source/tree/CompilationUnitTree;->getPackageAnnotations()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    .line 3886
    .local v0, "r":Ljava/lang/Void;
    invoke-interface {p1}, Lcom/sun/source/tree/CompilationUnitTree;->getTypeDecls()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Void;

    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->reduce(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/Void;

    .line 3887
    return-object v0
.end method

.method public bridge synthetic visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 166
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/CompoundAssignmentTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 1821
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    invoke-interface {p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getVariable()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    const-string v1, "compound.assignment.type.incompatible"

    invoke-virtual {p0, v0, p1, v1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->commonAssignmentCheck(Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)V

    .line 1822
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitConditionalExpression(Lcom/sun/source/tree/ConditionalExpressionTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 166
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitConditionalExpression(Lcom/sun/source/tree/ConditionalExpressionTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitConditionalExpression(Lcom/sun/source/tree/ConditionalExpressionTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/ConditionalExpressionTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 1783
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 1784
    .local v0, "cond":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {p1}, Lcom/sun/source/tree/ConditionalExpressionTree;->getTrueExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    const-string v2, "conditional.type.incompatible"

    invoke-virtual {p0, v0, v1, v2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)V

    .line 1785
    nop

    .line 1786
    invoke-interface {p1}, Lcom/sun/source/tree/ConditionalExpressionTree;->getFalseExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    .line 1785
    invoke-virtual {p0, v0, v1, v2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)V

    .line 1787
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visitConditionalExpression(Lcom/sun/source/tree/ConditionalExpressionTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Void;

    return-object v1
.end method

.method public bridge synthetic visitEnhancedForLoop(Lcom/sun/source/tree/EnhancedForLoopTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 166
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitEnhancedForLoop(Lcom/sun/source/tree/EnhancedForLoopTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitEnhancedForLoop(Lcom/sun/source/tree/EnhancedForLoopTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "node"    # Lcom/sun/source/tree/EnhancedForLoopTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 1193
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-interface {p1}, Lcom/sun/source/tree/EnhancedForLoopTree;->getVariable()Lcom/sun/source/tree/VariableTree;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedTypeLhs(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 1194
    .local v0, "var":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-interface {p1}, Lcom/sun/source/tree/EnhancedForLoopTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 1195
    .local v1, "iterableType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 1197
    invoke-virtual {v2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getProcessingEnvironment()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 1196
    invoke-static {v2, v3, v1}, Lorg/checkerframework/framework/util/AnnotatedTypes;->getIteratedType(Ljavax/annotation/processing/ProcessingEnvironment;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 1198
    .local v2, "iteratedType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {p1}, Lcom/sun/source/tree/EnhancedForLoopTree;->getVariable()Lcom/sun/source/tree/VariableTree;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->validateTypeOf(Lcom/sun/source/tree/Tree;)Z

    move-result v3

    .line 1199
    .local v3, "valid":Z
    if-eqz v3, :cond_0

    .line 1200
    nop

    .line 1201
    invoke-interface {p1}, Lcom/sun/source/tree/EnhancedForLoopTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v4

    .line 1200
    const-string v5, "enhancedfor.type.incompatible"

    invoke-virtual {p0, v0, v2, v4, v5}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;Ljava/lang/String;)V

    .line 1203
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visitEnhancedForLoop(Lcom/sun/source/tree/EnhancedForLoopTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Void;

    return-object v4
.end method

.method public bridge synthetic visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 166
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/IdentifierTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 3699
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkAccess(Lcom/sun/source/tree/IdentifierTree;Ljava/lang/Void;)V

    .line 3700
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitInstanceOf(Lcom/sun/source/tree/InstanceOfTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 166
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitInstanceOf(Lcom/sun/source/tree/InstanceOfTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitInstanceOf(Lcom/sun/source/tree/InstanceOfTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/InstanceOfTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 1996
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    invoke-interface {p1}, Lcom/sun/source/tree/InstanceOfTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->validateTypeOf(Lcom/sun/source/tree/Tree;)Z

    .line 1997
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visitInstanceOf(Lcom/sun/source/tree/InstanceOfTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitLambdaExpression(Lcom/sun/source/tree/LambdaExpressionTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 166
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitLambdaExpression(Lcom/sun/source/tree/LambdaExpressionTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitLambdaExpression(Lcom/sun/source/tree/LambdaExpressionTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "node"    # Lcom/sun/source/tree/LambdaExpressionTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 1592
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getFunctionTypeFromTree(Lcom/sun/source/tree/LambdaExpressionTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    move-result-object v0

    .line 1594
    .local v0, "functionType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    invoke-interface {p1}, Lcom/sun/source/tree/LambdaExpressionTree;->getBody()Lcom/sun/source/tree/Tree;

    move-result-object v1

    invoke-interface {v1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->BLOCK:Lcom/sun/source/tree/Tree$Kind;

    if-eq v1, v2, :cond_0

    .line 1596
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 1597
    .local v1, "ret":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/type/TypeKind;->VOID:Ljavax/lang/model/type/TypeKind;

    if-eq v2, v3, :cond_0

    .line 1598
    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-static {p1, v1}, Lorg/checkerframework/javacutil/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/framework/type/VisitorState;->setAssignmentContext(Lorg/checkerframework/javacutil/Pair;)V

    .line 1599
    nop

    .line 1600
    invoke-interface {p1}, Lcom/sun/source/tree/LambdaExpressionTree;->getBody()Lcom/sun/source/tree/Tree;

    move-result-object v2

    check-cast v2, Lcom/sun/source/tree/ExpressionTree;

    .line 1599
    const-string v3, "return.type.incompatible"

    invoke-virtual {p0, v1, v2, v3}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)V

    .line 1605
    .end local v1    # "ret":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1606
    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 1607
    invoke-interface {p1}, Lcom/sun/source/tree/LambdaExpressionTree;->getParameters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/source/tree/Tree;

    invoke-virtual {v2, v3}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 1608
    .local v2, "lambdaParameter":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    nop

    .line 1610
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1611
    invoke-interface {p1}, Lcom/sun/source/tree/LambdaExpressionTree;->getParameters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/source/tree/Tree;

    .line 1608
    const-string v5, "lambda.param.type.incompatible"

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;Ljava/lang/String;)V

    .line 1605
    .end local v2    # "lambdaParameter":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1618
    .end local v1    # "i":I
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visitLambdaExpression(Lcom/sun/source/tree/LambdaExpressionTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Void;

    return-object v1
.end method

.method public bridge synthetic visitMemberReference(Lcom/sun/source/tree/MemberReferenceTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 166
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitMemberReference(Lcom/sun/source/tree/MemberReferenceTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMemberReference(Lcom/sun/source/tree/MemberReferenceTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/MemberReferenceTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 1623
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkMethodReferenceAsOverride(Lcom/sun/source/tree/MemberReferenceTree;Ljava/lang/Void;)Z

    .line 1624
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visitMemberReference(Lcom/sun/source/tree/MemberReferenceTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 166
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 12
    .param p1, "node"    # Lcom/sun/source/tree/MethodTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 564
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/MethodTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    move-result-object v0

    .line 565
    .local v0, "methodType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/VisitorState;->getMethodReceiver()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v1

    .line 566
    .local v1, "preMRT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/VisitorState;->getMethodTree()Lcom/sun/source/tree/MethodTree;

    move-result-object v2

    .line 567
    .local v2, "preMT":Lcom/sun/source/tree/MethodTree;
    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/checkerframework/framework/type/VisitorState;->setMethodReceiver(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)V

    .line 568
    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v3, p1}, Lorg/checkerframework/framework/type/VisitorState;->setMethodTree(Lcom/sun/source/tree/MethodTree;)V

    .line 569
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/MethodTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v3

    .line 571
    .local v3, "methodElement":Ljavax/lang/model/element/ExecutableElement;
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getModifiers()Lcom/sun/source/tree/ModifiersTree;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->warnAboutTypeAnnotationsTooEarly(Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/ModifiersTree;)V

    .line 574
    :try_start_0
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isAnonymousConstructor(Lcom/sun/source/tree/MethodTree;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 576
    nop

    .line 633
    iget-object v4, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v4, v1}, Lorg/checkerframework/framework/type/VisitorState;->setMethodReceiver(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)V

    .line 634
    iget-object v4, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v4, v2}, Lorg/checkerframework/framework/type/VisitorState;->setMethodTree(Lcom/sun/source/tree/MethodTree;)V

    .line 576
    const/4 v4, 0x0

    return-object v4

    .line 579
    :cond_0
    :try_start_1
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isConstructor(Lcom/sun/source/tree/MethodTree;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 580
    invoke-virtual {p0, v0, v3}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkConstructorResult(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljavax/lang/model/element/ExecutableElement;)V

    .line 583
    :cond_1
    invoke-virtual {p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkPurity(Lcom/sun/source/tree/MethodTree;)V

    .line 586
    invoke-virtual {p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->validateTypeOf(Lcom/sun/source/tree/Tree;)Z

    .line 589
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getThrows()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/source/tree/ExpressionTree;

    .line 590
    .local v5, "thr":Lcom/sun/source/tree/ExpressionTree;
    invoke-virtual {p0, v5}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->validateTypeOf(Lcom/sun/source/tree/Tree;)Z

    .line 591
    nop

    .end local v5    # "thr":Lcom/sun/source/tree/ExpressionTree;
    goto :goto_0

    .line 593
    :cond_2
    iget-object v4, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v4}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getDependentTypesHelper()Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 594
    iget-object v4, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v4}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getDependentTypesHelper()Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    move-result-object v4

    invoke-virtual {v4, p1, v0}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->checkMethod(Lcom/sun/source/tree/MethodTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)V

    .line 598
    :cond_3
    iget-object v4, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 600
    invoke-interface {v3}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 603
    .local v4, "enclosingType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    iget-object v5, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->elements:Ljavax/lang/model/util/Elements;

    iget-object v6, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 604
    invoke-static {v5, v6, v3}, Lorg/checkerframework/framework/util/AnnotatedTypes;->overriddenMethods(Ljavax/lang/model/util/Elements;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljavax/lang/model/element/ExecutableElement;)Ljava/util/Map;

    move-result-object v5

    .line 606
    .local v5, "overriddenMethods":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljavax/lang/model/element/ExecutableElement;>;"
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 607
    .local v7, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljavax/lang/model/element/ExecutableElement;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 608
    .local v8, "overriddenType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    iget-object v9, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->types:Ljavax/lang/model/util/Types;

    iget-object v10, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 610
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavax/lang/model/element/ExecutableElement;

    .line 609
    invoke-static {v9, v10, v8, v11}, Lorg/checkerframework/framework/util/AnnotatedTypes;->asMemberOf(Ljavax/lang/model/util/Types;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/ExecutableElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    move-result-object v9

    .line 611
    .local v9, "overriddenMethod":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    invoke-virtual {p0, p1, v4, v9, v8}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkOverride(Lcom/sun/source/tree/MethodTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 615
    goto :goto_2

    .line 617
    .end local v7    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljavax/lang/model/element/ExecutableElement;>;"
    .end local v8    # "overriddenType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v9    # "overriddenMethod":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    :cond_4
    goto :goto_1

    .line 620
    :cond_5
    :goto_2
    nop

    .line 621
    invoke-interface {v3}, Ljavax/lang/model/element/ExecutableElement;->getModifiers()Ljava/util/Set;

    move-result-object v6

    sget-object v7, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 622
    invoke-interface {v3}, Ljavax/lang/model/element/ExecutableElement;->getModifiers()Ljava/util/Set;

    move-result-object v6

    sget-object v7, Ljavax/lang/model/element/Modifier;->NATIVE:Ljavax/lang/model/element/Modifier;

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    goto :goto_4

    :cond_7
    :goto_3
    const/4 v6, 0x1

    .line 624
    .local v6, "abstractMethod":Z
    :goto_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 625
    .local v7, "formalParamNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getParameters()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sun/source/tree/VariableTree;

    .line 626
    .local v9, "param":Lcom/sun/source/tree/VariableTree;
    invoke-interface {v9}, Lcom/sun/source/tree/VariableTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    nop

    .end local v9    # "param":Lcom/sun/source/tree/VariableTree;
    goto :goto_5

    .line 628
    :cond_8
    invoke-direct {p0, p1, v3, v7, v6}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkContractsAtMethodDeclaration(Lcom/sun/source/tree/MethodTree;Ljavax/lang/model/element/ExecutableElement;Ljava/util/List;Z)V

    .line 631
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Void;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 633
    iget-object v9, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v9, v1}, Lorg/checkerframework/framework/type/VisitorState;->setMethodReceiver(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)V

    .line 634
    iget-object v9, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v9, v2}, Lorg/checkerframework/framework/type/VisitorState;->setMethodTree(Lcom/sun/source/tree/MethodTree;)V

    .line 631
    return-object v8

    .line 633
    .end local v4    # "enclosingType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v5    # "overriddenMethods":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljavax/lang/model/element/ExecutableElement;>;"
    .end local v6    # "abstractMethod":Z
    .end local v7    # "formalParamNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v5, v1}, Lorg/checkerframework/framework/type/VisitorState;->setMethodReceiver(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)V

    .line 634
    iget-object v5, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v5, v2}, Lorg/checkerframework/framework/type/VisitorState;->setMethodTree(Lcom/sun/source/tree/MethodTree;)V

    throw v4
.end method

.method public bridge synthetic visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 166
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "node"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 1222
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isEnumSuper(Lcom/sun/source/tree/MethodInvocationTree;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 1226
    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->shouldSkipUses(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1227
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0

    .line 1230
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->methodFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;

    move-result-object v0

    .line 1231
    .local v0, "mType":Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;
    iget-object v1, v0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;->executableType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 1232
    .local v1, "invokedMethod":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    iget-object v2, v0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;->typeArgs:Ljava/util/List;

    .line 1234
    .local v2, "typeargs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    iget-boolean v3, v3, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->ignoreUninferredTypeArguments:Z

    if-nez v3, :cond_3

    .line 1235
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1236
    .local v4, "typearg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v5

    sget-object v6, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-ne v5, v6, :cond_2

    move-object v5, v4

    check-cast v5, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 1237
    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->isUninferredTypeArgument()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1238
    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 1241
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getElement()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v5

    invoke-interface {v5}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 1239
    const-string v6, "type.arguments.not.inferred"

    invoke-static {v6, v5}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v5

    .line 1238
    invoke-virtual {v3, v5, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 1243
    goto :goto_1

    .line 1245
    .end local v4    # "typearg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_2
    goto :goto_0

    .line 1248
    :cond_3
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1249
    .local v3, "paramBounds":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;>;"
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getTypeVariables()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 1250
    .local v5, "param":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getBounds()Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1251
    .end local v5    # "param":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    goto :goto_2

    .line 1253
    :cond_4
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getTypeArguments()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, p1, v3, v2, v4}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkTypeArguments(Lcom/sun/source/tree/Tree;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1255
    iget-object v4, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 1256
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v1, v5}, Lorg/checkerframework/framework/util/AnnotatedTypes;->expandVarArgs(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 1257
    .local v4, "params":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkArguments(Ljava/util/List;Ljava/util/List;)V

    .line 1258
    invoke-virtual {p0, v1, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkVarargs(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lcom/sun/source/tree/Tree;)V

    .line 1260
    nop

    .line 1261
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getElement()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v5

    iget-object v6, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->vectorCopyInto:Ljavax/lang/model/element/ExecutableElement;

    iget-object v7, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v7}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getProcessingEnv()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v7

    .line 1260
    invoke-static {v5, v6, v7}, Lorg/checkerframework/javacutil/ElementUtils;->isMethod(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/ExecutableElement;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1262
    invoke-virtual {p0, p1, v4}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->typeCheckVectorCopyIntoArgument(Lcom/sun/source/tree/MethodInvocationTree;Ljava/util/List;)V

    .line 1265
    :cond_5
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getElement()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v5

    .line 1266
    .local v5, "invokedMethodElement":Ljavax/lang/model/element/ExecutableElement;
    invoke-static {v5}, Lorg/checkerframework/javacutil/ElementUtils;->isStatic(Ljavax/lang/model/element/Element;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1267
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isSuperConstructorCall(Lcom/sun/source/tree/MethodInvocationTree;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1268
    invoke-virtual {p0, v1, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkMethodInvocability(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lcom/sun/source/tree/MethodInvocationTree;)V

    .line 1272
    :cond_6
    iget-object v6, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->contractsUtils:Lorg/checkerframework/framework/util/ContractsUtils;

    invoke-virtual {v6, v5}, Lorg/checkerframework/framework/util/ContractsUtils;->getPreconditions(Ljavax/lang/model/element/ExecutableElement;)Ljava/util/Set;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkPreconditions(Lcom/sun/source/tree/MethodInvocationTree;Ljava/util/Set;)V

    .line 1274
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isSuperConstructorCall(Lcom/sun/source/tree/MethodInvocationTree;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1275
    invoke-virtual {p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkSuperConstructorCall(Lcom/sun/source/tree/MethodInvocationTree;)V

    goto :goto_3

    .line 1276
    :cond_7
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isThisConstructorCall(Lcom/sun/source/tree/MethodInvocationTree;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1277
    invoke-virtual {p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkThisConstructorCall(Lcom/sun/source/tree/MethodInvocationTree;)V

    .line 1282
    :cond_8
    :goto_3
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getMethodSelect()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    invoke-virtual {p0, v6, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 1283
    const/4 v6, 0x0

    return-object v6

    .line 1223
    .end local v0    # "mType":Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;
    .end local v1    # "invokedMethod":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .end local v2    # "typeargs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .end local v3    # "paramBounds":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;>;"
    .end local v4    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .end local v5    # "invokedMethodElement":Ljavax/lang/model/element/ExecutableElement;
    :cond_9
    :goto_4
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 166
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "node"    # Lcom/sun/source/tree/NewArrayTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 1831
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->validateTypeOf(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    .line 1833
    .local v0, "valid":Z
    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/sun/source/tree/NewArrayTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1834
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v1, p1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/NewArrayTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    move-result-object v1

    .line 1835
    .local v1, "arrayType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getDependentTypesHelper()Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1836
    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getDependentTypesHelper()Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->checkType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;)V

    .line 1838
    :cond_0
    invoke-interface {p1}, Lcom/sun/source/tree/NewArrayTree;->getInitializers()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1839
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-interface {p1}, Lcom/sun/source/tree/NewArrayTree;->getInitializers()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkArrayInitialization(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List;)V

    .line 1843
    .end local v1    # "arrayType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Void;

    return-object v1
.end method

.method public bridge synthetic visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 166
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "node"    # Lcom/sun/source/tree/NewClassTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 1549
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->constructor(Lcom/sun/source/tree/NewClassTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->shouldSkipUses(Ljavax/lang/model/element/Element;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1550
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0

    .line 1553
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->constructorFromUse(Lcom/sun/source/tree/NewClassTree;)Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;

    move-result-object v0

    .line 1554
    .local v0, "fromUse":Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;
    iget-object v1, v0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;->executableType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 1555
    .local v1, "constructor":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    iget-object v2, v0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;->typeArgs:Ljava/util/List;

    .line 1557
    .local v2, "typeargs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getArguments()Ljava/util/List;

    move-result-object v3

    .line 1558
    .local v3, "passedArguments":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    iget-object v4, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 1559
    invoke-static {v4, v1, v3}, Lorg/checkerframework/framework/util/AnnotatedTypes;->expandVarArgs(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 1561
    .local v4, "params":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-virtual {p0, v4, v3}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkArguments(Ljava/util/List;Ljava/util/List;)V

    .line 1562
    invoke-virtual {p0, v1, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkVarargs(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lcom/sun/source/tree/Tree;)V

    .line 1564
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1565
    .local v5, "paramBounds":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;>;"
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getTypeVariables()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 1566
    .local v7, "param":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    invoke-virtual {v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getBounds()Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1567
    .end local v7    # "param":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    goto :goto_0

    .line 1569
    :cond_1
    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getTypeArguments()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, p1, v5, v2, v6}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkTypeArguments(Lcom/sun/source/tree/Tree;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1571
    invoke-virtual {p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->validateTypeOf(Lcom/sun/source/tree/Tree;)Z

    move-result v6

    .line 1573
    .local v6, "valid":Z
    if-eqz v6, :cond_3

    .line 1574
    iget-object v7, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v7, p1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/NewClassTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v7

    .line 1575
    .local v7, "dt":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    iget-object v8, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v8}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getDependentTypesHelper()Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 1576
    iget-object v8, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v8}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getDependentTypesHelper()Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    move-result-object v8

    invoke-virtual {v8, v7, p1}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->checkType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;)V

    .line 1578
    :cond_2
    invoke-virtual {p0, v7, v1, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkConstructorInvocation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lcom/sun/source/tree/NewClassTree;)V

    .line 1582
    .end local v7    # "dt":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_3
    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getEnclosingExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v7

    invoke-virtual {p0, v7, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 1583
    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getIdentifier()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v7

    invoke-virtual {p0, v7, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 1584
    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getClassBody()Lcom/sun/source/tree/ClassTree;

    move-result-object v7

    invoke-virtual {p0, v7, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 1586
    const/4 v7, 0x0

    return-object v7
.end method

.method public bridge synthetic visitReturn(Lcom/sun/source/tree/ReturnTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 166
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitReturn(Lcom/sun/source/tree/ReturnTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitReturn(Lcom/sun/source/tree/ReturnTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "node"    # Lcom/sun/source/tree/ReturnTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 1634
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    invoke-interface {p1}, Lcom/sun/source/tree/ReturnTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1635
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visitReturn(Lcom/sun/source/tree/ReturnTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0

    .line 1638
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/VisitorState;->getAssignmentContext()Lorg/checkerframework/javacutil/Pair;

    move-result-object v0

    .line 1641
    .local v0, "preAssCtxt":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    nop

    .line 1643
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sun/source/tree/Tree$Kind;

    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->LAMBDA_EXPRESSION:Lcom/sun/source/tree/Tree$Kind;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 1645
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1642
    invoke-static {v1, v2}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingOfKind(Lcom/sun/source/util/TreePath;Ljava/util/Set;)Lcom/sun/source/tree/Tree;

    move-result-object v1

    .line 1647
    .local v1, "enclosing":Lcom/sun/source/tree/Tree;
    const/4 v2, 0x0

    .line 1648
    .local v2, "ret":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {v1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v4, :cond_2

    .line 1650
    invoke-virtual {p0}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v3

    invoke-static {v3}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingMethod(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/MethodTree;

    move-result-object v3

    .line 1651
    .local v3, "enclosingMethod":Lcom/sun/source/tree/MethodTree;
    invoke-virtual {p0, v1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->validateTypeOf(Lcom/sun/source/tree/Tree;)Z

    move-result v4

    .line 1652
    .local v4, "valid":Z
    if-eqz v4, :cond_1

    .line 1653
    iget-object v5, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v5, v3, p1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getMethodReturnType(Lcom/sun/source/tree/MethodTree;Lcom/sun/source/tree/ReturnTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v5

    move-object v2, v5

    .line 1655
    .end local v3    # "enclosingMethod":Lcom/sun/source/tree/MethodTree;
    .end local v4    # "valid":Z
    :cond_1
    goto :goto_0

    .line 1656
    :cond_2
    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-object v4, v1

    check-cast v4, Lcom/sun/source/tree/LambdaExpressionTree;

    .line 1657
    invoke-virtual {v3, v4}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getFunctionTypeFromTree(Lcom/sun/source/tree/LambdaExpressionTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    move-result-object v3

    .line 1658
    .local v3, "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    move-object v2, v4

    .line 1661
    .end local v3    # "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    :goto_0
    if-eqz v2, :cond_3

    .line 1662
    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-static {p1, v2}, Lorg/checkerframework/javacutil/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/checkerframework/framework/type/VisitorState;->setAssignmentContext(Lorg/checkerframework/javacutil/Pair;)V

    .line 1664
    invoke-interface {p1}, Lcom/sun/source/tree/ReturnTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v3

    const-string v4, "return.type.incompatible"

    invoke-virtual {p0, v2, v3, v4}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)V

    .line 1666
    :cond_3
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visitReturn(Lcom/sun/source/tree/ReturnTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Void;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1668
    iget-object v4, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v4, v0}, Lorg/checkerframework/framework/type/VisitorState;->setAssignmentContext(Lorg/checkerframework/javacutil/Pair;)V

    .line 1666
    return-object v3

    .line 1668
    .end local v1    # "enclosing":Lcom/sun/source/tree/Tree;
    .end local v2    # "ret":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v2, v0}, Lorg/checkerframework/framework/type/VisitorState;->setAssignmentContext(Lorg/checkerframework/javacutil/Pair;)V

    throw v1
.end method

.method public bridge synthetic visitThrow(Lcom/sun/source/tree/ThrowTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 166
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitThrow(Lcom/sun/source/tree/ThrowTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitThrow(Lcom/sun/source/tree/ThrowTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/ThrowTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 2031
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkThrownExpression(Lcom/sun/source/tree/ThrowTree;)V

    .line 2032
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visitThrow(Lcom/sun/source/tree/ThrowTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 166
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "node"    # Lcom/sun/source/tree/TypeCastTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 1981
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->validateTypeOf(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/sun/source/tree/TypeCastTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->validateTypeOf(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1982
    .local v0, "valid":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1983
    invoke-virtual {p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkTypecastSafety(Lcom/sun/source/tree/TypeCastTree;)V

    .line 1984
    invoke-virtual {p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkTypecastRedundancy(Lcom/sun/source/tree/TypeCastTree;)V

    .line 1986
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getDependentTypesHelper()Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1987
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v1, p1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 1988
    .local v1, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getDependentTypesHelper()Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    move-result-object v2

    invoke-interface {p1}, Lcom/sun/source/tree/TypeCastTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->checkType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;)V

    .line 1990
    .end local v1    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Void;

    return-object v1
.end method

.method public bridge synthetic visitTypeParameter(Lcom/sun/source/tree/TypeParameterTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 166
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitTypeParameter(Lcom/sun/source/tree/TypeParameterTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeParameter(Lcom/sun/source/tree/TypeParameterTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/TypeParameterTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 1001
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->validateTypeOf(Lcom/sun/source/tree/Tree;)Z

    .line 1005
    invoke-interface {p1}, Lcom/sun/source/tree/TypeParameterTree;->getBounds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/Tree;

    .line 1006
    .local v1, "tpb":Lcom/sun/source/tree/Tree;
    invoke-virtual {p0, v1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->validateTypeOf(Lcom/sun/source/tree/Tree;)Z

    .line 1007
    .end local v1    # "tpb":Lcom/sun/source/tree/Tree;
    goto :goto_0

    .line 1008
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visitTypeParameter(Lcom/sun/source/tree/TypeParameterTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitUnary(Lcom/sun/source/tree/UnaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 166
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitUnary(Lcom/sun/source/tree/UnaryTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitUnary(Lcom/sun/source/tree/UnaryTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "node"    # Lcom/sun/source/tree/UnaryTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 1797
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    invoke-interface {p1}, Lcom/sun/source/tree/UnaryTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    .line 1798
    .local v0, "nodeKind":Lcom/sun/source/tree/Tree$Kind;
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->PREFIX_DECREMENT:Lcom/sun/source/tree/Tree$Kind;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->PREFIX_INCREMENT:Lcom/sun/source/tree/Tree$Kind;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->POSTFIX_DECREMENT:Lcom/sun/source/tree/Tree$Kind;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->POSTFIX_INCREMENT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_3

    .line 1802
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-interface {p1}, Lcom/sun/source/tree/UnaryTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedTypeLhs(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 1803
    .local v1, "varType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v2, p1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedTypeRhsUnaryAssign(Lcom/sun/source/tree/UnaryTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 1805
    .local v2, "valueType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->PREFIX_INCREMENT:Lcom/sun/source/tree/Tree$Kind;

    if-eq v0, v3, :cond_2

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->POSTFIX_INCREMENT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 1808
    :cond_1
    const-string v3, "unary.decrement.type.incompatible"

    goto :goto_1

    .line 1807
    :cond_2
    :goto_0
    const-string v3, "unary.increment.type.incompatible"

    .line 1808
    :goto_1
    nop

    .line 1809
    .local v3, "errorKey":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, p1, v3}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;Ljava/lang/String;)V

    .line 1811
    .end local v1    # "varType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v2    # "valueType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v3    # "errorKey":Ljava/lang/String;
    :cond_3
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visitUnary(Lcom/sun/source/tree/UnaryTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Void;

    return-object v1
.end method

.method public bridge synthetic visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 166
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "node"    # Lcom/sun/source/tree/VariableTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 1017
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>;"
    invoke-interface {p1}, Lcom/sun/source/tree/VariableTree;->getModifiers()Lcom/sun/source/tree/ModifiersTree;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->warnAboutTypeAnnotationsTooEarly(Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/ModifiersTree;)V

    .line 1019
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/VisitorState;->getAssignmentContext()Lorg/checkerframework/javacutil/Pair;

    move-result-object v0

    .line 1021
    .local v0, "preAssCtxt":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-virtual {p0}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1022
    invoke-virtual {p0}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    invoke-interface {v1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->LAMBDA_EXPRESSION:Lcom/sun/source/tree/Tree$Kind;

    if-ne v1, v2, :cond_0

    .line 1028
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v1, p1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .local v1, "variableType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 1030
    .end local v1    # "variableType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v1, p1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedTypeLhs(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 1032
    .restart local v1    # "variableType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-static {p1, v1}, Lorg/checkerframework/javacutil/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/framework/type/VisitorState;->setAssignmentContext(Lorg/checkerframework/javacutil/Pair;)V

    .line 1035
    :try_start_0
    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getDependentTypesHelper()Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1036
    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getDependentTypesHelper()Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->checkType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;)V

    .line 1039
    :cond_1
    invoke-interface {p1}, Lcom/sun/source/tree/VariableTree;->getInitializer()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1040
    invoke-interface {p1}, Lcom/sun/source/tree/VariableTree;->getInitializer()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    const-string v3, "assignment.type.incompatible"

    invoke-virtual {p0, p1, v2, v3}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->commonAssignmentCheck(Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)V

    goto :goto_1

    .line 1044
    :cond_2
    invoke-virtual {p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->validateTypeOf(Lcom/sun/source/tree/Tree;)Z

    .line 1046
    :goto_1
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Void;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1048
    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v3, v0}, Lorg/checkerframework/framework/type/VisitorState;->setAssignmentContext(Lorg/checkerframework/javacutil/Pair;)V

    .line 1046
    return-object v2

    .line 1048
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v3, v0}, Lorg/checkerframework/framework/type/VisitorState;->setAssignmentContext(Lorg/checkerframework/javacutil/Pair;)V

    throw v2
.end method
