.class public Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;
.super Lcom/sun/source/util/TreePathScanner;
.source "CFGBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/cfg/CFGBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CFGTranslationPhaseOne"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/source/util/TreePathScanner<",
        "Lorg/checkerframework/dataflow/cfg/node/Node;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final annotationProvider:Lorg/checkerframework/javacutil/AnnotationProvider;

.field protected final assumeAssertionsDisabled:Z

.field protected final assumeAssertionsEnabled:Z

.field protected final bindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected breakLabels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/Name;",
            "Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;",
            ">;"
        }
    .end annotation
.end field

.field protected breakTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

.field protected continueLabels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/Name;",
            "Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;",
            ">;"
        }
    .end annotation
.end field

.field protected continueTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

.field protected final convertedTreeLookupMap:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/sun/source/tree/Tree;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final declaredClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sun/source/tree/ClassTree;",
            ">;"
        }
    .end annotation
.end field

.field protected final declaredLambdas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sun/source/tree/LambdaExpressionTree;",
            ">;"
        }
    .end annotation
.end field

.field protected ea:Lcom/sun/source/tree/VariableTree;

.field protected final elements:Ljavax/lang/model/util/Elements;

.field protected final env:Ljavax/annotation/processing/ProcessingEnvironment;

.field protected final exceptionalExitLabel:Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

.field protected final leaders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final nodeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;",
            ">;"
        }
    .end annotation
.end field

.field private final parenMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sun/source/tree/Tree;",
            "Lcom/sun/source/tree/ParenthesizedTree;",
            ">;"
        }
    .end annotation
.end field

.field protected final regularExitLabel:Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

.field private final returnNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/dataflow/cfg/node/ReturnNode;",
            ">;"
        }
    .end annotation
.end field

.field protected returnTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

.field protected final treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

.field protected final treeLookupMap:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/sun/source/tree/Tree;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final trees:Lcom/sun/source/util/Trees;

.field private tryStack:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryStack;

.field protected final types:Ljavax/lang/model/util/Types;

.field protected uid:J

.field protected final unaryAssignNodeLookupMap:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/sun/source/tree/UnaryTree;",
            "Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1421
    const-class v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder;

    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/javacutil/trees/TreeBuilder;Lorg/checkerframework/javacutil/AnnotationProvider;ZZLjavax/annotation/processing/ProcessingEnvironment;)V
    .locals 3
    .param p1, "treeBuilder"    # Lorg/checkerframework/javacutil/trees/TreeBuilder;
    .param p2, "annotationProvider"    # Lorg/checkerframework/javacutil/AnnotationProvider;
    .param p3, "assumeAssertionsEnabled"    # Z
    .param p4, "assumeAssertionsDisabled"    # Z
    .param p5, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .line 1535
    invoke-direct {p0}, Lcom/sun/source/util/TreePathScanner;-><init>()V

    .line 1854
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->uid:J

    .line 2574
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->ea:Lcom/sun/source/tree/VariableTree;

    .line 4121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->parenMapping:Ljava/util/Map;

    .line 1536
    iput-object p5, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 1537
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    .line 1538
    iput-object p2, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->annotationProvider:Lorg/checkerframework/javacutil/AnnotationProvider;

    .line 1540
    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1541
    :cond_1
    :goto_0
    iput-boolean p3, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->assumeAssertionsEnabled:Z

    .line 1542
    iput-boolean p4, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->assumeAssertionsDisabled:Z

    .line 1544
    invoke-interface {p5}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->elements:Ljavax/lang/model/util/Elements;

    .line 1545
    invoke-interface {p5}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->types:Ljavax/lang/model/util/Types;

    .line 1546
    invoke-static {p5}, Lcom/sun/source/util/Trees;->instance(Ljavax/annotation/processing/ProcessingEnvironment;)Lcom/sun/source/util/Trees;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->trees:Lcom/sun/source/util/Trees;

    .line 1549
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeLookupMap:Ljava/util/IdentityHashMap;

    .line 1550
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->convertedTreeLookupMap:Ljava/util/IdentityHashMap;

    .line 1551
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->unaryAssignNodeLookupMap:Ljava/util/IdentityHashMap;

    .line 1552
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->nodeList:Ljava/util/ArrayList;

    .line 1553
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->bindings:Ljava/util/Map;

    .line 1554
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->leaders:Ljava/util/Set;

    .line 1556
    new-instance v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-direct {v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->regularExitLabel:Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    .line 1557
    new-instance v1, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-direct {v1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;-><init>()V

    iput-object v1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->exceptionalExitLabel:Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    .line 1558
    new-instance v2, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryStack;

    invoke-direct {v2, v1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryStack;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    iput-object v2, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->tryStack:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryStack;

    .line 1559
    new-instance v1, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    invoke-direct {v1, v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    iput-object v1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->returnTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    .line 1560
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->breakLabels:Ljava/util/Map;

    .line 1561
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->continueLabels:Ljava/util/Map;

    .line 1562
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->returnNodes:Ljava/util/List;

    .line 1563
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->declaredClasses:Ljava/util/List;

    .line 1564
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->declaredLambdas:Ljava/util/List;

    .line 1565
    return-void
.end method

.method static synthetic access$1300(Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;)Ljavax/lang/model/element/Element;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;

    .line 1421
    invoke-direct {p0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->findOwner()Ljavax/lang/model/element/Element;

    move-result-object v0

    return-object v0
.end method

.method private createIncrementOrDecrementAssign(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;Z)Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;
    .locals 15
    .param p1, "target"    # Lcom/sun/source/tree/Tree;
    .param p2, "expr"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p3, "isIncrement"    # Z

    .line 4686
    move-object v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p2 .. p2}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v2

    check-cast v2, Lcom/sun/source/tree/ExpressionTree;

    .line 4687
    .local v2, "exprTree":Lcom/sun/source/tree/ExpressionTree;
    invoke-virtual/range {p2 .. p2}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    .line 4688
    .local v3, "exprType":Ljavax/lang/model/type/TypeMirror;
    iget-object v4, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->types:Ljavax/lang/model/util/Types;

    sget-object v5, Ljavax/lang/model/type/TypeKind;->INT:Ljavax/lang/model/type/TypeKind;

    invoke-interface {v4, v5}, Ljavax/lang/model/util/Types;->getPrimitiveType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object v4

    .line 4689
    .local v4, "oneType":Ljavax/lang/model/type/TypeMirror;
    invoke-virtual {p0, v3, v4}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->binaryPromotedType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    .line 4691
    .local v5, "promotedType":Ljavax/lang/model/type/TypeMirror;
    iget-object v6, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildLiteral(Ljava/lang/Object;)Lcom/sun/source/tree/LiteralTree;

    move-result-object v6

    .line 4692
    .local v6, "oneTree":Lcom/sun/source/tree/LiteralTree;
    invoke-virtual {p0, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 4694
    invoke-virtual {p0, v1, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->binaryNumericPromotion(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v7

    .line 4695
    .local v7, "exprRHS":Lorg/checkerframework/dataflow/cfg/node/Node;
    new-instance v8, Lorg/checkerframework/dataflow/cfg/node/IntegerLiteralNode;

    invoke-direct {v8, v6}, Lorg/checkerframework/dataflow/cfg/node/IntegerLiteralNode;-><init>(Lcom/sun/source/tree/LiteralTree;)V

    .line 4696
    .local v8, "one":Lorg/checkerframework/dataflow/cfg/node/Node;
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/checkerframework/dataflow/cfg/node/Node;->setInSource(Z)V

    .line 4697
    invoke-virtual {p0, v8}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 4698
    invoke-virtual {p0, v8, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->binaryNumericPromotion(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v8

    .line 4700
    iget-object v10, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    .line 4703
    if-eqz p3, :cond_0

    sget-object v11, Lcom/sun/source/tree/Tree$Kind;->PLUS:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_0

    :cond_0
    sget-object v11, Lcom/sun/source/tree/Tree$Kind;->MINUS:Lcom/sun/source/tree/Tree$Kind;

    .line 4701
    :goto_0
    invoke-virtual {v10, v5, v11, v2, v6}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildBinary(Ljavax/lang/model/type/TypeMirror;Lcom/sun/source/tree/Tree$Kind;Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/BinaryTree;

    move-result-object v10

    .line 4706
    .local v10, "operTree":Lcom/sun/source/tree/BinaryTree;
    invoke-virtual {p0, v10}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 4709
    if-eqz p3, :cond_1

    .line 4710
    new-instance v11, Lorg/checkerframework/dataflow/cfg/node/NumericalAdditionNode;

    invoke-direct {v11, v10, v7, v8}, Lorg/checkerframework/dataflow/cfg/node/NumericalAdditionNode;-><init>(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .local v11, "operNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    goto :goto_1

    .line 4712
    .end local v11    # "operNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_1
    new-instance v11, Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;

    invoke-direct {v11, v10, v7, v8}, Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;-><init>(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 4714
    .restart local v11    # "operNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    :goto_1
    invoke-virtual {v11, v9}, Lorg/checkerframework/dataflow/cfg/node/Node;->setInSource(Z)V

    .line 4715
    invoke-virtual {p0, v11}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 4717
    invoke-virtual {p0, v11, v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->narrowAndBox(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v12

    .line 4719
    .local v12, "narrowed":Lorg/checkerframework/dataflow/cfg/node/Node;
    if-nez p1, :cond_2

    .line 4720
    iget-object v13, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    invoke-virtual {v12}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v14

    check-cast v14, Lcom/sun/source/tree/ExpressionTree;

    invoke-virtual {v13, v2, v14}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildAssignment(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/AssignmentTree;

    move-result-object v13

    .line 4721
    .end local p1    # "target":Lcom/sun/source/tree/Tree;
    .local v13, "target":Lcom/sun/source/tree/Tree;
    invoke-virtual {p0, v13}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    goto :goto_2

    .line 4719
    .end local v13    # "target":Lcom/sun/source/tree/Tree;
    .restart local p1    # "target":Lcom/sun/source/tree/Tree;
    :cond_2
    move-object/from16 v13, p1

    .line 4724
    .end local p1    # "target":Lcom/sun/source/tree/Tree;
    .restart local v13    # "target":Lcom/sun/source/tree/Tree;
    :goto_2
    new-instance v14, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;

    invoke-direct {v14, v13, v1, v12}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;-><init>(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 4725
    .local v14, "assignNode":Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;
    invoke-virtual {v14, v9}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;->setInSource(Z)V

    .line 4726
    invoke-virtual {p0, v14}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v9

    check-cast v9, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;

    return-object v9
.end method

.method private findOwner()Ljavax/lang/model/element/Element;
    .locals 3

    .line 2598
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingMethod(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/MethodTree;

    move-result-object v0

    .line 2599
    .local v0, "enclosingMethod":Lcom/sun/source/tree/MethodTree;
    if-eqz v0, :cond_0

    .line 2600
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/MethodTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v1

    return-object v1

    .line 2602
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingClass(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/ClassTree;

    move-result-object v1

    .line 2603
    .local v1, "enclosingClass":Lcom/sun/source/tree/ClassTree;
    invoke-static {v1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/ClassTree;)Ljavax/lang/model/element/TypeElement;

    move-result-object v2

    return-object v2
.end method

.method private getReceiver(Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 4
    .param p1, "tree"    # Lcom/sun/source/tree/ExpressionTree;

    .line 2715
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isFieldAccess(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isMethodAccess(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2716
    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->MEMBER_SELECT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_2

    .line 2717
    move-object v0, p1

    check-cast v0, Lcom/sun/source/tree/MemberSelectTree;

    .line 2718
    .local v0, "mtree":Lcom/sun/source/tree/MemberSelectTree;
    invoke-interface {v0}, Lcom/sun/source/tree/MemberSelectTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/dataflow/cfg/node/Node;

    return-object v1

    .line 2720
    .end local v0    # "mtree":Lcom/sun/source/tree/MemberSelectTree;
    :cond_2
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 2721
    .local v0, "ele":Ljavax/lang/model/element/Element;
    invoke-static {v0}, Lorg/checkerframework/javacutil/ElementUtils;->enclosingClass(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object v1

    .line 2722
    .local v1, "declaringClass":Ljavax/lang/model/element/TypeElement;
    invoke-static {v1}, Lorg/checkerframework/javacutil/ElementUtils;->getType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    .line 2723
    .local v2, "type":Ljavax/lang/model/type/TypeMirror;
    invoke-static {v0}, Lorg/checkerframework/javacutil/ElementUtils;->isStatic(Ljavax/lang/model/element/Element;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2724
    new-instance v3, Lorg/checkerframework/dataflow/cfg/node/ClassNameNode;

    invoke-direct {v3, v2, v1}, Lorg/checkerframework/dataflow/cfg/node/ClassNameNode;-><init>(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/element/Element;)V

    .line 2725
    .local v3, "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p0, v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 2726
    return-object v3

    .line 2728
    .end local v3    # "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_3
    new-instance v3, Lorg/checkerframework/dataflow/cfg/node/ImplicitThisLiteralNode;

    invoke-direct {v3, v2}, Lorg/checkerframework/dataflow/cfg/node/ImplicitThisLiteralNode;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 2729
    .restart local v3    # "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p0, v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 2730
    return-object v3
.end method

.method private getTreeInfo(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$TreeInfo;
    .locals 11
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 1952
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 1953
    .local v0, "type":Ljavax/lang/model/type/TypeMirror;
    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isBoxedPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v7

    .line 1954
    .local v7, "boxed":Z
    if-eqz v7, :cond_0

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->types:Ljavax/lang/model/util/Types;

    invoke-interface {v1, v0}, Ljavax/lang/model/util/Types;->unboxedType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object v1

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, v0

    .line 1956
    .local v6, "unboxedType":Ljavax/lang/model/type/TypeMirror;
    :goto_0
    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isBooleanType(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v8

    .line 1957
    .local v8, "bool":Z
    invoke-static {v6}, Lorg/checkerframework/javacutil/TypesUtils;->isNumeric(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v9

    .line 1959
    .local v9, "numeric":Z
    new-instance v10, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$1;

    move-object v1, v10

    move-object v2, p0

    move v3, v9

    move v4, v7

    move v5, v8

    invoke-direct/range {v1 .. v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$1;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;ZZZLjavax/lang/model/type/TypeMirror;)V

    return-object v10
.end method

.method private hasExceptionalPath(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)Z
    .locals 6
    .param p1, "target"    # Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    .line 4505
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->nodeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;

    .line 4506
    .local v1, "node":Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;
    instance-of v2, v1, Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;

    if-eqz v2, :cond_1

    .line 4507
    move-object v2, v1

    check-cast v2, Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;

    .line 4508
    .local v2, "exceptionalNode":Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;
    invoke-virtual {v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;->getExceptions()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 4509
    .local v4, "labels":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    invoke-interface {v4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4510
    const/4 v0, 0x1

    return v0

    .line 4512
    .end local v4    # "labels":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    :cond_0
    goto :goto_1

    .line 4514
    .end local v1    # "node":Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;
    .end local v2    # "exceptionalNode":Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;
    :cond_1
    goto :goto_0

    .line 4515
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private unboxAsNeeded(Lorg/checkerframework/dataflow/cfg/node/Node;Z)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "boxed"    # Z

    .line 1984
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->unbox(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method


# virtual methods
.method protected addLabelForNextNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V
    .locals 2
    .param p1, "l"    # Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    .line 1845
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->bindings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1846
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->leaders:Ljava/util/Set;

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->nodeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1847
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->bindings:Ljava/util/Map;

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->nodeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1848
    return-void

    .line 1845
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected addToConvertedLookupMap(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;)V
    .locals 3
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 1687
    if-eqz p1, :cond_3

    .line 1688
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeLookupMap:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1689
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->convertedTreeLookupMap:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1690
    .local v0, "existing":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    if-nez v0, :cond_0

    .line 1691
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->convertedTreeLookupMap:Ljava/util/IdentityHashMap;

    new-instance v2, Lorg/checkerframework/dataflow/util/IdentityMostlySingleton;

    invoke-direct {v2, p2}, Lorg/checkerframework/dataflow/util/IdentityMostlySingleton;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1692
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1693
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1697
    :cond_1
    :goto_0
    return-void

    .line 1688
    .end local v0    # "existing":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1687
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected addToConvertedLookupMap(Lorg/checkerframework/dataflow/cfg/node/Node;)V
    .locals 1
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 1674
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v0

    .line 1675
    .local v0, "tree":Lcom/sun/source/tree/Tree;
    invoke-virtual {p0, v0, p1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addToConvertedLookupMap(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 1676
    return-void
.end method

.method protected addToLookupMap(Lorg/checkerframework/dataflow/cfg/node/Node;)V
    .locals 6
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 1641
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v0

    .line 1642
    .local v0, "tree":Lcom/sun/source/tree/Tree;
    if-nez v0, :cond_0

    .line 1643
    return-void

    .line 1645
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeLookupMap:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 1646
    .local v1, "existing":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    if-nez v1, :cond_1

    .line 1647
    iget-object v2, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeLookupMap:Ljava/util/IdentityHashMap;

    new-instance v3, Lorg/checkerframework/dataflow/util/IdentityMostlySingleton;

    invoke-direct {v3, p1}, Lorg/checkerframework/dataflow/util/IdentityMostlySingleton;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v0, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1648
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1649
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1654
    :cond_2
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->parenMapping:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/source/tree/Tree;

    .line 1655
    .local v2, "enclosingParens":Lcom/sun/source/tree/Tree;
    :goto_1
    if-eqz v2, :cond_5

    .line 1656
    iget-object v3, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeLookupMap:Ljava/util/IdentityHashMap;

    invoke-virtual {v3, v2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 1657
    .local v3, "exp":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    if-nez v3, :cond_3

    .line 1658
    iget-object v4, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeLookupMap:Ljava/util/IdentityHashMap;

    new-instance v5, Lorg/checkerframework/dataflow/util/IdentityMostlySingleton;

    invoke-direct {v5, p1}, Lorg/checkerframework/dataflow/util/IdentityMostlySingleton;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v2, v5}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1659
    :cond_3
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1660
    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1662
    :cond_4
    :goto_2
    iget-object v4, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->parenMapping:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Lcom/sun/source/tree/Tree;

    .line 1663
    .end local v3    # "exp":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    goto :goto_1

    .line 1664
    :cond_5
    return-void
.end method

.method protected addToUnaryAssignLookupMap(Lcom/sun/source/tree/UnaryTree;Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;)V
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/UnaryTree;
    .param p2, "unaryAssignNode"    # Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;

    .line 1707
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->unaryAssignNodeLookupMap:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1708
    return-void
.end method

.method protected assignConvert(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "varType"    # Ljavax/lang/model/type/TypeMirror;

    .line 2250
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->commonConvert(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;Z)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    return-object v0
.end method

.method protected assumeAssertionsEnabledFor(Lcom/sun/source/tree/AssertTree;)Z
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/AssertTree;

    .line 2570
    const/4 v0, 0x0

    return v0
.end method

.method protected binaryNumericPromotion(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 2
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "exprType"    # Ljavax/lang/model/type/TypeMirror;

    .line 2077
    invoke-virtual {p0, p1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->unbox(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    .line 2079
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->types:Ljavax/lang/model/util/Types;

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljavax/lang/model/util/Types;->isSameType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2080
    new-instance v0, Lorg/checkerframework/dataflow/cfg/node/WideningConversionNode;

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/WideningConversionNode;-><init>(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)V

    .line 2081
    .local v0, "widened":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p0, v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addToConvertedLookupMap(Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 2082
    invoke-virtual {p0, v0, p1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->insertNodeAfter(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 2083
    return-object v0

    .line 2085
    .end local v0    # "widened":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_0
    return-object p1
.end method

.method protected binaryPromotedType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;
    .locals 2
    .param p1, "left"    # Ljavax/lang/model/type/TypeMirror;
    .param p2, "right"    # Ljavax/lang/model/type/TypeMirror;

    .line 2058
    invoke-static {p1}, Lorg/checkerframework/javacutil/TypesUtils;->isBoxedPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2059
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->types:Ljavax/lang/model/util/Types;

    invoke-interface {v0, p1}, Ljavax/lang/model/util/Types;->unboxedType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object p1

    .line 2061
    :cond_0
    invoke-static {p2}, Lorg/checkerframework/javacutil/TypesUtils;->isBoxedPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2062
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->types:Ljavax/lang/model/util/Types;

    invoke-interface {v0, p2}, Ljavax/lang/model/util/Types;->unboxedType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object p2

    .line 2064
    :cond_1
    invoke-static {p1, p2}, Lorg/checkerframework/javacutil/TypesUtils;->widenedNumericType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    .line 2065
    .local v0, "promotedTypeKind":Ljavax/lang/model/type/TypeKind;
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->types:Ljavax/lang/model/util/Types;

    invoke-interface {v1, v0}, Ljavax/lang/model/util/Types;->getPrimitiveType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object v1

    return-object v1
.end method

.method protected box(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 12
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 1870
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1871
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->types:Ljavax/lang/model/util/Types;

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Types;->getPrimitiveType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object v0

    .line 1872
    .local v0, "primitive":Ljavax/lang/model/type/PrimitiveType;
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->types:Ljavax/lang/model/util/Types;

    invoke-interface {v1, v0}, Ljavax/lang/model/util/Types;->boxedClass(Ljavax/lang/model/type/PrimitiveType;)Ljavax/lang/model/element/TypeElement;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljavax/lang/model/type/TypeMirror;

    invoke-interface {v1, v2, v4}, Ljavax/lang/model/util/Types;->getDeclaredType(Ljavax/lang/model/element/TypeElement;[Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object v1

    .line 1874
    .local v1, "boxedType":Ljavax/lang/model/type/TypeMirror;
    move-object v2, v1

    check-cast v2, Ljavax/lang/model/type/DeclaredType;

    invoke-interface {v2}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/TypeElement;

    .line 1875
    .local v2, "boxedElement":Ljavax/lang/model/element/TypeElement;
    iget-object v4, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    invoke-virtual {v4, v2}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildClassUse(Ljavax/lang/model/element/Element;)Lcom/sun/source/tree/IdentifierTree;

    move-result-object v4

    .line 1876
    .local v4, "classTree":Lcom/sun/source/tree/IdentifierTree;
    invoke-virtual {p0, v4}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 1877
    new-instance v5, Lorg/checkerframework/dataflow/cfg/node/ClassNameNode;

    invoke-direct {v5, v4}, Lorg/checkerframework/dataflow/cfg/node/ClassNameNode;-><init>(Lcom/sun/source/tree/IdentifierTree;)V

    .line 1878
    .local v5, "className":Lorg/checkerframework/dataflow/cfg/node/ClassNameNode;
    invoke-virtual {v5, v3}, Lorg/checkerframework/dataflow/cfg/node/ClassNameNode;->setInSource(Z)V

    .line 1879
    invoke-virtual {p0, v5, p1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->insertNodeAfter(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 1881
    iget-object v6, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    invoke-virtual {v6, v4}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildValueOfMethodAccess(Lcom/sun/source/tree/Tree;)Lcom/sun/source/tree/MemberSelectTree;

    move-result-object v6

    .line 1882
    .local v6, "valueOfSelect":Lcom/sun/source/tree/MemberSelectTree;
    invoke-virtual {p0, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 1883
    new-instance v7, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;

    invoke-direct {v7, v6, v5}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;-><init>(Lcom/sun/source/tree/ExpressionTree;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 1884
    .local v7, "valueOfAccess":Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;
    invoke-virtual {v7, v3}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->setInSource(Z)V

    .line 1885
    invoke-virtual {p0, v7, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->insertNodeAfter(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 1887
    iget-object v8, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    .line 1889
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v9

    check-cast v9, Lcom/sun/source/tree/ExpressionTree;

    .line 1888
    invoke-virtual {v8, v6, v9}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildMethodInvocation(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/MethodInvocationTree;

    move-result-object v8

    .line 1890
    .local v8, "valueOfCall":Lcom/sun/source/tree/MethodInvocationTree;
    invoke-virtual {p0, v8}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 1891
    new-instance v9, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;

    .line 1895
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 1896
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v11

    invoke-direct {v9, v8, v7, v10, v11}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;-><init>(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;Ljava/util/List;Lcom/sun/source/util/TreePath;)V

    .line 1897
    .local v9, "boxed":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {v9, v3}, Lorg/checkerframework/dataflow/cfg/node/Node;->setInSource(Z)V

    .line 1899
    iget-object v3, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->elements:Ljavax/lang/model/util/Elements;

    const-string v10, "java.lang.Throwable"

    invoke-interface {v3, v10}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v3

    .line 1900
    .local v3, "throwableElement":Ljavax/lang/model/element/TypeElement;
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v10

    invoke-virtual {p0, v10, v9}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addToConvertedLookupMap(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 1901
    nop

    .line 1902
    invoke-interface {v3}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v10

    .line 1901
    invoke-virtual {p0, v9, v10, v7}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->insertNodeWithExceptionsAfter(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/util/Set;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;

    .line 1903
    return-object v9

    .line 1905
    .end local v0    # "primitive":Ljavax/lang/model/type/PrimitiveType;
    .end local v1    # "boxedType":Ljavax/lang/model/type/TypeMirror;
    .end local v2    # "boxedElement":Ljavax/lang/model/element/TypeElement;
    .end local v3    # "throwableElement":Ljavax/lang/model/element/TypeElement;
    .end local v4    # "classTree":Lcom/sun/source/tree/IdentifierTree;
    .end local v5    # "className":Lorg/checkerframework/dataflow/cfg/node/ClassNameNode;
    .end local v6    # "valueOfSelect":Lcom/sun/source/tree/MemberSelectTree;
    .end local v7    # "valueOfAccess":Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;
    .end local v8    # "valueOfCall":Lcom/sun/source/tree/MethodInvocationTree;
    .end local v9    # "boxed":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_0
    return-object p1
.end method

.method protected commonConvert(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;Z)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 11
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "varType"    # Ljavax/lang/model/type/TypeMirror;
    .param p3, "contextAllowsNarrowing"    # Z

    .line 2190
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 2191
    .local v0, "nodeType":Ljavax/lang/model/type/TypeMirror;
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->types:Ljavax/lang/model/util/Types;

    invoke-interface {v1, v0, p2}, Ljavax/lang/model/util/Types;->isSameType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v1

    .line 2192
    .local v1, "isSameType":Z
    if-eqz v1, :cond_0

    .line 2193
    return-object p1

    .line 2196
    :cond_0
    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isNumeric(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v2

    .line 2197
    .local v2, "isRightNumeric":Z
    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v3

    .line 2198
    .local v3, "isRightPrimitive":Z
    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isBoxedPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v4

    .line 2199
    .local v4, "isRightBoxed":Z
    instance-of v5, v0, Ljavax/lang/model/type/ReferenceType;

    .line 2200
    .local v5, "isRightReference":Z
    invoke-static {p2}, Lorg/checkerframework/javacutil/TypesUtils;->isNumeric(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v6

    .line 2201
    .local v6, "isLeftNumeric":Z
    invoke-static {p2}, Lorg/checkerframework/javacutil/TypesUtils;->isPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v7

    .line 2203
    .local v7, "isLeftPrimitive":Z
    instance-of v8, p2, Ljavax/lang/model/type/ReferenceType;

    .line 2204
    .local v8, "isLeftReference":Z
    iget-object v9, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->types:Ljavax/lang/model/util/Types;

    invoke-interface {v9, v0, p2}, Ljavax/lang/model/util/Types;->isSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v9

    .line 2206
    .local v9, "isSubtype":Z
    if-eqz v2, :cond_1

    if-eqz v6, :cond_1

    if-eqz v9, :cond_1

    .line 2207
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->widen(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    .line 2208
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    goto :goto_0

    .line 2209
    :cond_1
    if-eqz v5, :cond_2

    if-eqz v8, :cond_2

    if-eqz v9, :cond_2

    goto :goto_0

    .line 2212
    :cond_2
    if-eqz v3, :cond_4

    if-eqz v8, :cond_4

    .line 2213
    if-eqz p3, :cond_3

    invoke-virtual {p0, p2, p1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->conversionRequiresNarrowing(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/dataflow/cfg/node/Node;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2214
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->narrowAndBox(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    .line 2215
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    goto :goto_0

    .line 2217
    :cond_3
    invoke-virtual {p0, p1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->box(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    .line 2218
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    goto :goto_0

    .line 2220
    :cond_4
    if-eqz v4, :cond_5

    if-eqz v7, :cond_5

    .line 2221
    invoke-virtual {p0, p1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->unbox(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    .line 2222
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 2224
    iget-object v10, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->types:Ljavax/lang/model/util/Types;

    invoke-interface {v10, v0, p2}, Ljavax/lang/model/util/Types;->isSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->types:Ljavax/lang/model/util/Types;

    invoke-interface {v10, v0, p2}, Ljavax/lang/model/util/Types;->isSameType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 2225
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->widen(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    .line 2226
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    goto :goto_0

    .line 2228
    :cond_5
    if-eqz v3, :cond_6

    if-eqz v7, :cond_6

    .line 2229
    if-eqz p3, :cond_6

    invoke-virtual {p0, p2, p1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->conversionRequiresNarrowing(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/dataflow/cfg/node/Node;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2230
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->narrow(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    .line 2231
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 2238
    :cond_6
    :goto_0
    return-object p1
.end method

.method protected conditionalExprPromotion(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 7
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "destType"    # Ljavax/lang/model/type/TypeMirror;

    .line 2357
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 2361
    .local v0, "nodeType":Ljavax/lang/model/type/TypeMirror;
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->types:Ljavax/lang/model/util/Types;

    invoke-interface {v1, v0, p2}, Ljavax/lang/model/util/Types;->isSameType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2362
    return-object p1

    .line 2367
    :cond_0
    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Lorg/checkerframework/javacutil/TypesUtils;->isBoxedPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2368
    invoke-virtual {p0, p1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->box(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    return-object v1

    .line 2373
    :cond_1
    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isBoxedPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v1

    .line 2374
    .local v1, "isBoxedPrimitive":Z
    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->types:Ljavax/lang/model/util/Types;

    invoke-interface {v2, v0}, Ljavax/lang/model/util/Types;->unboxedType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v0

    .line 2376
    .local v2, "unboxedNodeType":Ljavax/lang/model/type/TypeMirror;
    :goto_0
    invoke-static {p2}, Lorg/checkerframework/javacutil/TypesUtils;->isBoxedPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->types:Ljavax/lang/model/util/Types;

    invoke-interface {v3, p2}, Ljavax/lang/model/util/Types;->unboxedType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object v3

    goto :goto_1

    :cond_3
    move-object v3, p2

    .line 2377
    .local v3, "unboxedDestType":Ljavax/lang/model/type/TypeMirror;
    :goto_1
    invoke-static {v2}, Lorg/checkerframework/javacutil/TypesUtils;->isNumeric(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {v3}, Lorg/checkerframework/javacutil/TypesUtils;->isNumeric(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2378
    invoke-interface {v2}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/type/TypeKind;->BYTE:Ljavax/lang/model/type/TypeKind;

    if-ne v4, v5, :cond_5

    .line 2379
    invoke-interface {p2}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/type/TypeKind;->SHORT:Ljavax/lang/model/type/TypeKind;

    if-ne v4, v5, :cond_5

    .line 2380
    if-eqz v1, :cond_4

    .line 2381
    invoke-virtual {p0, p1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->unbox(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    .line 2383
    :cond_4
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->widen(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v4

    return-object v4

    .line 2388
    :cond_5
    invoke-interface {p2}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    .line 2389
    .local v4, "destKind":Ljavax/lang/model/type/TypeKind;
    sget-object v5, Ljavax/lang/model/type/TypeKind;->BYTE:Ljavax/lang/model/type/TypeKind;

    if-eq v4, v5, :cond_6

    sget-object v5, Ljavax/lang/model/type/TypeKind;->CHAR:Ljavax/lang/model/type/TypeKind;

    if-eq v4, v5, :cond_6

    sget-object v5, Ljavax/lang/model/type/TypeKind;->SHORT:Ljavax/lang/model/type/TypeKind;

    if-ne v4, v5, :cond_8

    .line 2392
    :cond_6
    if-eqz v1, :cond_7

    .line 2393
    invoke-virtual {p0, p1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->unbox(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v5

    return-object v5

    .line 2394
    :cond_7
    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v5

    sget-object v6, Ljavax/lang/model/type/TypeKind;->INT:Ljavax/lang/model/type/TypeKind;

    if-ne v5, v6, :cond_8

    .line 2395
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->narrow(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v5

    return-object v5

    .line 2399
    :cond_8
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->binaryNumericPromotion(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v5

    return-object v5

    .line 2403
    .end local v4    # "destKind":Ljavax/lang/model/type/TypeKind;
    :cond_9
    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2404
    invoke-interface {p2}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-eq v4, v5, :cond_a

    .line 2405
    invoke-interface {p2}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/type/TypeKind;->UNION:Ljavax/lang/model/type/TypeKind;

    if-eq v4, v5, :cond_a

    .line 2406
    invoke-interface {p2}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/type/TypeKind;->INTERSECTION:Ljavax/lang/model/type/TypeKind;

    if-ne v4, v5, :cond_b

    .line 2407
    :cond_a
    invoke-virtual {p0, p1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->box(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v4

    return-object v4

    .line 2410
    :cond_b
    return-object p1
.end method

.method protected conversionRequiresNarrowing(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/dataflow/cfg/node/Node;)Z
    .locals 6
    .param p1, "varType"    # Ljavax/lang/model/type/TypeMirror;
    .param p2, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 2163
    invoke-static {p1}, Lorg/checkerframework/javacutil/TypesUtils;->isBoxedPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->types:Ljavax/lang/model/util/Types;

    invoke-interface {v0, p1}, Ljavax/lang/model/util/Types;->unboxedType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 2164
    .local v0, "unboxedVarType":Ljavax/lang/model/type/TypeMirror;
    :goto_0
    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    .line 2165
    .local v1, "unboxedVarKind":Ljavax/lang/model/type/TypeKind;
    sget-object v2, Ljavax/lang/model/type/TypeKind;->BYTE:Ljavax/lang/model/type/TypeKind;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    sget-object v2, Ljavax/lang/model/type/TypeKind;->SHORT:Ljavax/lang/model/type/TypeKind;

    if-eq v1, v2, :cond_2

    sget-object v2, Ljavax/lang/model/type/TypeKind;->CHAR:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v4

    .line 2169
    .local v2, "isLeftNarrowableTo":Z
    :goto_2
    instance-of v5, p2, Lorg/checkerframework/dataflow/cfg/node/ValueLiteralNode;

    .line 2170
    .local v5, "isRightConstant":Z
    if-eqz v2, :cond_3

    if-eqz v5, :cond_3

    move v3, v4

    :cond_3
    return v3
.end method

.method protected convertCallArguments(Ljavax/lang/model/element/ExecutableElement;Ljava/util/List;)Ljava/util/List;
    .locals 16
    .param p1, "method"    # Ljavax/lang/model/element/ExecutableElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljava/util/List<",
            "+",
            "Lcom/sun/source/tree/ExpressionTree;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;"
        }
    .end annotation

    .line 2283
    .local p2, "actualExprs":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v2

    .line 2285
    .local v2, "formals":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/VariableElement;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2287
    .local v3, "convertedNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 2288
    .local v4, "numFormals":I
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    .line 2289
    .local v5, "numActuals":I
    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/ExecutableElement;->isVarArgs()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_5

    .line 2293
    add-int/lit8 v6, v4, -0x1

    .line 2294
    .local v6, "lastArgIndex":I
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/lang/model/element/VariableElement;

    invoke-interface {v8}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v8

    .line 2295
    .local v8, "lastParamType":Ljavax/lang/model/type/TypeMirror;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2296
    .local v9, "dimensions":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2297
    .local v10, "initializers":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    if-ne v5, v4, :cond_1

    iget-object v11, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->types:Ljavax/lang/model/util/Types;

    add-int/lit8 v12, v5, -0x1

    .line 2299
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sun/source/tree/Tree;

    invoke-static {v12}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v12

    .line 2298
    invoke-interface {v11, v12, v8}, Ljavax/lang/model/util/Types;->isAssignable(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2302
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v5, :cond_0

    .line 2303
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sun/source/tree/Tree;

    invoke-virtual {v0, v12, v7}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 2304
    .local v12, "actualVal":Lorg/checkerframework/dataflow/cfg/node/Node;
    nop

    .line 2305
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljavax/lang/model/element/VariableElement;

    invoke-interface {v13}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->methodInvocationConvert(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v13

    .line 2304
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2302
    .end local v12    # "actualVal":Lorg/checkerframework/dataflow/cfg/node/Node;
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .end local v11    # "i":I
    :cond_0
    goto :goto_3

    .line 2308
    :cond_1
    instance-of v11, v8, Ljavax/lang/model/type/ArrayType;

    if-eqz v11, :cond_4

    .line 2313
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_1
    if-ge v11, v6, :cond_2

    .line 2314
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sun/source/tree/Tree;

    invoke-virtual {v0, v12, v7}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 2315
    .restart local v12    # "actualVal":Lorg/checkerframework/dataflow/cfg/node/Node;
    nop

    .line 2316
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljavax/lang/model/element/VariableElement;

    invoke-interface {v13}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->methodInvocationConvert(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v13

    .line 2315
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2313
    .end local v12    # "actualVal":Lorg/checkerframework/dataflow/cfg/node/Node;
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2319
    .end local v11    # "i":I
    :cond_2
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2320
    .local v11, "inits":Ljava/util/List;, "Ljava/util/List<Lcom/sun/source/tree/ExpressionTree;>;"
    move-object v12, v8

    check-cast v12, Ljavax/lang/model/type/ArrayType;

    invoke-interface {v12}, Ljavax/lang/model/type/ArrayType;->getComponentType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v12

    .line 2321
    .local v12, "elemType":Ljavax/lang/model/type/TypeMirror;
    move v13, v6

    .local v13, "i":I
    :goto_2
    if-ge v13, v5, :cond_3

    .line 2322
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sun/source/tree/ExpressionTree;

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2323
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sun/source/tree/Tree;

    invoke-virtual {v0, v14, v7}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 2324
    .local v14, "actualVal":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {v0, v14, v12}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->assignConvert(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v15

    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2321
    .end local v14    # "actualVal":Lorg/checkerframework/dataflow/cfg/node/Node;
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 2327
    .end local v13    # "i":I
    :cond_3
    iget-object v7, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    invoke-virtual {v7, v12, v11}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildNewArray(Ljavax/lang/model/type/TypeMirror;Ljava/util/List;)Lcom/sun/source/tree/NewArrayTree;

    move-result-object v7

    .line 2328
    .local v7, "wrappedVarargs":Lcom/sun/source/tree/NewArrayTree;
    invoke-virtual {v0, v7}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 2330
    new-instance v13, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;

    invoke-direct {v13, v7, v8, v9, v10}, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;-><init>(Lcom/sun/source/tree/NewArrayTree;Ljavax/lang/model/type/TypeMirror;Ljava/util/List;Ljava/util/List;)V

    .line 2333
    .local v13, "lastArgument":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {v0, v13}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 2335
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2337
    .end local v6    # "lastArgIndex":I
    .end local v7    # "wrappedVarargs":Lcom/sun/source/tree/NewArrayTree;
    .end local v8    # "lastParamType":Ljavax/lang/model/type/TypeMirror;
    .end local v9    # "dimensions":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    .end local v10    # "initializers":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    .end local v11    # "inits":Ljava/util/List;, "Ljava/util/List<Lcom/sun/source/tree/ExpressionTree;>;"
    .end local v12    # "elemType":Ljavax/lang/model/type/TypeMirror;
    .end local v13    # "lastArgument":Lorg/checkerframework/dataflow/cfg/node/Node;
    :goto_3
    goto :goto_5

    .line 2308
    .restart local v6    # "lastArgIndex":I
    .restart local v8    # "lastParamType":Ljavax/lang/model/type/TypeMirror;
    .restart local v9    # "dimensions":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    .restart local v10    # "initializers":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    :cond_4
    new-instance v7, Ljava/lang/AssertionError;

    const-string v11, "variable argument formal must be an array"

    invoke-direct {v7, v11}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 2338
    .end local v6    # "lastArgIndex":I
    .end local v8    # "lastParamType":Ljavax/lang/model/type/TypeMirror;
    .end local v9    # "dimensions":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    .end local v10    # "initializers":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    :cond_5
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    if-ge v6, v5, :cond_6

    .line 2339
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/source/tree/Tree;

    invoke-virtual {v0, v8, v7}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 2340
    .local v8, "actualVal":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavax/lang/model/element/VariableElement;

    invoke-interface {v9}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->methodInvocationConvert(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2338
    .end local v8    # "actualVal":Lorg/checkerframework/dataflow/cfg/node/Node;
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 2344
    .end local v6    # "i":I
    :cond_6
    :goto_5
    return-object v3
.end method

.method protected createEnhancedForLoopArrayVariable(Lcom/sun/source/tree/ExpressionTree;Ljavax/lang/model/element/VariableElement;)Lcom/sun/source/tree/VariableTree;
    .locals 4
    .param p1, "expression"    # Lcom/sun/source/tree/ExpressionTree;
    .param p2, "variableElement"    # Ljavax/lang/model/element/VariableElement;

    .line 3812
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 3815
    .local v0, "arrayType":Ljavax/lang/model/type/TypeMirror;
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    .line 3818
    const-string v2, "array"

    invoke-virtual {p0, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->uniqueName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3819
    invoke-interface {p2}, Ljavax/lang/model/element/VariableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v3

    .line 3816
    invoke-virtual {v1, v0, v2, v3, p1}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildVariableDecl(Ljavax/lang/model/type/TypeMirror;Ljava/lang/String;Ljavax/lang/model/element/Element;Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/VariableTree;

    move-result-object v1

    .line 3821
    .local v1, "arrayVariable":Lcom/sun/source/tree/VariableTree;
    return-object v1
.end method

.method protected createEnhancedForLoopIteratorVariable(Lcom/sun/source/tree/MethodInvocationTree;Ljavax/lang/model/element/VariableElement;)Lcom/sun/source/tree/VariableTree;
    .locals 4
    .param p1, "iteratorCall"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p2, "variableElement"    # Ljavax/lang/model/element/VariableElement;

    .line 3798
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 3801
    .local v0, "iteratorType":Ljavax/lang/model/type/TypeMirror;
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    .line 3804
    const-string v2, "iter"

    invoke-virtual {p0, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->uniqueName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3805
    invoke-interface {p2}, Ljavax/lang/model/element/VariableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v3

    .line 3802
    invoke-virtual {v1, v0, v2, v3, p1}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildVariableDecl(Ljavax/lang/model/type/TypeMirror;Ljava/lang/String;Ljavax/lang/model/element/Element;Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/VariableTree;

    move-result-object v1

    .line 3807
    .local v1, "iteratorVariable":Lcom/sun/source/tree/VariableTree;
    return-object v1
.end method

.method protected extendWithExtendedNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;)V
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;

    .line 1797
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->nodeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1798
    return-void
.end method

.method protected extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1717
    .local p1, "node":Lorg/checkerframework/dataflow/cfg/node/Node;, "TT;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addToLookupMap(Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 1718
    new-instance v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeHolder;

    invoke-direct {v0, p1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeHolder;-><init>(Lorg/checkerframework/dataflow/cfg/node/Node;)V

    invoke-virtual {p0, v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithExtendedNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;)V

    .line 1719
    return-object p1
.end method

.method protected extendWithNodeWithException(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;
    .locals 1
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "cause"    # Ljavax/lang/model/type/TypeMirror;

    .line 1732
    invoke-virtual {p0, p1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addToLookupMap(Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 1733
    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNodeWithExceptions(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/util/Set;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;

    move-result-object v0

    return-object v0
.end method

.method protected extendWithNodeWithExceptions(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/util/Set;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;
    .locals 4
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;)",
            "Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;"
        }
    .end annotation

    .line 1746
    .local p2, "causes":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/type/TypeMirror;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addToLookupMap(Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 1747
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1748
    .local v0, "exceptions":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/type/TypeMirror;Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/type/TypeMirror;

    .line 1749
    .local v2, "cause":Ljavax/lang/model/type/TypeMirror;
    iget-object v3, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->tryStack:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryStack;

    invoke-virtual {v3, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryStack;->possibleLabels(Ljavax/lang/model/type/TypeMirror;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1750
    .end local v2    # "cause":Ljavax/lang/model/type/TypeMirror;
    goto :goto_0

    .line 1751
    :cond_0
    new-instance v1, Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;

    invoke-direct {v1, p1, v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;-><init>(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/util/Map;)V

    .line 1752
    .local v1, "exNode":Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;
    invoke-virtual {p0, v1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithExtendedNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;)V

    .line 1753
    return-object v1
.end method

.method protected getAssertionsEnabledVariable()Lcom/sun/source/tree/VariableTree;
    .locals 6

    .line 2581
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->ea:Lcom/sun/source/tree/VariableTree;

    if-nez v0, :cond_0

    .line 2582
    const-string v0, "assertionsEnabled"

    invoke-virtual {p0, v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->uniqueName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2583
    .local v0, "name":Ljava/lang/String;
    invoke-direct {p0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->findOwner()Ljavax/lang/model/element/Element;

    move-result-object v1

    .line 2584
    .local v1, "owner":Ljavax/lang/model/element/Element;
    const/4 v2, 0x0

    .line 2585
    .local v2, "initializer":Lcom/sun/source/tree/ExpressionTree;
    iget-object v3, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    iget-object v4, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->types:Ljavax/lang/model/util/Types;

    sget-object v5, Ljavax/lang/model/type/TypeKind;->BOOLEAN:Ljavax/lang/model/type/TypeKind;

    .line 2587
    invoke-interface {v4, v5}, Ljavax/lang/model/util/Types;->getPrimitiveType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object v4

    .line 2586
    invoke-virtual {v3, v4, v0, v1, v2}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildVariableDecl(Ljavax/lang/model/type/TypeMirror;Ljava/lang/String;Ljavax/lang/model/element/Element;Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/VariableTree;

    move-result-object v3

    iput-object v3, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->ea:Lcom/sun/source/tree/VariableTree;

    .line 2589
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "owner":Ljavax/lang/model/element/Element;
    .end local v2    # "initializer":Lcom/sun/source/tree/ExpressionTree;
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->ea:Lcom/sun/source/tree/VariableTree;

    return-object v0
.end method

.method protected getLabel(Lcom/sun/source/util/TreePath;)Ljavax/lang/model/element/Name;
    .locals 3
    .param p1, "path"    # Lcom/sun/source/util/TreePath;

    .line 2418
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2419
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    .line 2420
    .local v0, "parent":Lcom/sun/source/tree/Tree;
    invoke-interface {v0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->LABELED_STATEMENT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v1, v2, :cond_0

    .line 2421
    move-object v1, v0

    check-cast v1, Lcom/sun/source/tree/LabeledStatementTree;

    invoke-interface {v1}, Lcom/sun/source/tree/LabeledStatementTree;->getLabel()Ljavax/lang/model/element/Name;

    move-result-object v1

    return-object v1

    .line 2424
    .end local v0    # "parent":Lcom/sun/source/tree/Tree;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleArtificialTree(Lcom/sun/source/tree/Tree;)V
    .locals 0
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 1629
    return-void
.end method

.method protected insertExtendedNodeAfter(Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;Lorg/checkerframework/dataflow/cfg/node/Node;)V
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;
    .param p2, "pred"    # Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 1808
    const/4 v0, -0x1

    .line 1809
    .local v0, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->nodeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1810
    iget-object v2, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->nodeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;

    .line 1811
    .local v2, "inList":Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;
    instance-of v3, v2, Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeHolder;

    if-nez v3, :cond_0

    instance-of v3, v2, Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;

    if-eqz v3, :cond_1

    .line 1812
    :cond_0
    invoke-virtual {v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;->getNode()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v3

    if-ne v3, p2, :cond_1

    .line 1813
    move v0, v1

    .line 1814
    goto :goto_1

    .line 1809
    .end local v2    # "inList":Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1818
    .end local v1    # "i":I
    :cond_2
    :goto_1
    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 1819
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->nodeList:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1821
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->bindings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1822
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    if-lt v3, v4, :cond_3

    .line 1823
    iget-object v3, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->bindings:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1825
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;Ljava/lang/Integer;>;"
    :cond_3
    goto :goto_2

    .line 1827
    :cond_4
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->leaders:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1828
    .local v1, "oldLeaders":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->leaders:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 1829
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1830
    .local v3, "l":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v5, v0, 0x1

    if-lt v4, v5, :cond_5

    .line 1831
    iget-object v4, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->leaders:Ljava/util/Set;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1833
    :cond_5
    iget-object v4, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->leaders:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1835
    .end local v3    # "l":Ljava/lang/Integer;
    :goto_4
    goto :goto_3

    .line 1836
    .end local v1    # "oldLeaders":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_6
    goto :goto_5

    .line 1837
    :cond_7
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->nodeList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1839
    :goto_5
    return-void
.end method

.method protected insertNodeAfter(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1
    .param p2, "pred"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">(TT;",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ")TT;"
        }
    .end annotation

    .line 1765
    .local p1, "node":Lorg/checkerframework/dataflow/cfg/node/Node;, "TT;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addToLookupMap(Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 1766
    new-instance v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeHolder;

    invoke-direct {v0, p1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeHolder;-><init>(Lorg/checkerframework/dataflow/cfg/node/Node;)V

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->insertExtendedNodeAfter(Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 1767
    return-object p1
.end method

.method protected insertNodeWithExceptionsAfter(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/util/Set;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;
    .locals 4
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p3, "pred"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ")",
            "Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;"
        }
    .end annotation

    .line 1781
    .local p2, "causes":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/type/TypeMirror;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addToLookupMap(Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 1782
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1783
    .local v0, "exceptions":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/type/TypeMirror;Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/type/TypeMirror;

    .line 1784
    .local v2, "cause":Ljavax/lang/model/type/TypeMirror;
    iget-object v3, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->tryStack:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryStack;

    invoke-virtual {v3, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryStack;->possibleLabels(Ljavax/lang/model/type/TypeMirror;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1785
    .end local v2    # "cause":Ljavax/lang/model/type/TypeMirror;
    goto :goto_0

    .line 1786
    :cond_0
    new-instance v1, Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;

    invoke-direct {v1, p1, v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;-><init>(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/util/Map;)V

    .line 1787
    .local v1, "exNode":Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;
    invoke-virtual {p0, v1, p3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->insertExtendedNodeAfter(Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 1788
    return-object v1
.end method

.method protected isNumericOrBoxed(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 1
    .param p1, "type"    # Ljavax/lang/model/type/TypeMirror;

    .line 2042
    invoke-static {p1}, Lorg/checkerframework/javacutil/TypesUtils;->isBoxedPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2043
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->types:Ljavax/lang/model/util/Types;

    invoke-interface {v0, p1}, Ljavax/lang/model/util/Types;->unboxedType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object p1

    .line 2045
    :cond_0
    invoke-static {p1}, Lorg/checkerframework/javacutil/TypesUtils;->isNumeric(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    return v0
.end method

.method protected methodInvocationConvert(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "formalType"    # Ljavax/lang/model/type/TypeMirror;

    .line 2263
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->commonConvert(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;Z)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    return-object v0
.end method

.method protected narrow(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 2
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "destType"    # Ljavax/lang/model/type/TypeMirror;

    .line 2121
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lorg/checkerframework/javacutil/TypesUtils;->isPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2123
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->types:Ljavax/lang/model/util/Types;

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljavax/lang/model/util/Types;->isSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->types:Ljavax/lang/model/util/Types;

    .line 2124
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljavax/lang/model/util/Types;->isSameType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2125
    new-instance v0, Lorg/checkerframework/dataflow/cfg/node/NarrowingConversionNode;

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/NarrowingConversionNode;-><init>(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)V

    .line 2126
    .local v0, "narrowed":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p0, v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addToConvertedLookupMap(Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 2127
    invoke-virtual {p0, v0, p1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->insertNodeAfter(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 2128
    return-object v0

    .line 2130
    .end local v0    # "narrowed":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_0
    return-object p1

    .line 2121
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "narrowing must be applied to primitive types"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method protected narrowAndBox(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "destType"    # Ljavax/lang/model/type/TypeMirror;

    .line 2144
    invoke-static {p2}, Lorg/checkerframework/javacutil/TypesUtils;->isBoxedPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2145
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->types:Ljavax/lang/model/util/Types;

    invoke-interface {v0, p2}, Ljavax/lang/model/util/Types;->unboxedType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->narrow(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->box(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    return-object v0

    .line 2147
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->narrow(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    return-object v0
.end method

.method public process(Lcom/sun/source/tree/CompilationUnitTree;Lorg/checkerframework/dataflow/cfg/UnderlyingAST;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;
    .locals 2
    .param p1, "root"    # Lcom/sun/source/tree/CompilationUnitTree;
    .param p2, "underlyingAST"    # Lorg/checkerframework/dataflow/cfg/UnderlyingAST;

    .line 1618
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->trees:Lcom/sun/source/util/Trees;

    invoke-virtual {p2}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST;->getCode()Lcom/sun/source/tree/Tree;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sun/source/util/Trees;->getPath(Lcom/sun/source/tree/CompilationUnitTree;Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v0

    .line 1619
    .local v0, "bodyPath":Lcom/sun/source/util/TreePath;
    if-eqz v0, :cond_0

    .line 1620
    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->process(Lcom/sun/source/util/TreePath;Lorg/checkerframework/dataflow/cfg/UnderlyingAST;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;

    move-result-object v1

    return-object v1

    .line 1619
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public process(Lcom/sun/source/util/TreePath;Lorg/checkerframework/dataflow/cfg/UnderlyingAST;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;
    .locals 18
    .param p1, "bodyPath"    # Lcom/sun/source/util/TreePath;
    .param p2, "underlyingAST"    # Lorg/checkerframework/dataflow/cfg/UnderlyingAST;

    .line 1576
    move-object/from16 v0, p0

    const/4 v1, 0x0

    move-object/from16 v2, p1

    invoke-virtual {v0, v2, v1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/util/TreePath;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 1580
    .local v1, "finalNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual/range {p2 .. p2}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST;->getKind()Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    move-result-object v3

    sget-object v4, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;->LAMBDA:Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    if-ne v3, v4, :cond_0

    .line 1581
    move-object/from16 v3, p2

    check-cast v3, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGLambda;

    .line 1582
    invoke-virtual {v3}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGLambda;->getLambdaTree()Lcom/sun/source/tree/LambdaExpressionTree;

    move-result-object v3

    .line 1583
    .local v3, "lambdaTree":Lcom/sun/source/tree/LambdaExpressionTree;
    invoke-interface {v3}, Lcom/sun/source/tree/LambdaExpressionTree;->getBodyKind()Lcom/sun/source/tree/LambdaExpressionTree$BodyKind;

    move-result-object v4

    sget-object v5, Lcom/sun/source/tree/LambdaExpressionTree$BodyKind;->EXPRESSION:Lcom/sun/source/tree/LambdaExpressionTree$BodyKind;

    if-ne v4, v5, :cond_0

    .line 1584
    new-instance v4, Lorg/checkerframework/dataflow/cfg/node/LambdaResultExpressionNode;

    .line 1586
    invoke-interface {v3}, Lcom/sun/source/tree/LambdaExpressionTree;->getBody()Lcom/sun/source/tree/Tree;

    move-result-object v5

    check-cast v5, Lcom/sun/source/tree/ExpressionTree;

    iget-object v6, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 1588
    invoke-interface {v6}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v6

    invoke-direct {v4, v5, v1, v6}, Lorg/checkerframework/dataflow/cfg/node/LambdaResultExpressionNode;-><init>(Lcom/sun/source/tree/ExpressionTree;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/util/Types;)V

    .line 1589
    .local v4, "resultNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {v0, v4}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 1599
    .end local v3    # "lambdaTree":Lcom/sun/source/tree/LambdaExpressionTree;
    .end local v4    # "resultNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_0
    iget-object v3, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->nodeList:Ljava/util/ArrayList;

    new-instance v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;

    iget-object v5, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->regularExitLabel:Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-direct {v4, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1601
    new-instance v3, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;

    iget-object v7, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeLookupMap:Ljava/util/IdentityHashMap;

    iget-object v8, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->convertedTreeLookupMap:Ljava/util/IdentityHashMap;

    iget-object v9, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->unaryAssignNodeLookupMap:Ljava/util/IdentityHashMap;

    iget-object v10, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->nodeList:Ljava/util/ArrayList;

    iget-object v11, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->bindings:Ljava/util/Map;

    iget-object v12, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->leaders:Ljava/util/Set;

    iget-object v13, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->returnNodes:Ljava/util/List;

    iget-object v14, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->regularExitLabel:Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    iget-object v15, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->exceptionalExitLabel:Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    iget-object v4, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->declaredClasses:Ljava/util/List;

    iget-object v6, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->declaredLambdas:Ljava/util/List;

    move-object v5, v3

    move-object/from16 v17, v6

    move-object/from16 v6, p2

    move-object/from16 v16, v4

    invoke-direct/range {v5 .. v17}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;-><init>(Lorg/checkerframework/dataflow/cfg/UnderlyingAST;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Set;Ljava/util/List;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;Ljava/util/List;Ljava/util/List;)V

    return-object v3
.end method

.method protected stringConversion(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 4
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 1995
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->elements:Ljavax/lang/model/util/Elements;

    const-string v1, "java.lang.String"

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    .line 1996
    .local v0, "stringElement":Ljavax/lang/model/element/TypeElement;
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/javacutil/TypesUtils;->isString(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1997
    new-instance v1, Lorg/checkerframework/dataflow/cfg/node/StringConversionNode;

    .line 1998
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v2

    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3}, Lorg/checkerframework/dataflow/cfg/node/StringConversionNode;-><init>(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)V

    .line 1999
    .local v1, "converted":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p0, v1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addToConvertedLookupMap(Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 2000
    invoke-virtual {p0, v1, p1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->insertNodeAfter(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 2001
    return-object v1

    .line 2003
    .end local v1    # "converted":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_0
    return-object p1
.end method

.method protected translateAssertWithAssertionsEnabled(Lcom/sun/source/tree/AssertTree;)V
    .locals 10
    .param p1, "tree"    # Lcom/sun/source/tree/AssertTree;

    .line 2614
    new-instance v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-direct {v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;-><init>()V

    .line 2615
    .local v0, "assertEnd":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    new-instance v1, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-direct {v1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;-><init>()V

    .line 2618
    .local v1, "elseEntry":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    invoke-interface {p1}, Lcom/sun/source/tree/AssertTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-virtual {p0, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->unbox(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    .line 2619
    .local v2, "condition":Lorg/checkerframework/dataflow/cfg/node/Node;
    new-instance v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;

    invoke-direct {v4, v0, v1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 2620
    .local v4, "cjump":Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;
    invoke-virtual {p0, v4}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithExtendedNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;)V

    .line 2623
    const/4 v5, 0x0

    .line 2624
    .local v5, "detail":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p0, v1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addLabelForNextNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 2625
    invoke-interface {p1}, Lcom/sun/source/tree/AssertTree;->getDetail()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 2626
    invoke-interface {p1}, Lcom/sun/source/tree/AssertTree;->getDetail()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    invoke-virtual {p0, v6, v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 2628
    :cond_0
    iget-object v6, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->elements:Ljavax/lang/model/util/Elements;

    const-string v7, "java.lang.AssertionError"

    invoke-interface {v6, v7}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v6

    .line 2629
    .local v6, "assertException":Ljavax/lang/model/element/TypeElement;
    new-instance v7, Lorg/checkerframework/dataflow/cfg/node/AssertionErrorNode;

    .line 2630
    invoke-interface {v6}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v8

    invoke-direct {v7, p1, v2, v5, v8}, Lorg/checkerframework/dataflow/cfg/node/AssertionErrorNode;-><init>(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)V

    .line 2631
    .local v7, "assertNode":Lorg/checkerframework/dataflow/cfg/node/AssertionErrorNode;
    invoke-virtual {p0, v7}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 2632
    new-instance v8, Lorg/checkerframework/dataflow/cfg/node/ThrowNode;

    iget-object v9, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 2634
    invoke-interface {v9}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v9

    invoke-direct {v8, v3, v7, v9}, Lorg/checkerframework/dataflow/cfg/node/ThrowNode;-><init>(Lcom/sun/source/tree/ThrowTree;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/util/Types;)V

    .line 2635
    invoke-interface {v6}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    .line 2633
    invoke-virtual {p0, v8, v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNodeWithException(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;

    move-result-object v3

    .line 2636
    .local v3, "exNode":Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;->setTerminatesExecution(Z)V

    .line 2639
    invoke-virtual {p0, v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addLabelForNextNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 2640
    return-void
.end method

.method protected translateAssignment(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "target"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p3, "rhs"    # Lcom/sun/source/tree/ExpressionTree;

    .line 2692
    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 2693
    .local v0, "expression":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p0, p1, p2, v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->translateAssignment(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;

    move-result-object v1

    return-object v1
.end method

.method protected translateAssignment(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "target"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p3, "expression"    # Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 2698
    instance-of v0, p1, Lcom/sun/source/tree/AssignmentTree;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/sun/source/tree/VariableTree;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2699
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/cfg/node/Node;->setLValue()V

    .line 2700
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->assignConvert(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p3

    .line 2701
    new-instance v0, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;

    invoke-direct {v0, p1, p2, p3}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;-><init>(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 2702
    .local v0, "assignmentNode":Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;
    invoke-virtual {p0, v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 2703
    return-object v0
.end method

.method protected unaryNumericPromotion(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 3
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 2016
    invoke-virtual {p0, p1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->unbox(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    .line 2018
    sget-object v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2034
    return-object p1

    .line 2023
    :pswitch_0
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->types:Ljavax/lang/model/util/Types;

    sget-object v1, Ljavax/lang/model/type/TypeKind;->INT:Ljavax/lang/model/type/TypeKind;

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Types;->getPrimitiveType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object v0

    .line 2024
    .local v0, "intType":Ljavax/lang/model/type/TypeMirror;
    new-instance v1, Lorg/checkerframework/dataflow/cfg/node/WideningConversionNode;

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0}, Lorg/checkerframework/dataflow/cfg/node/WideningConversionNode;-><init>(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)V

    .line 2025
    .local v1, "widened":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p0, v1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addToConvertedLookupMap(Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 2026
    invoke-virtual {p0, v1, p1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->insertNodeAfter(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 2027
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected unbox(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 8
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 1917
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isBoxedPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1919
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    .line 1920
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildPrimValueMethodAccess(Lcom/sun/source/tree/Tree;)Lcom/sun/source/tree/MemberSelectTree;

    move-result-object v0

    .line 1921
    .local v0, "primValueSelect":Lcom/sun/source/tree/MemberSelectTree;
    invoke-virtual {p0, v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 1922
    new-instance v1, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;

    invoke-direct {v1, v0, p1}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;-><init>(Lcom/sun/source/tree/ExpressionTree;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 1923
    .local v1, "primValueAccess":Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->setInSource(Z)V

    .line 1925
    iget-object v3, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->elements:Ljavax/lang/model/util/Elements;

    const-string v4, "java.lang.NullPointerException"

    invoke-interface {v3, v4}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v3

    .line 1926
    .local v3, "npeElement":Ljavax/lang/model/element/TypeElement;
    nop

    .line 1927
    invoke-interface {v3}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    .line 1926
    invoke-virtual {p0, v1, v4, p1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->insertNodeWithExceptionsAfter(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/util/Set;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;

    .line 1929
    iget-object v4, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    .line 1930
    invoke-virtual {v4, v0}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildMethodInvocation(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/MethodInvocationTree;

    move-result-object v4

    .line 1931
    .local v4, "primValueCall":Lcom/sun/source/tree/MethodInvocationTree;
    invoke-virtual {p0, v4}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 1932
    new-instance v5, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;

    .line 1936
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 1937
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v7

    invoke-direct {v5, v4, v1, v6, v7}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;-><init>(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;Ljava/util/List;Lcom/sun/source/util/TreePath;)V

    .line 1938
    .local v5, "unboxed":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {v5, v2}, Lorg/checkerframework/dataflow/cfg/node/Node;->setInSource(Z)V

    .line 1941
    iget-object v2, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->elements:Ljavax/lang/model/util/Elements;

    const-string v6, "java.lang.Throwable"

    invoke-interface {v2, v6}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v2

    .line 1942
    .local v2, "throwableElement":Ljavax/lang/model/element/TypeElement;
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v6

    invoke-virtual {p0, v6, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addToConvertedLookupMap(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 1943
    nop

    .line 1944
    invoke-interface {v2}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    .line 1943
    invoke-virtual {p0, v5, v6, v1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->insertNodeWithExceptionsAfter(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/util/Set;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;

    .line 1945
    return-object v5

    .line 1947
    .end local v0    # "primValueSelect":Lcom/sun/source/tree/MemberSelectTree;
    .end local v1    # "primValueAccess":Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;
    .end local v2    # "throwableElement":Ljavax/lang/model/element/TypeElement;
    .end local v3    # "npeElement":Ljavax/lang/model/element/TypeElement;
    .end local v4    # "primValueCall":Lcom/sun/source/tree/MethodInvocationTree;
    .end local v5    # "unboxed":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_0
    return-object p1
.end method

.method protected uniqueName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;

    .line 1857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#num"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->uid:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->uid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitAnnotatedType(Lcom/sun/source/tree/AnnotatedTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitAnnotatedType(Lcom/sun/source/tree/AnnotatedTypeTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitAnnotatedType(Lcom/sun/source/tree/AnnotatedTypeTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/AnnotatedTypeTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 2433
    invoke-interface {p1}, Lcom/sun/source/tree/AnnotatedTypeTree;->getUnderlyingType()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/Node;

    return-object v0
.end method

.method public bridge synthetic visitAnnotation(Lcom/sun/source/tree/AnnotationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitAnnotation(Lcom/sun/source/tree/AnnotationTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitAnnotation(Lcom/sun/source/tree/AnnotationTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/AnnotationTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 2438
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "AnnotationTree is unexpected in AST to CFG translation"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic visitArrayAccess(Lcom/sun/source/tree/ArrayAccessTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitArrayAccess(Lcom/sun/source/tree/ArrayAccessTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitArrayAccess(Lcom/sun/source/tree/ArrayAccessTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 6
    .param p1, "tree"    # Lcom/sun/source/tree/ArrayAccessTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 3962
    invoke-interface {p1}, Lcom/sun/source/tree/ArrayAccessTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3963
    .local v0, "array":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-interface {p1}, Lcom/sun/source/tree/ArrayAccessTree;->getIndex()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-virtual {p0, v1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->unaryNumericPromotion(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    .line 3964
    .local v1, "index":Lorg/checkerframework/dataflow/cfg/node/Node;
    new-instance v2, Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;

    invoke-direct {v2, p1, v0, v1}, Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;-><init>(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    invoke-virtual {p0, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    .line 3965
    .local v2, "arrayAccess":Lorg/checkerframework/dataflow/cfg/node/Node;
    iget-object v3, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->elements:Ljavax/lang/model/util/Elements;

    .line 3966
    const-string v4, "java.lang.ArrayIndexOutOfBoundsException"

    invoke-interface {v3, v4}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v3

    .line 3967
    .local v3, "aioobeElement":Ljavax/lang/model/element/Element;
    invoke-interface {v3}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNodeWithException(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;

    .line 3968
    iget-object v4, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->elements:Ljavax/lang/model/util/Elements;

    const-string v5, "java.lang.NullPointerException"

    invoke-interface {v4, v5}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v4

    .line 3969
    .local v4, "npeElement":Ljavax/lang/model/element/Element;
    invoke-interface {v4}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNodeWithException(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;

    .line 3970
    return-object v2
.end method

.method public bridge synthetic visitArrayType(Lcom/sun/source/tree/ArrayTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitArrayType(Lcom/sun/source/tree/ArrayTypeTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitArrayType(Lcom/sun/source/tree/ArrayTypeTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/ArrayTypeTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 4531
    new-instance v0, Lorg/checkerframework/dataflow/cfg/node/ArrayTypeNode;

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->types:Ljavax/lang/model/util/Types;

    invoke-direct {v0, p1, v1}, Lorg/checkerframework/dataflow/cfg/node/ArrayTypeNode;-><init>(Lcom/sun/source/tree/ArrayTypeTree;Ljavax/lang/model/util/Types;)V

    invoke-virtual {p0, v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitAssert(Lcom/sun/source/tree/AssertTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitAssert(Lcom/sun/source/tree/AssertTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitAssert(Lcom/sun/source/tree/AssertTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 5
    .param p1, "tree"    # Lcom/sun/source/tree/AssertTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 2532
    iget-boolean v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->assumeAssertionsEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->assumeAssertionsEnabledFor(Lcom/sun/source/tree/AssertTree;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2538
    :cond_0
    iget-boolean v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->assumeAssertionsDisabled:Z

    if-eqz v0, :cond_1

    .line 2539
    return-object v1

    .line 2545
    :cond_1
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->getAssertionsEnabledVariable()Lcom/sun/source/tree/VariableTree;

    move-result-object v0

    .line 2548
    .local v0, "ea":Lcom/sun/source/tree/VariableTree;
    new-instance v2, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-direct {v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;-><init>()V

    .line 2549
    .local v2, "assertionEnabled":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    new-instance v3, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-direct {v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;-><init>()V

    .line 2551
    .local v3, "assertionDisabled":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    new-instance v4, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;

    invoke-direct {v4, v0}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;-><init>(Lcom/sun/source/tree/Tree;)V

    invoke-virtual {p0, v4}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 2552
    new-instance v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;

    invoke-direct {v4, v2, v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    invoke-virtual {p0, v4}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithExtendedNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;)V

    .line 2555
    invoke-virtual {p0, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addLabelForNextNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 2557
    invoke-virtual {p0, p1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->translateAssertWithAssertionsEnabled(Lcom/sun/source/tree/AssertTree;)V

    .line 2560
    invoke-virtual {p0, v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addLabelForNextNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 2562
    return-object v1

    .line 2533
    .end local v0    # "ea":Lcom/sun/source/tree/VariableTree;
    .end local v2    # "assertionEnabled":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    .end local v3    # "assertionDisabled":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->translateAssertWithAssertionsEnabled(Lcom/sun/source/tree/AssertTree;)V

    .line 2534
    return-object v1
.end method

.method public bridge synthetic visitAssignment(Lcom/sun/source/tree/AssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitAssignment(Lcom/sun/source/tree/AssignmentTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitAssignment(Lcom/sun/source/tree/AssignmentTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 8
    .param p1, "tree"    # Lcom/sun/source/tree/AssignmentTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 2648
    invoke-interface {p1}, Lcom/sun/source/tree/AssignmentTree;->getVariable()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 2649
    .local v0, "variable":Lcom/sun/source/tree/ExpressionTree;
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 2652
    .local v1, "varType":Ljavax/lang/model/type/TypeMirror;
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->isFieldAccess(Lcom/sun/source/tree/Tree;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2654
    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->getReceiver(Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    .line 2657
    .local v2, "receiver":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-interface {p1}, Lcom/sun/source/tree/AssignmentTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 2658
    .local v3, "expression":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p0, v3, v1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->assignConvert(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v3

    .line 2661
    new-instance v4, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;

    invoke-direct {v4, v0, v2}, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;-><init>(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 2662
    .local v4, "target":Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;
    invoke-virtual {v4}, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->setLValue()V

    .line 2664
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v5

    .line 2665
    .local v5, "element":Ljavax/lang/model/element/Element;
    invoke-static {v5}, Lorg/checkerframework/javacutil/ElementUtils;->isStatic(Ljavax/lang/model/element/Element;)Z

    move-result v6

    if-nez v6, :cond_1

    instance-of v6, v2, Lorg/checkerframework/dataflow/cfg/node/ThisLiteralNode;

    if-eqz v6, :cond_0

    goto :goto_0

    .line 2669
    :cond_0
    iget-object v6, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->elements:Ljavax/lang/model/util/Elements;

    .line 2670
    const-string v7, "java.lang.NullPointerException"

    invoke-interface {v6, v7}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v6

    .line 2671
    .local v6, "npeElement":Ljavax/lang/model/element/TypeElement;
    invoke-interface {v6}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v7

    invoke-virtual {p0, v4, v7}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNodeWithException(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;

    goto :goto_1

    .line 2667
    .end local v6    # "npeElement":Ljavax/lang/model/element/TypeElement;
    :cond_1
    :goto_0
    invoke-virtual {p0, v4}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 2675
    :goto_1
    new-instance v6, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;

    invoke-direct {v6, p1, v4, v3}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;-><init>(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 2676
    .local v6, "assignmentNode":Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;
    invoke-virtual {p0, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 2677
    .end local v2    # "receiver":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v3    # "expression":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v4    # "target":Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;
    .end local v5    # "element":Ljavax/lang/model/element/Element;
    goto :goto_2

    .line 2681
    .end local v6    # "assignmentNode":Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;
    :cond_2
    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 2682
    .local v2, "target":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {v2}, Lorg/checkerframework/dataflow/cfg/node/Node;->setLValue()V

    .line 2684
    invoke-interface {p1}, Lcom/sun/source/tree/AssignmentTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->translateAssignment(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;

    move-result-object v6

    .line 2687
    .end local v2    # "target":Lorg/checkerframework/dataflow/cfg/node/Node;
    .restart local v6    # "assignmentNode":Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;
    :goto_2
    return-object v6
.end method

.method public bridge synthetic visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 13
    .param p1, "tree"    # Lcom/sun/source/tree/BinaryTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 3003
    const/4 v0, 0x0

    .line 3004
    .local v0, "r":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getLeftOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    .line 3005
    .local v1, "leftTree":Lcom/sun/source/tree/Tree;
    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getRightOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    .line 3007
    .local v2, "rightTree":Lcom/sun/source/tree/Tree;
    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    .line 3008
    .local v3, "kind":Lcom/sun/source/tree/Tree$Kind;
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-virtual {v3}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 3255
    goto/16 :goto_b

    .line 3223
    :pswitch_0
    new-instance v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-direct {v4}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;-><init>()V

    .line 3224
    .local v4, "rightStartL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    new-instance v5, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-direct {v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;-><init>()V

    .line 3227
    .local v5, "shortCircuitL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3230
    .local v6, "left":Lorg/checkerframework/dataflow/cfg/node/Node;
    sget-object v7, Lcom/sun/source/tree/Tree$Kind;->CONDITIONAL_AND:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v7, :cond_0

    .line 3231
    new-instance v7, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;

    invoke-direct {v7, v4, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 3232
    .local v7, "cjump":Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;
    sget-object v8, Lorg/checkerframework/dataflow/analysis/Store$FlowRule;->ELSE_TO_ELSE:Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    invoke-virtual {v7, v8}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;->setFalseFlowRule(Lorg/checkerframework/dataflow/analysis/Store$FlowRule;)V

    goto :goto_0

    .line 3234
    .end local v7    # "cjump":Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;
    :cond_0
    new-instance v7, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;

    invoke-direct {v7, v5, v4}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 3235
    .restart local v7    # "cjump":Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;
    sget-object v8, Lorg/checkerframework/dataflow/analysis/Store$FlowRule;->THEN_TO_THEN:Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    invoke-virtual {v7, v8}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;->setTrueFlowRule(Lorg/checkerframework/dataflow/analysis/Store$FlowRule;)V

    .line 3237
    :goto_0
    invoke-virtual {p0, v7}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithExtendedNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;)V

    .line 3240
    invoke-virtual {p0, v4}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addLabelForNextNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 3241
    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3244
    .local v8, "right":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p0, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addLabelForNextNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 3246
    sget-object v9, Lcom/sun/source/tree/Tree$Kind;->CONDITIONAL_AND:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v9, :cond_1

    .line 3247
    new-instance v9, Lorg/checkerframework/dataflow/cfg/node/ConditionalAndNode;

    invoke-direct {v9, p1, v6, v8}, Lorg/checkerframework/dataflow/cfg/node/ConditionalAndNode;-><init>(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .local v9, "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    goto :goto_1

    .line 3249
    .end local v9    # "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_1
    new-instance v9, Lorg/checkerframework/dataflow/cfg/node/ConditionalOrNode;

    invoke-direct {v9, p1, v6, v8}, Lorg/checkerframework/dataflow/cfg/node/ConditionalOrNode;-><init>(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 3251
    .restart local v9    # "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    :goto_1
    invoke-virtual {p0, v9}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3252
    return-object v9

    .line 3181
    .end local v4    # "rightStartL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    .end local v5    # "shortCircuitL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    .end local v6    # "left":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v7    # "cjump":Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;
    .end local v8    # "right":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v9    # "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    :pswitch_1
    invoke-static {v1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    .line 3182
    .local v4, "leftType":Ljavax/lang/model/type/TypeMirror;
    invoke-static {v2}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    .line 3183
    .local v5, "rightType":Ljavax/lang/model/type/TypeMirror;
    nop

    .line 3184
    invoke-static {v4}, Lorg/checkerframework/javacutil/TypesUtils;->isBooleanType(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3185
    invoke-static {v5}, Lorg/checkerframework/javacutil/TypesUtils;->isBooleanType(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    .line 3190
    .local v6, "isBooleanOp":Z
    :goto_2
    if-eqz v6, :cond_3

    .line 3191
    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-virtual {p0, v7}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->unbox(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v7

    .line 3192
    .local v7, "left":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-virtual {p0, v8}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->unbox(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v8

    .restart local v8    # "right":Lorg/checkerframework/dataflow/cfg/node/Node;
    goto :goto_3

    .line 3193
    .end local v7    # "left":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v8    # "right":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_3
    invoke-virtual {p0, v4}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->isNumericOrBoxed(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p0, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->isNumericOrBoxed(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3194
    invoke-virtual {p0, v4, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->binaryPromotedType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v7

    .line 3195
    .local v7, "promotedType":Ljavax/lang/model/type/TypeMirror;
    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-virtual {p0, v8, v7}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->binaryNumericPromotion(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v8

    .line 3196
    .local v8, "left":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-virtual {p0, v9, v7}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->binaryNumericPromotion(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v7

    .line 3197
    .local v7, "right":Lorg/checkerframework/dataflow/cfg/node/Node;
    move-object v12, v8

    move-object v8, v7

    move-object v7, v12

    goto :goto_3

    .line 3198
    .end local v7    # "right":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v8    # "left":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_4
    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-virtual {p0, v7}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->unbox(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v7

    .line 3199
    .local v7, "left":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-virtual {p0, v8}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->unbox(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v8

    .line 3203
    .local v8, "right":Lorg/checkerframework/dataflow/cfg/node/Node;
    :goto_3
    sget-object v9, Lcom/sun/source/tree/Tree$Kind;->AND:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v9, :cond_5

    .line 3204
    new-instance v9, Lorg/checkerframework/dataflow/cfg/node/BitwiseAndNode;

    invoke-direct {v9, p1, v7, v8}, Lorg/checkerframework/dataflow/cfg/node/BitwiseAndNode;-><init>(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .restart local v9    # "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    goto :goto_4

    .line 3205
    .end local v9    # "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_5
    sget-object v9, Lcom/sun/source/tree/Tree$Kind;->OR:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v9, :cond_6

    .line 3206
    new-instance v9, Lorg/checkerframework/dataflow/cfg/node/BitwiseOrNode;

    invoke-direct {v9, p1, v7, v8}, Lorg/checkerframework/dataflow/cfg/node/BitwiseOrNode;-><init>(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .restart local v9    # "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    goto :goto_4

    .line 3208
    .end local v9    # "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_6
    sget-object v9, Lcom/sun/source/tree/Tree$Kind;->XOR:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v9, :cond_7

    .line 3209
    new-instance v9, Lorg/checkerframework/dataflow/cfg/node/BitwiseXorNode;

    invoke-direct {v9, p1, v7, v8}, Lorg/checkerframework/dataflow/cfg/node/BitwiseXorNode;-><init>(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 3212
    .restart local v9    # "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    :goto_4
    invoke-virtual {p0, v9}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3214
    return-object v9

    .line 3208
    .end local v9    # "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_7
    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 3142
    .end local v4    # "leftType":Ljavax/lang/model/type/TypeMirror;
    .end local v5    # "rightType":Ljavax/lang/model/type/TypeMirror;
    .end local v6    # "isBooleanOp":Z
    .end local v7    # "left":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v8    # "right":Lorg/checkerframework/dataflow/cfg/node/Node;
    :pswitch_2
    invoke-direct {p0, v1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->getTreeInfo(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$TreeInfo;

    move-result-object v4

    .line 3143
    .local v4, "leftInfo":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TreeInfo;
    invoke-direct {p0, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->getTreeInfo(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$TreeInfo;

    move-result-object v5

    .line 3144
    .local v5, "rightInfo":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TreeInfo;
    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3145
    .local v6, "left":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3147
    .local v7, "right":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-interface {v4}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TreeInfo;->isNumeric()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 3148
    invoke-interface {v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TreeInfo;->isNumeric()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 3149
    invoke-interface {v4}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TreeInfo;->isBoxed()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TreeInfo;->isBoxed()Z

    move-result v8

    if-nez v8, :cond_a

    .line 3151
    :cond_8
    nop

    .line 3153
    invoke-interface {v4}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TreeInfo;->unboxedType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v8

    invoke-interface {v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TreeInfo;->unboxedType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v9

    .line 3152
    invoke-virtual {p0, v8, v9}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->binaryPromotedType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v8

    .line 3154
    .local v8, "promotedType":Ljavax/lang/model/type/TypeMirror;
    invoke-virtual {p0, v6, v8}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->binaryNumericPromotion(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v6

    .line 3155
    invoke-virtual {p0, v7, v8}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->binaryNumericPromotion(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v7

    .line 3156
    .end local v8    # "promotedType":Ljavax/lang/model/type/TypeMirror;
    :cond_9
    goto :goto_5

    :cond_a
    invoke-interface {v4}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TreeInfo;->isBoolean()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 3157
    invoke-interface {v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TreeInfo;->isBoolean()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 3158
    invoke-interface {v4}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TreeInfo;->isBoxed()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TreeInfo;->isBoxed()Z

    move-result v8

    if-nez v8, :cond_c

    .line 3160
    :cond_b
    invoke-interface {v4}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TreeInfo;->isBoxed()Z

    move-result v8

    invoke-direct {p0, v6, v8}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->unboxAsNeeded(Lorg/checkerframework/dataflow/cfg/node/Node;Z)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v6

    .line 3161
    invoke-interface {v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TreeInfo;->isBoxed()Z

    move-result v8

    invoke-direct {p0, v7, v8}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->unboxAsNeeded(Lorg/checkerframework/dataflow/cfg/node/Node;Z)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v7

    .line 3165
    :cond_c
    :goto_5
    sget-object v8, Lcom/sun/source/tree/Tree$Kind;->EQUAL_TO:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v8, :cond_d

    .line 3166
    new-instance v8, Lorg/checkerframework/dataflow/cfg/node/EqualToNode;

    invoke-direct {v8, p1, v6, v7}, Lorg/checkerframework/dataflow/cfg/node/EqualToNode;-><init>(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .local v8, "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    goto :goto_6

    .line 3168
    .end local v8    # "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_d
    sget-object v8, Lcom/sun/source/tree/Tree$Kind;->NOT_EQUAL_TO:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v8, :cond_e

    .line 3169
    new-instance v8, Lorg/checkerframework/dataflow/cfg/node/NotEqualNode;

    invoke-direct {v8, p1, v6, v7}, Lorg/checkerframework/dataflow/cfg/node/NotEqualNode;-><init>(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 3171
    .restart local v8    # "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    :goto_6
    invoke-virtual {p0, v8}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3173
    return-object v8

    .line 3168
    .end local v8    # "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_e
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 3107
    .end local v4    # "leftInfo":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TreeInfo;
    .end local v5    # "rightInfo":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TreeInfo;
    .end local v6    # "left":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v7    # "right":Lorg/checkerframework/dataflow/cfg/node/Node;
    :pswitch_3
    invoke-static {v1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    .line 3108
    .local v4, "leftType":Ljavax/lang/model/type/TypeMirror;
    invoke-static {v4}, Lorg/checkerframework/javacutil/TypesUtils;->isBoxedPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 3109
    iget-object v5, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->types:Ljavax/lang/model/util/Types;

    invoke-interface {v5, v4}, Ljavax/lang/model/util/Types;->unboxedType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object v4

    .line 3112
    :cond_f
    invoke-static {v2}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    .line 3113
    .local v5, "rightType":Ljavax/lang/model/type/TypeMirror;
    invoke-static {v5}, Lorg/checkerframework/javacutil/TypesUtils;->isBoxedPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 3114
    iget-object v6, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->types:Ljavax/lang/model/util/Types;

    invoke-interface {v6, v5}, Ljavax/lang/model/util/Types;->unboxedType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object v5

    .line 3117
    :cond_10
    invoke-virtual {p0, v4, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->binaryPromotedType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v6

    .line 3118
    .local v6, "promotedType":Ljavax/lang/model/type/TypeMirror;
    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-virtual {p0, v7, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->binaryNumericPromotion(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v7

    .line 3119
    .local v7, "left":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-virtual {p0, v8, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->binaryNumericPromotion(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v8

    .line 3122
    .local v8, "right":Lorg/checkerframework/dataflow/cfg/node/Node;
    sget-object v9, Lcom/sun/source/tree/Tree$Kind;->GREATER_THAN:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v9, :cond_11

    .line 3123
    new-instance v9, Lorg/checkerframework/dataflow/cfg/node/GreaterThanNode;

    invoke-direct {v9, p1, v7, v8}, Lorg/checkerframework/dataflow/cfg/node/GreaterThanNode;-><init>(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .restart local v9    # "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    goto :goto_7

    .line 3124
    .end local v9    # "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_11
    sget-object v9, Lcom/sun/source/tree/Tree$Kind;->GREATER_THAN_EQUAL:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v9, :cond_12

    .line 3125
    new-instance v9, Lorg/checkerframework/dataflow/cfg/node/GreaterThanOrEqualNode;

    invoke-direct {v9, p1, v7, v8}, Lorg/checkerframework/dataflow/cfg/node/GreaterThanOrEqualNode;-><init>(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .restart local v9    # "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    goto :goto_7

    .line 3126
    .end local v9    # "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_12
    sget-object v9, Lcom/sun/source/tree/Tree$Kind;->LESS_THAN:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v9, :cond_13

    .line 3127
    new-instance v9, Lorg/checkerframework/dataflow/cfg/node/LessThanNode;

    invoke-direct {v9, p1, v7, v8}, Lorg/checkerframework/dataflow/cfg/node/LessThanNode;-><init>(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .restart local v9    # "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    goto :goto_7

    .line 3129
    .end local v9    # "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_13
    sget-object v9, Lcom/sun/source/tree/Tree$Kind;->LESS_THAN_EQUAL:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v9, :cond_14

    .line 3130
    new-instance v9, Lorg/checkerframework/dataflow/cfg/node/LessThanOrEqualNode;

    invoke-direct {v9, p1, v7, v8}, Lorg/checkerframework/dataflow/cfg/node/LessThanOrEqualNode;-><init>(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 3133
    .restart local v9    # "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    :goto_7
    invoke-virtual {p0, v9}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3135
    return-object v9

    .line 3129
    .end local v9    # "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_14
    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 3087
    .end local v4    # "leftType":Ljavax/lang/model/type/TypeMirror;
    .end local v5    # "rightType":Ljavax/lang/model/type/TypeMirror;
    .end local v6    # "promotedType":Ljavax/lang/model/type/TypeMirror;
    .end local v7    # "left":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v8    # "right":Lorg/checkerframework/dataflow/cfg/node/Node;
    :pswitch_4
    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-virtual {p0, v4}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->unaryNumericPromotion(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v4

    .line 3088
    .local v4, "left":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-virtual {p0, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->unaryNumericPromotion(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v5

    .line 3090
    .local v5, "right":Lorg/checkerframework/dataflow/cfg/node/Node;
    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->LEFT_SHIFT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v6, :cond_15

    .line 3091
    new-instance v6, Lorg/checkerframework/dataflow/cfg/node/LeftShiftNode;

    invoke-direct {v6, p1, v4, v5}, Lorg/checkerframework/dataflow/cfg/node/LeftShiftNode;-><init>(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    move-object v0, v6

    goto/16 :goto_a

    .line 3092
    :cond_15
    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->RIGHT_SHIFT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v6, :cond_16

    .line 3093
    new-instance v6, Lorg/checkerframework/dataflow/cfg/node/SignedRightShiftNode;

    invoke-direct {v6, p1, v4, v5}, Lorg/checkerframework/dataflow/cfg/node/SignedRightShiftNode;-><init>(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    move-object v0, v6

    goto/16 :goto_a

    .line 3095
    :cond_16
    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->UNSIGNED_RIGHT_SHIFT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v6, :cond_17

    .line 3096
    new-instance v6, Lorg/checkerframework/dataflow/cfg/node/UnsignedRightShiftNode;

    invoke-direct {v6, p1, v4, v5}, Lorg/checkerframework/dataflow/cfg/node/UnsignedRightShiftNode;-><init>(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    move-object v0, v6

    .line 3098
    goto/16 :goto_a

    .line 3095
    :cond_17
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 3056
    .end local v4    # "left":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v5    # "right":Lorg/checkerframework/dataflow/cfg/node/Node;
    :pswitch_5
    invoke-static {v1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    .line 3057
    .local v4, "leftType":Ljavax/lang/model/type/TypeMirror;
    invoke-static {v2}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    .line 3059
    .local v5, "rightType":Ljavax/lang/model/type/TypeMirror;
    invoke-static {v4}, Lorg/checkerframework/javacutil/TypesUtils;->isString(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v6

    if-nez v6, :cond_1b

    invoke-static {v5}, Lorg/checkerframework/javacutil/TypesUtils;->isString(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v6

    if-eqz v6, :cond_18

    goto :goto_9

    .line 3065
    :cond_18
    invoke-virtual {p0, v4, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->binaryPromotedType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v6

    .line 3066
    .restart local v6    # "promotedType":Ljavax/lang/model/type/TypeMirror;
    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-virtual {p0, v7, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->binaryNumericPromotion(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v7

    .line 3067
    .restart local v7    # "left":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-virtual {p0, v8, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->binaryNumericPromotion(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v8

    .line 3071
    .restart local v8    # "right":Lorg/checkerframework/dataflow/cfg/node/Node;
    sget-object v9, Lcom/sun/source/tree/Tree$Kind;->PLUS:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v9, :cond_19

    .line 3072
    new-instance v9, Lorg/checkerframework/dataflow/cfg/node/NumericalAdditionNode;

    invoke-direct {v9, p1, v7, v8}, Lorg/checkerframework/dataflow/cfg/node/NumericalAdditionNode;-><init>(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    move-object v0, v9

    goto :goto_8

    .line 3074
    :cond_19
    sget-object v9, Lcom/sun/source/tree/Tree$Kind;->MINUS:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v9, :cond_1a

    .line 3075
    new-instance v9, Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;

    invoke-direct {v9, p1, v7, v8}, Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;-><init>(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    move-object v0, v9

    .line 3078
    .end local v6    # "promotedType":Ljavax/lang/model/type/TypeMirror;
    .end local v7    # "left":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v8    # "right":Lorg/checkerframework/dataflow/cfg/node/Node;
    :goto_8
    goto/16 :goto_a

    .line 3074
    .restart local v6    # "promotedType":Ljavax/lang/model/type/TypeMirror;
    .restart local v7    # "left":Lorg/checkerframework/dataflow/cfg/node/Node;
    .restart local v8    # "right":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_1a
    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 3060
    .end local v6    # "promotedType":Ljavax/lang/model/type/TypeMirror;
    .end local v7    # "left":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v8    # "right":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_1b
    :goto_9
    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->PLUS:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v6, :cond_1c

    .line 3061
    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-virtual {p0, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->stringConversion(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v6

    .line 3062
    .local v6, "left":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-virtual {p0, v7}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->stringConversion(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v7

    .line 3063
    .local v7, "right":Lorg/checkerframework/dataflow/cfg/node/Node;
    new-instance v8, Lorg/checkerframework/dataflow/cfg/node/StringConcatenateNode;

    invoke-direct {v8, p1, v6, v7}, Lorg/checkerframework/dataflow/cfg/node/StringConcatenateNode;-><init>(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    move-object v0, v8

    .line 3064
    .end local v6    # "left":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v7    # "right":Lorg/checkerframework/dataflow/cfg/node/Node;
    goto/16 :goto_a

    .line 3060
    :cond_1c
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 3015
    .end local v4    # "leftType":Ljavax/lang/model/type/TypeMirror;
    .end local v5    # "rightType":Ljavax/lang/model/type/TypeMirror;
    :pswitch_6
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    .line 3016
    .local v4, "exprType":Ljavax/lang/model/type/TypeMirror;
    invoke-static {v1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    .line 3017
    .local v5, "leftType":Ljavax/lang/model/type/TypeMirror;
    invoke-static {v2}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v6

    .line 3018
    .local v6, "rightType":Ljavax/lang/model/type/TypeMirror;
    invoke-virtual {p0, v5, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->binaryPromotedType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v7

    .line 3020
    .local v7, "promotedType":Ljavax/lang/model/type/TypeMirror;
    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-virtual {p0, v8, v7}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->binaryNumericPromotion(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v8

    .line 3021
    .local v8, "left":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-virtual {p0, v9, v7}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->binaryNumericPromotion(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v9

    .line 3023
    .local v9, "right":Lorg/checkerframework/dataflow/cfg/node/Node;
    sget-object v10, Lcom/sun/source/tree/Tree$Kind;->MULTIPLY:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v10, :cond_1d

    .line 3024
    new-instance v10, Lorg/checkerframework/dataflow/cfg/node/NumericalMultiplicationNode;

    invoke-direct {v10, p1, v8, v9}, Lorg/checkerframework/dataflow/cfg/node/NumericalMultiplicationNode;-><init>(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    move-object v0, v10

    goto :goto_a

    .line 3025
    :cond_1d
    sget-object v10, Lcom/sun/source/tree/Tree$Kind;->DIVIDE:Lcom/sun/source/tree/Tree$Kind;

    const-string v11, "java.lang.ArithmeticException"

    if-ne v3, v10, :cond_1f

    .line 3026
    invoke-static {v4}, Lorg/checkerframework/javacutil/TypesUtils;->isIntegral(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 3027
    new-instance v10, Lorg/checkerframework/dataflow/cfg/node/IntegerDivisionNode;

    invoke-direct {v10, p1, v8, v9}, Lorg/checkerframework/dataflow/cfg/node/IntegerDivisionNode;-><init>(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    move-object v0, v10

    .line 3029
    iget-object v10, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->elements:Ljavax/lang/model/util/Elements;

    .line 3030
    invoke-interface {v10, v11}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v10

    .line 3031
    .local v10, "throwableElement":Ljavax/lang/model/element/TypeElement;
    invoke-interface {v10}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v11

    invoke-virtual {p0, v0, v11}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNodeWithException(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;

    .line 3032
    .end local v10    # "throwableElement":Ljavax/lang/model/element/TypeElement;
    goto :goto_a

    .line 3033
    :cond_1e
    new-instance v10, Lorg/checkerframework/dataflow/cfg/node/FloatingDivisionNode;

    invoke-direct {v10, p1, v8, v9}, Lorg/checkerframework/dataflow/cfg/node/FloatingDivisionNode;-><init>(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    move-object v0, v10

    goto :goto_a

    .line 3036
    :cond_1f
    sget-object v10, Lcom/sun/source/tree/Tree$Kind;->REMAINDER:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v10, :cond_21

    .line 3037
    invoke-static {v4}, Lorg/checkerframework/javacutil/TypesUtils;->isIntegral(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v10

    if-eqz v10, :cond_20

    .line 3038
    new-instance v10, Lorg/checkerframework/dataflow/cfg/node/IntegerRemainderNode;

    invoke-direct {v10, p1, v8, v9}, Lorg/checkerframework/dataflow/cfg/node/IntegerRemainderNode;-><init>(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    move-object v0, v10

    .line 3040
    iget-object v10, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->elements:Ljavax/lang/model/util/Elements;

    .line 3041
    invoke-interface {v10, v11}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v10

    .line 3042
    .restart local v10    # "throwableElement":Ljavax/lang/model/element/TypeElement;
    invoke-interface {v10}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v11

    invoke-virtual {p0, v0, v11}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNodeWithException(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;

    .line 3043
    .end local v10    # "throwableElement":Ljavax/lang/model/element/TypeElement;
    goto :goto_a

    .line 3044
    :cond_20
    new-instance v10, Lorg/checkerframework/dataflow/cfg/node/FloatingRemainderNode;

    invoke-direct {v10, p1, v8, v9}, Lorg/checkerframework/dataflow/cfg/node/FloatingRemainderNode;-><init>(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    move-object v0, v10

    .line 3047
    nop

    .line 3258
    .end local v4    # "exprType":Ljavax/lang/model/type/TypeMirror;
    .end local v5    # "leftType":Ljavax/lang/model/type/TypeMirror;
    .end local v6    # "rightType":Ljavax/lang/model/type/TypeMirror;
    .end local v7    # "promotedType":Ljavax/lang/model/type/TypeMirror;
    .end local v8    # "left":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v9    # "right":Lorg/checkerframework/dataflow/cfg/node/Node;
    :goto_a
    nop

    .line 3259
    invoke-virtual {p0, v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v4

    return-object v4

    .line 3036
    .restart local v4    # "exprType":Ljavax/lang/model/type/TypeMirror;
    .restart local v5    # "leftType":Ljavax/lang/model/type/TypeMirror;
    .restart local v6    # "rightType":Ljavax/lang/model/type/TypeMirror;
    .restart local v7    # "promotedType":Ljavax/lang/model/type/TypeMirror;
    .restart local v8    # "left":Lorg/checkerframework/dataflow/cfg/node/Node;
    .restart local v9    # "right":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_21
    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 3255
    .end local v4    # "exprType":Ljavax/lang/model/type/TypeMirror;
    .end local v5    # "leftType":Ljavax/lang/model/type/TypeMirror;
    .end local v6    # "rightType":Ljavax/lang/model/type/TypeMirror;
    .end local v7    # "promotedType":Ljavax/lang/model/type/TypeMirror;
    .end local v8    # "left":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v9    # "right":Lorg/checkerframework/dataflow/cfg/node/Node;
    :goto_b
    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unexpected binary tree: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic visitBlock(Lcom/sun/source/tree/BlockTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitBlock(Lcom/sun/source/tree/BlockTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitBlock(Lcom/sun/source/tree/BlockTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 3
    .param p1, "tree"    # Lcom/sun/source/tree/BlockTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 3264
    invoke-interface {p1}, Lcom/sun/source/tree/BlockTree;->getStatements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/StatementTree;

    .line 3265
    .local v1, "n":Lcom/sun/source/tree/StatementTree;
    invoke-virtual {p0, v1, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3266
    .end local v1    # "n":Lcom/sun/source/tree/StatementTree;
    goto :goto_0

    .line 3267
    :cond_0
    return-object v2
.end method

.method public bridge synthetic visitBreak(Lcom/sun/source/tree/BreakTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitBreak(Lcom/sun/source/tree/BreakTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitBreak(Lcom/sun/source/tree/BreakTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 3
    .param p1, "tree"    # Lcom/sun/source/tree/BreakTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 3272
    invoke-interface {p1}, Lcom/sun/source/tree/BreakTree;->getLabel()Ljavax/lang/model/element/Name;

    move-result-object v0

    .line 3273
    .local v0, "label":Ljavax/lang/model/element/Name;
    if-nez v0, :cond_1

    .line 3274
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->breakTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    if-eqz v1, :cond_0

    .line 3276
    new-instance v1, Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;

    iget-object v2, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->breakTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    invoke-virtual {v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;->accessLabel()Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    invoke-virtual {p0, v1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithExtendedNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;)V

    goto :goto_0

    .line 3274
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "no target for break statement"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 3278
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->breakLabels:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3280
    new-instance v1, Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;

    iget-object v2, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->breakLabels:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-direct {v1, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    invoke-virtual {p0, v1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithExtendedNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;)V

    .line 3283
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 3278
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public bridge synthetic visitCase(Lcom/sun/source/tree/CaseTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitCase(Lcom/sun/source/tree/CaseTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitCase(Lcom/sun/source/tree/CaseTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/CaseTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 3388
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "case visitor is implemented in SwitchBuilder"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic visitCatch(Lcom/sun/source/tree/CatchTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitCatch(Lcom/sun/source/tree/CatchTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitCatch(Lcom/sun/source/tree/CatchTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/CatchTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 3393
    invoke-interface {p1}, Lcom/sun/source/tree/CatchTree;->getParameter()Lcom/sun/source/tree/VariableTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3394
    invoke-interface {p1}, Lcom/sun/source/tree/CatchTree;->getBlock()Lcom/sun/source/tree/BlockTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3395
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitClass(Lcom/sun/source/tree/ClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitClass(Lcom/sun/source/tree/ClassTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitClass(Lcom/sun/source/tree/ClassTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/ClassTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 3400
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->declaredClasses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3401
    new-instance v0, Lorg/checkerframework/dataflow/cfg/node/ClassDeclarationNode;

    invoke-direct {v0, p1}, Lorg/checkerframework/dataflow/cfg/node/ClassDeclarationNode;-><init>(Lcom/sun/source/tree/ClassTree;)V

    .line 3402
    .local v0, "classbody":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p0, v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3403
    return-object v0
.end method

.method public bridge synthetic visitCompilationUnit(Lcom/sun/source/tree/CompilationUnitTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitCompilationUnit(Lcom/sun/source/tree/CompilationUnitTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitCompilationUnit(Lcom/sun/source/tree/CompilationUnitTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/CompilationUnitTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 4234
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "CompilationUnitTree is unexpected in AST to CFG translation"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 16
    .param p1, "tree"    # Lcom/sun/source/tree/CompoundAssignmentTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 2777
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    .line 2778
    .local v3, "kind":Lcom/sun/source/tree/Tree$Kind;
    sget-object v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-virtual {v3}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_0

    .line 2990
    goto/16 :goto_6

    .line 2942
    :pswitch_0
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getVariable()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 2943
    .local v4, "targetLHS":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    invoke-virtual {v0, v6, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 2945
    .local v6, "value":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getVariable()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v7

    invoke-static {v7}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v7

    .line 2946
    .local v7, "leftType":Ljavax/lang/model/type/TypeMirror;
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v8

    invoke-static {v8}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v8

    .line 2948
    .local v8, "rightType":Ljavax/lang/model/type/TypeMirror;
    const/4 v9, 0x0

    .line 2949
    .local v9, "targetRHS":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {v0, v7}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->isNumericOrBoxed(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v0, v8}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->isNumericOrBoxed(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2950
    invoke-virtual {v0, v7, v8}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->binaryPromotedType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v10

    .line 2951
    .local v10, "promotedType":Ljavax/lang/model/type/TypeMirror;
    invoke-virtual {v0, v4, v10}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->binaryNumericPromotion(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v9

    .line 2952
    invoke-virtual {v0, v6, v10}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->binaryNumericPromotion(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v6

    .line 2953
    .end local v10    # "promotedType":Ljavax/lang/model/type/TypeMirror;
    goto :goto_0

    :cond_0
    invoke-static {v7}, Lorg/checkerframework/javacutil/TypesUtils;->isBooleanType(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2954
    invoke-static {v8}, Lorg/checkerframework/javacutil/TypesUtils;->isBooleanType(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2955
    invoke-virtual {v0, v4}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->unbox(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v9

    .line 2956
    invoke-virtual {v0, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->unbox(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v6

    .line 2962
    :goto_0
    iget-object v10, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    .line 2965
    invoke-virtual {v0, v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->withoutAssignment(Lcom/sun/source/tree/Tree$Kind;)Lcom/sun/source/tree/Tree$Kind;

    move-result-object v11

    .line 2966
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getVariable()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v12

    .line 2967
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v13

    .line 2963
    invoke-virtual {v10, v7, v11, v12, v13}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildBinary(Ljavax/lang/model/type/TypeMirror;Lcom/sun/source/tree/Tree$Kind;Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/BinaryTree;

    move-result-object v10

    .line 2968
    .local v10, "operTree":Lcom/sun/source/tree/BinaryTree;
    invoke-virtual {v0, v10}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 2970
    sget-object v11, Lcom/sun/source/tree/Tree$Kind;->AND_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v11, :cond_1

    .line 2971
    new-instance v11, Lorg/checkerframework/dataflow/cfg/node/BitwiseAndNode;

    invoke-direct {v11, v10, v9, v6}, Lorg/checkerframework/dataflow/cfg/node/BitwiseAndNode;-><init>(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .local v11, "operNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    goto :goto_1

    .line 2972
    .end local v11    # "operNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_1
    sget-object v11, Lcom/sun/source/tree/Tree$Kind;->OR_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v11, :cond_2

    .line 2973
    new-instance v11, Lorg/checkerframework/dataflow/cfg/node/BitwiseOrNode;

    invoke-direct {v11, v10, v9, v6}, Lorg/checkerframework/dataflow/cfg/node/BitwiseOrNode;-><init>(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .restart local v11    # "operNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    goto :goto_1

    .line 2975
    .end local v11    # "operNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_2
    sget-object v11, Lcom/sun/source/tree/Tree$Kind;->XOR_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v11, :cond_3

    .line 2976
    new-instance v11, Lorg/checkerframework/dataflow/cfg/node/BitwiseXorNode;

    invoke-direct {v11, v10, v9, v6}, Lorg/checkerframework/dataflow/cfg/node/BitwiseXorNode;-><init>(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 2978
    .restart local v11    # "operNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    :goto_1
    invoke-virtual {v0, v11}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 2980
    iget-object v12, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    invoke-virtual {v12, v7, v10}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildTypeCast(Ljavax/lang/model/type/TypeMirror;Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/TypeCastTree;

    move-result-object v12

    .line 2981
    .local v12, "castTree":Lcom/sun/source/tree/TypeCastTree;
    invoke-virtual {v0, v12}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 2982
    new-instance v13, Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;

    iget-object v14, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->types:Ljavax/lang/model/util/Types;

    invoke-direct {v13, v12, v11, v7, v14}, Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;-><init>(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/util/Types;)V

    .line 2983
    .local v13, "castNode":Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;
    invoke-virtual {v13, v5}, Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;->setInSource(Z)V

    .line 2984
    invoke-virtual {v0, v13}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 2986
    new-instance v5, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;

    invoke-direct {v5, v1, v4, v13}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;-><init>(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 2987
    .local v5, "assignNode":Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;
    invoke-virtual {v0, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 2988
    return-object v5

    .line 2975
    .end local v5    # "assignNode":Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;
    .end local v11    # "operNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v12    # "castTree":Lcom/sun/source/tree/TypeCastTree;
    .end local v13    # "castNode":Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;
    :cond_3
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 2958
    .end local v10    # "operTree":Lcom/sun/source/tree/BinaryTree;
    :cond_4
    new-instance v5, Ljava/lang/AssertionError;

    const-string v10, "Both argument to logical operation must be numeric or boolean"

    invoke-direct {v5, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 2900
    .end local v4    # "targetLHS":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v6    # "value":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v7    # "leftType":Ljavax/lang/model/type/TypeMirror;
    .end local v8    # "rightType":Ljavax/lang/model/type/TypeMirror;
    .end local v9    # "targetRHS":Lorg/checkerframework/dataflow/cfg/node/Node;
    :pswitch_1
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getVariable()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 2901
    .restart local v4    # "targetLHS":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    invoke-virtual {v0, v6, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 2903
    .restart local v6    # "value":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getVariable()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v7

    invoke-static {v7}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v7

    .line 2905
    .restart local v7    # "leftType":Ljavax/lang/model/type/TypeMirror;
    invoke-virtual {v0, v4}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->unaryNumericPromotion(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v8

    .line 2906
    .local v8, "targetRHS":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {v0, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->unaryNumericPromotion(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v6

    .line 2908
    iget-object v9, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    .line 2911
    invoke-virtual {v0, v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->withoutAssignment(Lcom/sun/source/tree/Tree$Kind;)Lcom/sun/source/tree/Tree$Kind;

    move-result-object v10

    .line 2912
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getVariable()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v11

    .line 2913
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v12

    .line 2909
    invoke-virtual {v9, v7, v10, v11, v12}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildBinary(Ljavax/lang/model/type/TypeMirror;Lcom/sun/source/tree/Tree$Kind;Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/BinaryTree;

    move-result-object v9

    .line 2914
    .local v9, "operTree":Lcom/sun/source/tree/BinaryTree;
    invoke-virtual {v0, v9}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 2916
    sget-object v10, Lcom/sun/source/tree/Tree$Kind;->LEFT_SHIFT_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v10, :cond_5

    .line 2917
    new-instance v10, Lorg/checkerframework/dataflow/cfg/node/LeftShiftNode;

    invoke-direct {v10, v9, v8, v6}, Lorg/checkerframework/dataflow/cfg/node/LeftShiftNode;-><init>(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .local v10, "operNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    goto :goto_2

    .line 2918
    .end local v10    # "operNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_5
    sget-object v10, Lcom/sun/source/tree/Tree$Kind;->RIGHT_SHIFT_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v10, :cond_6

    .line 2919
    new-instance v10, Lorg/checkerframework/dataflow/cfg/node/SignedRightShiftNode;

    invoke-direct {v10, v9, v8, v6}, Lorg/checkerframework/dataflow/cfg/node/SignedRightShiftNode;-><init>(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .restart local v10    # "operNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    goto :goto_2

    .line 2921
    .end local v10    # "operNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_6
    sget-object v10, Lcom/sun/source/tree/Tree$Kind;->UNSIGNED_RIGHT_SHIFT_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v10, :cond_7

    .line 2922
    new-instance v10, Lorg/checkerframework/dataflow/cfg/node/UnsignedRightShiftNode;

    invoke-direct {v10, v9, v8, v6}, Lorg/checkerframework/dataflow/cfg/node/UnsignedRightShiftNode;-><init>(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 2924
    .restart local v10    # "operNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    :goto_2
    invoke-virtual {v0, v10}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 2926
    iget-object v11, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    invoke-virtual {v11, v7, v9}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildTypeCast(Ljavax/lang/model/type/TypeMirror;Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/TypeCastTree;

    move-result-object v11

    .line 2927
    .local v11, "castTree":Lcom/sun/source/tree/TypeCastTree;
    invoke-virtual {v0, v11}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 2928
    new-instance v12, Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;

    iget-object v13, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->types:Ljavax/lang/model/util/Types;

    invoke-direct {v12, v11, v10, v7, v13}, Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;-><init>(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/util/Types;)V

    .line 2930
    .local v12, "castNode":Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;
    invoke-virtual {v12, v5}, Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;->setInSource(Z)V

    .line 2931
    invoke-virtual {v0, v12}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 2933
    new-instance v5, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;

    invoke-direct {v5, v1, v4, v12}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;-><init>(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 2934
    .restart local v5    # "assignNode":Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;
    invoke-virtual {v0, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 2935
    return-object v5

    .line 2921
    .end local v5    # "assignNode":Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;
    .end local v10    # "operNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v11    # "castTree":Lcom/sun/source/tree/TypeCastTree;
    .end local v12    # "castNode":Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;
    :cond_7
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 2845
    .end local v4    # "targetLHS":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v6    # "value":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v7    # "leftType":Ljavax/lang/model/type/TypeMirror;
    .end local v8    # "targetRHS":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v9    # "operTree":Lcom/sun/source/tree/BinaryTree;
    :pswitch_2
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getVariable()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 2846
    .restart local v4    # "targetLHS":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    invoke-virtual {v0, v6, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 2848
    .restart local v6    # "value":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getVariable()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v7

    invoke-static {v7}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v7

    .line 2849
    .restart local v7    # "leftType":Ljavax/lang/model/type/TypeMirror;
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v8

    invoke-static {v8}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v8

    .line 2851
    .local v8, "rightType":Ljavax/lang/model/type/TypeMirror;
    invoke-static {v7}, Lorg/checkerframework/javacutil/TypesUtils;->isString(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v9

    if-nez v9, :cond_b

    invoke-static {v8}, Lorg/checkerframework/javacutil/TypesUtils;->isString(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_4

    .line 2859
    :cond_8
    invoke-virtual {v0, v7, v8}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->binaryPromotedType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v9

    .line 2860
    .local v9, "promotedType":Ljavax/lang/model/type/TypeMirror;
    invoke-virtual {v0, v4, v9}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->binaryNumericPromotion(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v10

    .line 2861
    .local v10, "targetRHS":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {v0, v6, v9}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->binaryNumericPromotion(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v6

    .line 2863
    iget-object v11, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    .line 2866
    invoke-virtual {v0, v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->withoutAssignment(Lcom/sun/source/tree/Tree$Kind;)Lcom/sun/source/tree/Tree$Kind;

    move-result-object v12

    .line 2867
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getVariable()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v13

    .line 2868
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v14

    .line 2864
    invoke-virtual {v11, v9, v12, v13, v14}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildBinary(Ljavax/lang/model/type/TypeMirror;Lcom/sun/source/tree/Tree$Kind;Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/BinaryTree;

    move-result-object v11

    .line 2869
    .local v11, "operTree":Lcom/sun/source/tree/BinaryTree;
    invoke-virtual {v0, v11}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 2871
    sget-object v12, Lcom/sun/source/tree/Tree$Kind;->PLUS_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v12, :cond_9

    .line 2872
    new-instance v12, Lorg/checkerframework/dataflow/cfg/node/NumericalAdditionNode;

    invoke-direct {v12, v11, v10, v6}, Lorg/checkerframework/dataflow/cfg/node/NumericalAdditionNode;-><init>(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .local v12, "operNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    goto :goto_3

    .line 2874
    .end local v12    # "operNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_9
    sget-object v12, Lcom/sun/source/tree/Tree$Kind;->MINUS_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v12, :cond_a

    .line 2875
    new-instance v12, Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;

    invoke-direct {v12, v11, v10, v6}, Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;-><init>(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 2877
    .restart local v12    # "operNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    :goto_3
    invoke-virtual {v0, v12}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 2879
    iget-object v13, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    invoke-virtual {v13, v7, v11}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildTypeCast(Ljavax/lang/model/type/TypeMirror;Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/TypeCastTree;

    move-result-object v13

    .line 2880
    .local v13, "castTree":Lcom/sun/source/tree/TypeCastTree;
    invoke-virtual {v0, v13}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 2881
    new-instance v14, Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;

    iget-object v15, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->types:Ljavax/lang/model/util/Types;

    invoke-direct {v14, v13, v12, v7, v15}, Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;-><init>(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/util/Types;)V

    .line 2883
    .local v14, "castNode":Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;
    invoke-virtual {v14, v5}, Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;->setInSource(Z)V

    .line 2884
    invoke-virtual {v0, v14}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 2888
    new-instance v5, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;

    invoke-direct {v5, v1, v4, v14}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;-><init>(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 2890
    .restart local v5    # "assignNode":Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;
    invoke-virtual {v0, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 2891
    return-object v5

    .line 2874
    .end local v5    # "assignNode":Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;
    .end local v12    # "operNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v13    # "castTree":Lcom/sun/source/tree/TypeCastTree;
    .end local v14    # "castNode":Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;
    :cond_a
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 2852
    .end local v9    # "promotedType":Ljavax/lang/model/type/TypeMirror;
    .end local v10    # "targetRHS":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v11    # "operTree":Lcom/sun/source/tree/BinaryTree;
    :cond_b
    :goto_4
    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->PLUS_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v5, :cond_c

    .line 2853
    invoke-virtual {v0, v4}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->stringConversion(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v5

    .line 2854
    .local v5, "targetRHS":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {v0, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->stringConversion(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v6

    .line 2855
    new-instance v9, Lorg/checkerframework/dataflow/cfg/node/StringConcatenateAssignmentNode;

    invoke-direct {v9, v1, v5, v6}, Lorg/checkerframework/dataflow/cfg/node/StringConcatenateAssignmentNode;-><init>(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 2856
    .local v9, "r":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {v0, v9}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 2857
    return-object v9

    .line 2852
    .end local v5    # "targetRHS":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v9    # "r":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_c
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 2784
    .end local v4    # "targetLHS":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v6    # "value":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v7    # "leftType":Ljavax/lang/model/type/TypeMirror;
    .end local v8    # "rightType":Ljavax/lang/model/type/TypeMirror;
    :pswitch_3
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getVariable()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 2785
    .restart local v4    # "targetLHS":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    invoke-virtual {v0, v6, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 2787
    .restart local v6    # "value":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-static/range {p1 .. p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v7

    .line 2788
    .local v7, "exprType":Ljavax/lang/model/type/TypeMirror;
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getVariable()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v8

    invoke-static {v8}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v8

    .line 2789
    .local v8, "leftType":Ljavax/lang/model/type/TypeMirror;
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v9

    invoke-static {v9}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v9

    .line 2790
    .local v9, "rightType":Ljavax/lang/model/type/TypeMirror;
    invoke-virtual {v0, v8, v9}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->binaryPromotedType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v10

    .line 2791
    .local v10, "promotedType":Ljavax/lang/model/type/TypeMirror;
    invoke-virtual {v0, v4, v10}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->binaryNumericPromotion(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v11

    .line 2792
    .local v11, "targetRHS":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {v0, v6, v10}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->binaryNumericPromotion(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v6

    .line 2794
    iget-object v12, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    .line 2797
    invoke-virtual {v0, v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->withoutAssignment(Lcom/sun/source/tree/Tree$Kind;)Lcom/sun/source/tree/Tree$Kind;

    move-result-object v13

    .line 2798
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getVariable()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v14

    .line 2799
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v15

    .line 2795
    invoke-virtual {v12, v10, v13, v14, v15}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildBinary(Ljavax/lang/model/type/TypeMirror;Lcom/sun/source/tree/Tree$Kind;Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/BinaryTree;

    move-result-object v12

    .line 2800
    .local v12, "operTree":Lcom/sun/source/tree/BinaryTree;
    invoke-virtual {v0, v12}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 2802
    sget-object v13, Lcom/sun/source/tree/Tree$Kind;->MULTIPLY_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v13, :cond_d

    .line 2803
    new-instance v13, Lorg/checkerframework/dataflow/cfg/node/NumericalMultiplicationNode;

    invoke-direct {v13, v12, v11, v6}, Lorg/checkerframework/dataflow/cfg/node/NumericalMultiplicationNode;-><init>(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .local v13, "operNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    goto :goto_5

    .line 2804
    .end local v13    # "operNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_d
    sget-object v13, Lcom/sun/source/tree/Tree$Kind;->DIVIDE_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    const-string v14, "java.lang.ArithmeticException"

    if-ne v3, v13, :cond_f

    .line 2805
    invoke-static {v7}, Lorg/checkerframework/javacutil/TypesUtils;->isIntegral(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 2806
    new-instance v13, Lorg/checkerframework/dataflow/cfg/node/IntegerDivisionNode;

    invoke-direct {v13, v12, v11, v6}, Lorg/checkerframework/dataflow/cfg/node/IntegerDivisionNode;-><init>(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 2808
    .restart local v13    # "operNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    iget-object v15, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->elements:Ljavax/lang/model/util/Elements;

    .line 2809
    invoke-interface {v15, v14}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v14

    .line 2810
    .local v14, "throwableElement":Ljavax/lang/model/element/TypeElement;
    invoke-interface {v14}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v15

    invoke-virtual {v0, v13, v15}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNodeWithException(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;

    .line 2811
    .end local v14    # "throwableElement":Ljavax/lang/model/element/TypeElement;
    goto :goto_5

    .line 2812
    .end local v13    # "operNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_e
    new-instance v13, Lorg/checkerframework/dataflow/cfg/node/FloatingDivisionNode;

    invoke-direct {v13, v12, v11, v6}, Lorg/checkerframework/dataflow/cfg/node/FloatingDivisionNode;-><init>(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .restart local v13    # "operNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    goto :goto_5

    .line 2815
    .end local v13    # "operNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_f
    sget-object v13, Lcom/sun/source/tree/Tree$Kind;->REMAINDER_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v13, :cond_11

    .line 2816
    invoke-static {v7}, Lorg/checkerframework/javacutil/TypesUtils;->isIntegral(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 2817
    new-instance v13, Lorg/checkerframework/dataflow/cfg/node/IntegerRemainderNode;

    invoke-direct {v13, v12, v11, v6}, Lorg/checkerframework/dataflow/cfg/node/IntegerRemainderNode;-><init>(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 2819
    .restart local v13    # "operNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    iget-object v15, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->elements:Ljavax/lang/model/util/Elements;

    .line 2820
    invoke-interface {v15, v14}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v14

    .line 2821
    .restart local v14    # "throwableElement":Ljavax/lang/model/element/TypeElement;
    invoke-interface {v14}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v15

    invoke-virtual {v0, v13, v15}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNodeWithException(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;

    .line 2822
    .end local v14    # "throwableElement":Ljavax/lang/model/element/TypeElement;
    goto :goto_5

    .line 2823
    .end local v13    # "operNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_10
    new-instance v13, Lorg/checkerframework/dataflow/cfg/node/FloatingRemainderNode;

    invoke-direct {v13, v12, v11, v6}, Lorg/checkerframework/dataflow/cfg/node/FloatingRemainderNode;-><init>(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 2826
    .restart local v13    # "operNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    :goto_5
    invoke-virtual {v0, v13}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 2828
    iget-object v14, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    invoke-virtual {v14, v8, v12}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildTypeCast(Ljavax/lang/model/type/TypeMirror;Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/TypeCastTree;

    move-result-object v14

    .line 2829
    .local v14, "castTree":Lcom/sun/source/tree/TypeCastTree;
    invoke-virtual {v0, v14}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 2830
    new-instance v15, Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;

    iget-object v5, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->types:Ljavax/lang/model/util/Types;

    invoke-direct {v15, v14, v13, v8, v5}, Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;-><init>(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/util/Types;)V

    move-object v5, v15

    .line 2832
    .local v5, "castNode":Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;
    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;->setInSource(Z)V

    .line 2833
    invoke-virtual {v0, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 2835
    new-instance v15, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;

    invoke-direct {v15, v1, v4, v5}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;-><init>(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 2836
    .local v15, "assignNode":Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;
    invoke-virtual {v0, v15}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 2837
    return-object v15

    .line 2815
    .end local v5    # "castNode":Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;
    .end local v13    # "operNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v14    # "castTree":Lcom/sun/source/tree/TypeCastTree;
    .end local v15    # "assignNode":Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;
    :cond_11
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 2990
    .end local v4    # "targetLHS":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v6    # "value":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v7    # "exprType":Ljavax/lang/model/type/TypeMirror;
    .end local v8    # "leftType":Ljavax/lang/model/type/TypeMirror;
    .end local v9    # "rightType":Ljavax/lang/model/type/TypeMirror;
    .end local v10    # "promotedType":Ljavax/lang/model/type/TypeMirror;
    .end local v11    # "targetRHS":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v12    # "operTree":Lcom/sun/source/tree/BinaryTree;
    :goto_6
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "unexpected compound assignment type"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic visitConditionalExpression(Lcom/sun/source/tree/ConditionalExpressionTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitConditionalExpression(Lcom/sun/source/tree/ConditionalExpressionTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitConditionalExpression(Lcom/sun/source/tree/ConditionalExpressionTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 9
    .param p1, "tree"    # Lcom/sun/source/tree/ConditionalExpressionTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 3409
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 3411
    .local v0, "exprType":Ljavax/lang/model/type/TypeMirror;
    new-instance v1, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-direct {v1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;-><init>()V

    .line 3412
    .local v1, "trueStart":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    new-instance v2, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-direct {v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;-><init>()V

    .line 3413
    .local v2, "falseStart":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    new-instance v3, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-direct {v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;-><init>()V

    .line 3415
    .local v3, "merge":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    invoke-interface {p1}, Lcom/sun/source/tree/ConditionalExpressionTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v4

    invoke-virtual {p0, v4, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-virtual {p0, v4}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->unbox(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v4

    .line 3416
    .local v4, "condition":Lorg/checkerframework/dataflow/cfg/node/Node;
    new-instance v5, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;

    invoke-direct {v5, v1, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 3417
    .local v5, "cjump":Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;
    invoke-virtual {p0, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithExtendedNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;)V

    .line 3419
    invoke-virtual {p0, v1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addLabelForNextNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 3420
    invoke-interface {p1}, Lcom/sun/source/tree/ConditionalExpressionTree;->getTrueExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    invoke-virtual {p0, v6, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3421
    .local v6, "trueExpr":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p0, v6, v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->conditionalExprPromotion(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v6

    .line 3422
    new-instance v7, Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;

    invoke-direct {v7, v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    invoke-virtual {p0, v7}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithExtendedNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;)V

    .line 3424
    invoke-virtual {p0, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addLabelForNextNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 3425
    invoke-interface {p1}, Lcom/sun/source/tree/ConditionalExpressionTree;->getFalseExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v7

    invoke-virtual {p0, v7, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3426
    .local v7, "falseExpr":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p0, v7, v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->conditionalExprPromotion(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v7

    .line 3428
    invoke-virtual {p0, v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addLabelForNextNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 3429
    new-instance v8, Lorg/checkerframework/dataflow/cfg/node/TernaryExpressionNode;

    invoke-direct {v8, p1, v4, v6, v7}, Lorg/checkerframework/dataflow/cfg/node/TernaryExpressionNode;-><init>(Lcom/sun/source/tree/ConditionalExpressionTree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 3430
    .local v8, "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p0, v8}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3432
    return-object v8
.end method

.method public bridge synthetic visitContinue(Lcom/sun/source/tree/ContinueTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitContinue(Lcom/sun/source/tree/ContinueTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitContinue(Lcom/sun/source/tree/ContinueTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 3
    .param p1, "tree"    # Lcom/sun/source/tree/ContinueTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 3437
    invoke-interface {p1}, Lcom/sun/source/tree/ContinueTree;->getLabel()Ljavax/lang/model/element/Name;

    move-result-object v0

    .line 3438
    .local v0, "label":Ljavax/lang/model/element/Name;
    if-nez v0, :cond_1

    .line 3439
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->continueTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    if-eqz v1, :cond_0

    .line 3441
    new-instance v1, Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;

    iget-object v2, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->continueTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    invoke-virtual {v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;->accessLabel()Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    invoke-virtual {p0, v1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithExtendedNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;)V

    goto :goto_0

    .line 3439
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "no target for continue statement"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 3443
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->continueLabels:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3445
    new-instance v1, Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;

    iget-object v2, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->continueLabels:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-direct {v1, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    invoke-virtual {p0, v1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithExtendedNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;)V

    .line 3448
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 3443
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public bridge synthetic visitDoWhileLoop(Lcom/sun/source/tree/DoWhileLoopTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitDoWhileLoop(Lcom/sun/source/tree/DoWhileLoopTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitDoWhileLoop(Lcom/sun/source/tree/DoWhileLoopTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 7
    .param p1, "tree"    # Lcom/sun/source/tree/DoWhileLoopTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 3453
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->getLabel(Lcom/sun/source/util/TreePath;)Ljavax/lang/model/element/Name;

    move-result-object v0

    .line 3455
    .local v0, "parentLabel":Ljavax/lang/model/element/Name;
    new-instance v1, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-direct {v1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;-><init>()V

    .line 3456
    .local v1, "loopEntry":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    new-instance v2, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-direct {v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;-><init>()V

    .line 3462
    .local v2, "loopExit":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    if-eqz v0, :cond_0

    .line 3463
    iget-object v3, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->continueLabels:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    .local v3, "conditionStart":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    goto :goto_0

    .line 3465
    .end local v3    # "conditionStart":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    :cond_0
    new-instance v3, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-direct {v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;-><init>()V

    .line 3468
    .restart local v3    # "conditionStart":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    :goto_0
    iget-object v4, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->breakTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    .line 3469
    .local v4, "oldBreakTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    new-instance v5, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    invoke-direct {v5, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    iput-object v5, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->breakTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    .line 3471
    iget-object v5, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->continueTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    .line 3472
    .local v5, "oldContinueTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    new-instance v6, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    invoke-direct {v6, v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    iput-object v6, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->continueTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    .line 3475
    invoke-virtual {p0, v1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addLabelForNextNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 3476
    invoke-interface {p1}, Lcom/sun/source/tree/DoWhileLoopTree;->getStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 3477
    invoke-interface {p1}, Lcom/sun/source/tree/DoWhileLoopTree;->getStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v6

    invoke-virtual {p0, v6, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3481
    :cond_1
    invoke-virtual {p0, v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addLabelForNextNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 3482
    invoke-interface {p1}, Lcom/sun/source/tree/DoWhileLoopTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 3483
    invoke-interface {p1}, Lcom/sun/source/tree/DoWhileLoopTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    invoke-virtual {p0, v6, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-virtual {p0, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->unbox(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3484
    new-instance v6, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;

    invoke-direct {v6, v1, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 3485
    .local v6, "cjump":Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;
    invoke-virtual {p0, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithExtendedNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;)V

    .line 3489
    .end local v6    # "cjump":Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;
    :cond_2
    invoke-virtual {p0, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addLabelForNextNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 3491
    iput-object v4, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->breakTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    .line 3492
    iput-object v5, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->continueTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    .line 3494
    const/4 v6, 0x0

    return-object v6
.end method

.method public bridge synthetic visitEmptyStatement(Lcom/sun/source/tree/EmptyStatementTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitEmptyStatement(Lcom/sun/source/tree/EmptyStatementTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitEmptyStatement(Lcom/sun/source/tree/EmptyStatementTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/EmptyStatementTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 4203
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitEnhancedForLoop(Lcom/sun/source/tree/EnhancedForLoopTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitEnhancedForLoop(Lcom/sun/source/tree/EnhancedForLoopTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitEnhancedForLoop(Lcom/sun/source/tree/EnhancedForLoopTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 48
    .param p1, "tree"    # Lcom/sun/source/tree/EnhancedForLoopTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 3511
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->getLabel(Lcom/sun/source/util/TreePath;)Ljavax/lang/model/element/Name;

    move-result-object v2

    .line 3513
    .local v2, "parentLabel":Ljavax/lang/model/element/Name;
    new-instance v3, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-direct {v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;-><init>()V

    .line 3514
    .local v3, "conditionStart":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    new-instance v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-direct {v4}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;-><init>()V

    .line 3515
    .local v4, "loopEntry":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    new-instance v5, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-direct {v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;-><init>()V

    .line 3521
    .local v5, "loopExit":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    if-eqz v2, :cond_0

    .line 3522
    iget-object v6, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->continueLabels:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    .local v6, "updateStart":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    goto :goto_0

    .line 3524
    .end local v6    # "updateStart":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    :cond_0
    new-instance v6, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-direct {v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;-><init>()V

    .line 3527
    .restart local v6    # "updateStart":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    :goto_0
    iget-object v7, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->breakTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    .line 3528
    .local v7, "oldBreakTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    new-instance v8, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    invoke-direct {v8, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    iput-object v8, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->breakTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    .line 3530
    iget-object v8, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->continueTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    .line 3531
    .local v8, "oldContinueTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    new-instance v9, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    invoke-direct {v9, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    iput-object v9, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->continueTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    .line 3535
    iget-object v9, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->elements:Ljavax/lang/model/util/Elements;

    const-string v10, "java.lang.Iterable"

    invoke-interface {v9, v10}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v9

    .line 3536
    .local v9, "iterableElement":Ljavax/lang/model/element/TypeElement;
    iget-object v10, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->types:Ljavax/lang/model/util/Types;

    invoke-interface {v9}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v11

    invoke-interface {v10, v11}, Ljavax/lang/model/util/Types;->erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v10

    .line 3538
    .local v10, "iterableType":Ljavax/lang/model/type/TypeMirror;
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/EnhancedForLoopTree;->getVariable()Lcom/sun/source/tree/VariableTree;

    move-result-object v11

    .line 3539
    .local v11, "variable":Lcom/sun/source/tree/VariableTree;
    invoke-static {v11}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/VariableTree;)Ljavax/lang/model/element/VariableElement;

    move-result-object v12

    .line 3540
    .local v12, "variableElement":Ljavax/lang/model/element/VariableElement;
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/EnhancedForLoopTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v13

    .line 3541
    .local v13, "expression":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/EnhancedForLoopTree;->getStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v14

    .line 3543
    .local v14, "statement":Lcom/sun/source/tree/StatementTree;
    invoke-static {v13}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v15

    .line 3545
    .local v15, "exprType":Ljavax/lang/model/type/TypeMirror;
    move-object/from16 v16, v2

    .end local v2    # "parentLabel":Ljavax/lang/model/element/Name;
    .local v16, "parentLabel":Ljavax/lang/model/element/Name;
    iget-object v2, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->types:Ljavax/lang/model/util/Types;

    invoke-interface {v2, v15, v10}, Ljavax/lang/model/util/Types;->isSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v2

    move-object/from16 v17, v9

    .end local v9    # "iterableElement":Ljavax/lang/model/element/TypeElement;
    .local v17, "iterableElement":Ljavax/lang/model/element/TypeElement;
    if-eqz v2, :cond_3

    .line 3547
    invoke-static {v15}, Lorg/checkerframework/javacutil/TypesUtils;->upperBound(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v15

    .line 3549
    instance-of v2, v15, Ljavax/lang/model/type/DeclaredType;

    if-eqz v2, :cond_2

    .line 3550
    move-object v2, v15

    check-cast v2, Ljavax/lang/model/type/DeclaredType;

    .line 3551
    .local v2, "declaredExprType":Ljavax/lang/model/type/DeclaredType;
    invoke-interface {v2}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    .line 3553
    iget-object v9, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    invoke-virtual {v9, v13}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildIteratorMethodAccess(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/MemberSelectTree;

    move-result-object v9

    .line 3554
    .local v9, "iteratorSelect":Lcom/sun/source/tree/MemberSelectTree;
    invoke-virtual {v0, v9}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 3556
    move-object/from16 v19, v2

    .end local v2    # "declaredExprType":Ljavax/lang/model/type/DeclaredType;
    .local v19, "declaredExprType":Ljavax/lang/model/type/DeclaredType;
    iget-object v2, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    .line 3557
    invoke-virtual {v2, v9}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildMethodInvocation(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/MethodInvocationTree;

    move-result-object v2

    .line 3558
    .local v2, "iteratorCall":Lcom/sun/source/tree/MethodInvocationTree;
    invoke-virtual {v0, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 3560
    nop

    .line 3561
    move-object/from16 v20, v10

    .end local v10    # "iterableType":Ljavax/lang/model/type/TypeMirror;
    .local v20, "iterableType":Ljavax/lang/model/type/TypeMirror;
    invoke-virtual {v0, v2, v12}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->createEnhancedForLoopIteratorVariable(Lcom/sun/source/tree/MethodInvocationTree;Ljavax/lang/model/element/VariableElement;)Lcom/sun/source/tree/VariableTree;

    move-result-object v10

    .line 3562
    .local v10, "iteratorVariable":Lcom/sun/source/tree/VariableTree;
    invoke-virtual {v0, v10}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 3564
    move-object/from16 v21, v15

    .end local v15    # "exprType":Ljavax/lang/model/type/TypeMirror;
    .local v21, "exprType":Ljavax/lang/model/type/TypeMirror;
    new-instance v15, Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;

    invoke-direct {v15, v10}, Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;-><init>(Lcom/sun/source/tree/VariableTree;)V

    .line 3566
    .local v15, "iteratorVariableDecl":Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;
    move-object/from16 v22, v8

    const/4 v8, 0x0

    .end local v8    # "oldContinueTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    .local v22, "oldContinueTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    invoke-virtual {v15, v8}, Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;->setInSource(Z)V

    .line 3568
    invoke-virtual {v0, v15}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3570
    invoke-virtual {v0, v13, v1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v8, v18

    check-cast v8, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3572
    .local v8, "expressionNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    move-object/from16 v24, v15

    .end local v15    # "iteratorVariableDecl":Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;
    .local v24, "iteratorVariableDecl":Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;
    new-instance v15, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;

    invoke-direct {v15, v9, v8}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;-><init>(Lcom/sun/source/tree/ExpressionTree;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 3574
    .local v15, "iteratorAccessNode":Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;
    move-object/from16 v25, v8

    const/4 v8, 0x0

    .end local v8    # "expressionNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    .local v25, "expressionNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {v15, v8}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->setInSource(Z)V

    .line 3575
    invoke-virtual {v0, v15}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3576
    new-instance v8, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;

    .line 3580
    move-object/from16 v23, v9

    .end local v9    # "iteratorSelect":Lcom/sun/source/tree/MemberSelectTree;
    .local v23, "iteratorSelect":Lcom/sun/source/tree/MemberSelectTree;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 3581
    move-object/from16 v26, v7

    .end local v7    # "oldBreakTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    .local v26, "oldBreakTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v7

    invoke-direct {v8, v2, v15, v9, v7}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;-><init>(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;Ljava/util/List;Lcom/sun/source/util/TreePath;)V

    move-object v7, v8

    .line 3582
    .local v7, "iteratorCallNode":Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->setInSource(Z)V

    .line 3583
    invoke-virtual {v0, v7}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3585
    new-instance v8, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;

    invoke-direct {v8, v10}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;-><init>(Lcom/sun/source/tree/Tree;)V

    invoke-virtual {v0, v10, v8, v7}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->translateAssignment(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;

    .line 3591
    invoke-virtual {v0, v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addLabelForNextNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 3592
    iget-object v8, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    invoke-virtual {v8, v10}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildVariableUse(Lcom/sun/source/tree/VariableTree;)Lcom/sun/source/tree/IdentifierTree;

    move-result-object v8

    .line 3593
    .local v8, "iteratorUse1":Lcom/sun/source/tree/IdentifierTree;
    invoke-virtual {v0, v8}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 3595
    new-instance v9, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;

    invoke-direct {v9, v8}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;-><init>(Lcom/sun/source/tree/Tree;)V

    .line 3596
    .local v9, "iteratorReceiverNode":Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    move-object/from16 v27, v2

    const/4 v2, 0x0

    .end local v2    # "iteratorCall":Lcom/sun/source/tree/MethodInvocationTree;
    .local v27, "iteratorCall":Lcom/sun/source/tree/MethodInvocationTree;
    invoke-virtual {v9, v2}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;->setInSource(Z)V

    .line 3597
    invoke-virtual {v0, v9}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3599
    iget-object v2, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    invoke-virtual {v2, v8}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildHasNextMethodAccess(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/MemberSelectTree;

    move-result-object v2

    .line 3600
    .local v2, "hasNextSelect":Lcom/sun/source/tree/MemberSelectTree;
    invoke-virtual {v0, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 3602
    move-object/from16 v28, v7

    .end local v7    # "iteratorCallNode":Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    .local v28, "iteratorCallNode":Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    new-instance v7, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;

    invoke-direct {v7, v2, v9}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;-><init>(Lcom/sun/source/tree/ExpressionTree;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 3604
    .local v7, "hasNextAccessNode":Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;
    move-object/from16 v29, v8

    const/4 v8, 0x0

    .end local v8    # "iteratorUse1":Lcom/sun/source/tree/IdentifierTree;
    .local v29, "iteratorUse1":Lcom/sun/source/tree/IdentifierTree;
    invoke-virtual {v7, v8}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->setInSource(Z)V

    .line 3605
    invoke-virtual {v0, v7}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3607
    iget-object v8, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    invoke-virtual {v8, v2}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildMethodInvocation(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/MethodInvocationTree;

    move-result-object v8

    .line 3608
    .local v8, "hasNextCall":Lcom/sun/source/tree/MethodInvocationTree;
    invoke-virtual {v0, v8}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 3610
    move-object/from16 v30, v2

    .end local v2    # "hasNextSelect":Lcom/sun/source/tree/MemberSelectTree;
    .local v30, "hasNextSelect":Lcom/sun/source/tree/MemberSelectTree;
    new-instance v2, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;

    .line 3614
    move-object/from16 v31, v9

    .end local v9    # "iteratorReceiverNode":Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    .local v31, "iteratorReceiverNode":Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 3615
    move-object/from16 v32, v15

    .end local v15    # "iteratorAccessNode":Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;
    .local v32, "iteratorAccessNode":Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v15

    invoke-direct {v2, v8, v7, v9, v15}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;-><init>(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;Ljava/util/List;Lcom/sun/source/util/TreePath;)V

    .line 3616
    .local v2, "hasNextCallNode":Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->setInSource(Z)V

    .line 3617
    invoke-virtual {v0, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3618
    new-instance v9, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;

    invoke-direct {v9, v4, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    invoke-virtual {v0, v9}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithExtendedNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;)V

    .line 3621
    invoke-virtual {v0, v4}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addLabelForNextNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 3622
    new-instance v9, Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;

    invoke-direct {v9, v11}, Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;-><init>(Lcom/sun/source/tree/VariableTree;)V

    invoke-virtual {v0, v9}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3624
    iget-object v9, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    invoke-virtual {v9, v10}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildVariableUse(Lcom/sun/source/tree/VariableTree;)Lcom/sun/source/tree/IdentifierTree;

    move-result-object v9

    .line 3625
    .local v9, "iteratorUse2":Lcom/sun/source/tree/IdentifierTree;
    invoke-virtual {v0, v9}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 3627
    new-instance v15, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;

    invoke-direct {v15, v9}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;-><init>(Lcom/sun/source/tree/Tree;)V

    .line 3628
    .local v15, "iteratorReceiverNode2":Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    move-object/from16 v33, v2

    const/4 v2, 0x0

    .end local v2    # "hasNextCallNode":Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    .local v33, "hasNextCallNode":Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    invoke-virtual {v15, v2}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;->setInSource(Z)V

    .line 3629
    invoke-virtual {v0, v15}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3631
    iget-object v2, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    invoke-virtual {v2, v9}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildNextMethodAccess(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/MemberSelectTree;

    move-result-object v2

    .line 3632
    .local v2, "nextSelect":Lcom/sun/source/tree/MemberSelectTree;
    invoke-virtual {v0, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 3634
    move-object/from16 v34, v7

    .end local v7    # "hasNextAccessNode":Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;
    .local v34, "hasNextAccessNode":Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;
    new-instance v7, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;

    invoke-direct {v7, v2, v15}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;-><init>(Lcom/sun/source/tree/ExpressionTree;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 3636
    .local v7, "nextAccessNode":Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;
    move-object/from16 v35, v8

    const/4 v8, 0x0

    .end local v8    # "hasNextCall":Lcom/sun/source/tree/MethodInvocationTree;
    .local v35, "hasNextCall":Lcom/sun/source/tree/MethodInvocationTree;
    invoke-virtual {v7, v8}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->setInSource(Z)V

    .line 3637
    invoke-virtual {v0, v7}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3639
    iget-object v8, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    invoke-virtual {v8, v2}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildMethodInvocation(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/MethodInvocationTree;

    move-result-object v8

    .line 3640
    .local v8, "nextCall":Lcom/sun/source/tree/MethodInvocationTree;
    invoke-virtual {v0, v8}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 3642
    move-object/from16 v36, v2

    .end local v2    # "nextSelect":Lcom/sun/source/tree/MemberSelectTree;
    .local v36, "nextSelect":Lcom/sun/source/tree/MemberSelectTree;
    new-instance v2, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;

    .line 3646
    move-object/from16 v37, v9

    .end local v9    # "iteratorUse2":Lcom/sun/source/tree/IdentifierTree;
    .local v37, "iteratorUse2":Lcom/sun/source/tree/IdentifierTree;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 3647
    move-object/from16 v38, v10

    .end local v10    # "iteratorVariable":Lcom/sun/source/tree/VariableTree;
    .local v38, "iteratorVariable":Lcom/sun/source/tree/VariableTree;
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v10

    invoke-direct {v2, v8, v7, v9, v10}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;-><init>(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;Ljava/util/List;Lcom/sun/source/util/TreePath;)V

    .line 3648
    .local v2, "nextCallNode":Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->setInSource(Z)V

    .line 3649
    invoke-virtual {v0, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3651
    new-instance v9, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;

    invoke-direct {v9, v11}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;-><init>(Lcom/sun/source/tree/Tree;)V

    invoke-virtual {v0, v11, v9, v8}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->translateAssignment(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;

    .line 3653
    if-eqz v14, :cond_1

    .line 3654
    invoke-virtual {v0, v14, v1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3658
    :cond_1
    invoke-virtual {v0, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addLabelForNextNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 3659
    new-instance v9, Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;

    invoke-direct {v9, v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    invoke-virtual {v0, v9}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithExtendedNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;)V

    .line 3661
    .end local v2    # "nextCallNode":Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    .end local v7    # "nextAccessNode":Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;
    .end local v8    # "nextCall":Lcom/sun/source/tree/MethodInvocationTree;
    .end local v15    # "iteratorReceiverNode2":Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    .end local v19    # "declaredExprType":Ljavax/lang/model/type/DeclaredType;
    .end local v23    # "iteratorSelect":Lcom/sun/source/tree/MemberSelectTree;
    .end local v24    # "iteratorVariableDecl":Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;
    .end local v25    # "expressionNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v27    # "iteratorCall":Lcom/sun/source/tree/MethodInvocationTree;
    .end local v28    # "iteratorCallNode":Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    .end local v29    # "iteratorUse1":Lcom/sun/source/tree/IdentifierTree;
    .end local v30    # "hasNextSelect":Lcom/sun/source/tree/MemberSelectTree;
    .end local v31    # "iteratorReceiverNode":Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    .end local v32    # "iteratorAccessNode":Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;
    .end local v33    # "hasNextCallNode":Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    .end local v34    # "hasNextAccessNode":Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;
    .end local v35    # "hasNextCall":Lcom/sun/source/tree/MethodInvocationTree;
    .end local v36    # "nextSelect":Lcom/sun/source/tree/MemberSelectTree;
    .end local v37    # "iteratorUse2":Lcom/sun/source/tree/IdentifierTree;
    .end local v38    # "iteratorVariable":Lcom/sun/source/tree/VariableTree;
    move-object/from16 v35, v4

    move-object/from16 v42, v6

    move-object/from16 v27, v12

    move-object/from16 v23, v13

    move-object/from16 v15, v21

    goto/16 :goto_1

    .line 3549
    .end local v20    # "iterableType":Ljavax/lang/model/type/TypeMirror;
    .end local v21    # "exprType":Ljavax/lang/model/type/TypeMirror;
    .end local v22    # "oldContinueTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    .end local v26    # "oldBreakTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    .local v7, "oldBreakTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    .local v8, "oldContinueTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    .local v10, "iterableType":Ljavax/lang/model/type/TypeMirror;
    .local v15, "exprType":Ljavax/lang/model/type/TypeMirror;
    :cond_2
    move-object/from16 v26, v7

    .end local v7    # "oldBreakTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    .restart local v26    # "oldBreakTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    new-instance v2, Ljava/lang/AssertionError;

    const-string v7, "an Iterable must be a DeclaredType"

    invoke-direct {v2, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 3665
    .end local v26    # "oldBreakTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    .restart local v7    # "oldBreakTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    :cond_3
    move-object/from16 v26, v7

    move-object/from16 v22, v8

    move-object/from16 v20, v10

    .line 3666
    .end local v7    # "oldBreakTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    .end local v8    # "oldContinueTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    .end local v10    # "iterableType":Ljavax/lang/model/type/TypeMirror;
    .restart local v20    # "iterableType":Ljavax/lang/model/type/TypeMirror;
    .restart local v22    # "oldContinueTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    .restart local v26    # "oldBreakTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    invoke-virtual {v0, v13, v12}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->createEnhancedForLoopArrayVariable(Lcom/sun/source/tree/ExpressionTree;Ljavax/lang/model/element/VariableElement;)Lcom/sun/source/tree/VariableTree;

    move-result-object v2

    .line 3667
    .local v2, "arrayVariable":Lcom/sun/source/tree/VariableTree;
    invoke-virtual {v0, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 3669
    new-instance v7, Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;

    invoke-direct {v7, v2}, Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;-><init>(Lcom/sun/source/tree/VariableTree;)V

    .line 3671
    .local v7, "arrayVariableNode":Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;->setInSource(Z)V

    .line 3672
    invoke-virtual {v0, v7}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3673
    invoke-virtual {v0, v13, v1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3675
    .local v8, "expressionNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    new-instance v9, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;

    invoke-direct {v9, v2}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;-><init>(Lcom/sun/source/tree/Tree;)V

    invoke-virtual {v0, v2, v9, v8}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->translateAssignment(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;

    .line 3679
    iget-object v9, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->types:Ljavax/lang/model/util/Types;

    sget-object v10, Ljavax/lang/model/type/TypeKind;->INT:Ljavax/lang/model/type/TypeKind;

    invoke-interface {v9, v10}, Ljavax/lang/model/util/Types;->getPrimitiveType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object v9

    .line 3681
    .local v9, "intType":Ljavax/lang/model/type/TypeMirror;
    iget-object v10, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    move-object/from16 v19, v7

    const/16 v18, 0x0

    .end local v7    # "arrayVariableNode":Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;
    .local v19, "arrayVariableNode":Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v10, v7}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildLiteral(Ljava/lang/Object;)Lcom/sun/source/tree/LiteralTree;

    move-result-object v7

    .line 3682
    .local v7, "zero":Lcom/sun/source/tree/LiteralTree;
    invoke-virtual {v0, v7}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 3684
    iget-object v10, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    .line 3687
    move-object/from16 v21, v8

    .end local v8    # "expressionNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    .local v21, "expressionNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    const-string v8, "index"

    invoke-virtual {v0, v8}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->uniqueName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3688
    move-object/from16 v23, v13

    .end local v13    # "expression":Lcom/sun/source/tree/ExpressionTree;
    .local v23, "expression":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {v12}, Ljavax/lang/model/element/VariableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v13

    .line 3685
    invoke-virtual {v10, v9, v8, v13, v7}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildVariableDecl(Ljavax/lang/model/type/TypeMirror;Ljava/lang/String;Ljavax/lang/model/element/Element;Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/VariableTree;

    move-result-object v8

    .line 3690
    .local v8, "indexVariable":Lcom/sun/source/tree/VariableTree;
    invoke-virtual {v0, v8}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 3691
    new-instance v10, Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;

    invoke-direct {v10, v8}, Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;-><init>(Lcom/sun/source/tree/VariableTree;)V

    .line 3693
    .local v10, "indexVariableNode":Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;->setInSource(Z)V

    .line 3694
    invoke-virtual {v0, v10}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3695
    new-instance v13, Lorg/checkerframework/dataflow/cfg/node/IntegerLiteralNode;

    invoke-direct {v13, v7}, Lorg/checkerframework/dataflow/cfg/node/IntegerLiteralNode;-><init>(Lcom/sun/source/tree/LiteralTree;)V

    invoke-virtual {v0, v13}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v13

    check-cast v13, Lorg/checkerframework/dataflow/cfg/node/IntegerLiteralNode;

    .line 3697
    .local v13, "zeroNode":Lorg/checkerframework/dataflow/cfg/node/IntegerLiteralNode;
    move-object/from16 v24, v7

    .end local v7    # "zero":Lcom/sun/source/tree/LiteralTree;
    .local v24, "zero":Lcom/sun/source/tree/LiteralTree;
    new-instance v7, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;

    invoke-direct {v7, v8}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;-><init>(Lcom/sun/source/tree/Tree;)V

    invoke-virtual {v0, v8, v7, v13}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->translateAssignment(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;

    .line 3700
    invoke-virtual {v0, v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addLabelForNextNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 3701
    iget-object v7, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    invoke-virtual {v7, v8}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildVariableUse(Lcom/sun/source/tree/VariableTree;)Lcom/sun/source/tree/IdentifierTree;

    move-result-object v7

    .line 3702
    .local v7, "indexUse1":Lcom/sun/source/tree/IdentifierTree;
    invoke-virtual {v0, v7}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 3703
    move-object/from16 v25, v10

    .end local v10    # "indexVariableNode":Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;
    .local v25, "indexVariableNode":Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;
    new-instance v10, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;

    invoke-direct {v10, v7}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;-><init>(Lcom/sun/source/tree/Tree;)V

    .line 3704
    .local v10, "indexNode1":Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    move-object/from16 v27, v12

    const/4 v12, 0x0

    .end local v12    # "variableElement":Ljavax/lang/model/element/VariableElement;
    .local v27, "variableElement":Ljavax/lang/model/element/VariableElement;
    invoke-virtual {v10, v12}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;->setInSource(Z)V

    .line 3705
    invoke-virtual {v0, v10}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3707
    iget-object v12, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    invoke-virtual {v12, v2}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildVariableUse(Lcom/sun/source/tree/VariableTree;)Lcom/sun/source/tree/IdentifierTree;

    move-result-object v12

    .line 3708
    .local v12, "arrayUse1":Lcom/sun/source/tree/IdentifierTree;
    invoke-virtual {v0, v12}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 3709
    move-object/from16 v28, v13

    .end local v13    # "zeroNode":Lorg/checkerframework/dataflow/cfg/node/IntegerLiteralNode;
    .local v28, "zeroNode":Lorg/checkerframework/dataflow/cfg/node/IntegerLiteralNode;
    new-instance v13, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;

    invoke-direct {v13, v12}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;-><init>(Lcom/sun/source/tree/Tree;)V

    invoke-virtual {v0, v13}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v13

    check-cast v13, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;

    .line 3711
    .local v13, "arrayNode1":Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    move-object/from16 v29, v15

    .end local v15    # "exprType":Ljavax/lang/model/type/TypeMirror;
    .local v29, "exprType":Ljavax/lang/model/type/TypeMirror;
    iget-object v15, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    invoke-virtual {v15, v12}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildArrayLengthAccess(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/MemberSelectTree;

    move-result-object v15

    .line 3712
    .local v15, "lengthSelect":Lcom/sun/source/tree/MemberSelectTree;
    invoke-virtual {v0, v15}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 3713
    move-object/from16 v30, v12

    .end local v12    # "arrayUse1":Lcom/sun/source/tree/IdentifierTree;
    .local v30, "arrayUse1":Lcom/sun/source/tree/IdentifierTree;
    new-instance v12, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;

    invoke-direct {v12, v15, v13}, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;-><init>(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 3714
    .local v12, "lengthAccessNode":Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;
    move-object/from16 v31, v13

    const/4 v13, 0x0

    .end local v13    # "arrayNode1":Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    .local v31, "arrayNode1":Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    invoke-virtual {v12, v13}, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->setInSource(Z)V

    .line 3715
    invoke-virtual {v0, v12}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3717
    iget-object v13, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    invoke-virtual {v13, v7, v15}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildLessThan(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/BinaryTree;

    move-result-object v13

    .line 3718
    .local v13, "lessThan":Lcom/sun/source/tree/BinaryTree;
    invoke-virtual {v0, v13}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 3720
    move-object/from16 v32, v7

    .end local v7    # "indexUse1":Lcom/sun/source/tree/IdentifierTree;
    .local v32, "indexUse1":Lcom/sun/source/tree/IdentifierTree;
    new-instance v7, Lorg/checkerframework/dataflow/cfg/node/LessThanNode;

    invoke-direct {v7, v13, v10, v12}, Lorg/checkerframework/dataflow/cfg/node/LessThanNode;-><init>(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 3722
    .local v7, "lessThanNode":Lorg/checkerframework/dataflow/cfg/node/LessThanNode;
    move-object/from16 v33, v10

    const/4 v10, 0x0

    .end local v10    # "indexNode1":Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    .local v33, "indexNode1":Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    invoke-virtual {v7, v10}, Lorg/checkerframework/dataflow/cfg/node/LessThanNode;->setInSource(Z)V

    .line 3723
    invoke-virtual {v0, v7}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3724
    new-instance v10, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;

    invoke-direct {v10, v4, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    invoke-virtual {v0, v10}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithExtendedNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;)V

    .line 3727
    invoke-virtual {v0, v4}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addLabelForNextNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 3728
    new-instance v10, Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;

    invoke-direct {v10, v11}, Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;-><init>(Lcom/sun/source/tree/VariableTree;)V

    invoke-virtual {v0, v10}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3730
    iget-object v10, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    invoke-virtual {v10, v2}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildVariableUse(Lcom/sun/source/tree/VariableTree;)Lcom/sun/source/tree/IdentifierTree;

    move-result-object v10

    .line 3731
    .local v10, "arrayUse2":Lcom/sun/source/tree/IdentifierTree;
    invoke-virtual {v0, v10}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 3732
    move-object/from16 v34, v2

    .end local v2    # "arrayVariable":Lcom/sun/source/tree/VariableTree;
    .local v34, "arrayVariable":Lcom/sun/source/tree/VariableTree;
    new-instance v2, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;

    invoke-direct {v2, v10}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;-><init>(Lcom/sun/source/tree/Tree;)V

    .line 3733
    .local v2, "arrayNode2":Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    move-object/from16 v35, v4

    const/4 v4, 0x0

    .end local v4    # "loopEntry":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    .local v35, "loopEntry":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    invoke-virtual {v2, v4}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;->setInSource(Z)V

    .line 3734
    invoke-virtual {v0, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3736
    iget-object v4, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    invoke-virtual {v4, v8}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildVariableUse(Lcom/sun/source/tree/VariableTree;)Lcom/sun/source/tree/IdentifierTree;

    move-result-object v4

    .line 3737
    .local v4, "indexUse2":Lcom/sun/source/tree/IdentifierTree;
    invoke-virtual {v0, v4}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 3738
    move-object/from16 v36, v7

    .end local v7    # "lessThanNode":Lorg/checkerframework/dataflow/cfg/node/LessThanNode;
    .local v36, "lessThanNode":Lorg/checkerframework/dataflow/cfg/node/LessThanNode;
    new-instance v7, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;

    invoke-direct {v7, v4}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;-><init>(Lcom/sun/source/tree/Tree;)V

    .line 3739
    .local v7, "indexNode2":Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    move-object/from16 v37, v12

    const/4 v12, 0x0

    .end local v12    # "lengthAccessNode":Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;
    .local v37, "lengthAccessNode":Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;
    invoke-virtual {v7, v12}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;->setInSource(Z)V

    .line 3740
    invoke-virtual {v0, v7}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3742
    iget-object v12, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    invoke-virtual {v12, v10, v4}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildArrayAccess(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ArrayAccessTree;

    move-result-object v12

    .line 3743
    .local v12, "arrayAccess":Lcom/sun/source/tree/ArrayAccessTree;
    invoke-virtual {v0, v12}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 3744
    move-object/from16 v38, v4

    .end local v4    # "indexUse2":Lcom/sun/source/tree/IdentifierTree;
    .local v38, "indexUse2":Lcom/sun/source/tree/IdentifierTree;
    new-instance v4, Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;

    invoke-direct {v4, v12, v2, v7}, Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;-><init>(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 3746
    .local v4, "arrayAccessNode":Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;
    move-object/from16 v39, v2

    const/4 v2, 0x0

    .end local v2    # "arrayNode2":Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    .local v39, "arrayNode2":Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    invoke-virtual {v4, v2}, Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;->setInSource(Z)V

    .line 3747
    invoke-virtual {v0, v4}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3748
    new-instance v2, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;

    invoke-direct {v2, v11}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;-><init>(Lcom/sun/source/tree/Tree;)V

    invoke-virtual {v0, v11, v2, v4}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->translateAssignment(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;

    .line 3749
    iget-object v2, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->elements:Ljavax/lang/model/util/Elements;

    move-object/from16 v40, v7

    .end local v7    # "indexNode2":Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    .local v40, "indexNode2":Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    const-string v7, "java.lang.NullPointerException"

    invoke-interface {v2, v7}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v2

    .line 3750
    .local v2, "npeElement":Ljavax/lang/model/element/Element;
    invoke-interface {v2}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNodeWithException(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;

    .line 3752
    if-eqz v14, :cond_4

    .line 3753
    invoke-virtual {v0, v14, v1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3757
    :cond_4
    invoke-virtual {v0, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addLabelForNextNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 3759
    iget-object v7, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    invoke-virtual {v7, v8}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildVariableUse(Lcom/sun/source/tree/VariableTree;)Lcom/sun/source/tree/IdentifierTree;

    move-result-object v7

    .line 3760
    .local v7, "indexUse3":Lcom/sun/source/tree/IdentifierTree;
    invoke-virtual {v0, v7}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 3761
    new-instance v1, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;

    invoke-direct {v1, v7}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;-><init>(Lcom/sun/source/tree/Tree;)V

    .line 3762
    .local v1, "indexNode3":Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    move-object/from16 v41, v2

    const/4 v2, 0x0

    .end local v2    # "npeElement":Ljavax/lang/model/element/Element;
    .local v41, "npeElement":Ljavax/lang/model/element/Element;
    invoke-virtual {v1, v2}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;->setInSource(Z)V

    .line 3763
    invoke-virtual {v0, v1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3765
    iget-object v2, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    const/16 v42, 0x1

    move-object/from16 v43, v4

    .end local v4    # "arrayAccessNode":Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;
    .local v43, "arrayAccessNode":Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;
    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildLiteral(Ljava/lang/Object;)Lcom/sun/source/tree/LiteralTree;

    move-result-object v2

    .line 3766
    .local v2, "oneTree":Lcom/sun/source/tree/LiteralTree;
    invoke-virtual {v0, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 3767
    new-instance v4, Lorg/checkerframework/dataflow/cfg/node/IntegerLiteralNode;

    invoke-direct {v4, v2}, Lorg/checkerframework/dataflow/cfg/node/IntegerLiteralNode;-><init>(Lcom/sun/source/tree/LiteralTree;)V

    .line 3768
    .local v4, "one":Lorg/checkerframework/dataflow/cfg/node/Node;
    move-object/from16 v42, v6

    const/4 v6, 0x0

    .end local v6    # "updateStart":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    .local v42, "updateStart":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    invoke-virtual {v4, v6}, Lorg/checkerframework/dataflow/cfg/node/Node;->setInSource(Z)V

    .line 3769
    invoke-virtual {v0, v4}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3771
    iget-object v6, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    move-object/from16 v44, v8

    .end local v8    # "indexVariable":Lcom/sun/source/tree/VariableTree;
    .local v44, "indexVariable":Lcom/sun/source/tree/VariableTree;
    sget-object v8, Lcom/sun/source/tree/Tree$Kind;->PLUS:Lcom/sun/source/tree/Tree$Kind;

    .line 3772
    invoke-virtual {v6, v9, v8, v7, v2}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildBinary(Ljavax/lang/model/type/TypeMirror;Lcom/sun/source/tree/Tree$Kind;Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/BinaryTree;

    move-result-object v6

    .line 3773
    .local v6, "addOneTree":Lcom/sun/source/tree/BinaryTree;
    invoke-virtual {v0, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 3774
    new-instance v8, Lorg/checkerframework/dataflow/cfg/node/NumericalAdditionNode;

    invoke-direct {v8, v6, v1, v4}, Lorg/checkerframework/dataflow/cfg/node/NumericalAdditionNode;-><init>(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 3775
    .local v8, "addOneNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    move-object/from16 v45, v2

    const/4 v2, 0x0

    .end local v2    # "oneTree":Lcom/sun/source/tree/LiteralTree;
    .local v45, "oneTree":Lcom/sun/source/tree/LiteralTree;
    invoke-virtual {v8, v2}, Lorg/checkerframework/dataflow/cfg/node/Node;->setInSource(Z)V

    .line 3776
    invoke-virtual {v0, v8}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3778
    iget-object v2, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    invoke-virtual {v2, v7, v6}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildAssignment(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/AssignmentTree;

    move-result-object v2

    .line 3779
    .local v2, "assignTree":Lcom/sun/source/tree/AssignmentTree;
    invoke-virtual {v0, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 3780
    move-object/from16 v46, v4

    .end local v4    # "one":Lorg/checkerframework/dataflow/cfg/node/Node;
    .local v46, "one":Lorg/checkerframework/dataflow/cfg/node/Node;
    new-instance v4, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;

    invoke-direct {v4, v2, v1, v8}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;-><init>(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 3781
    .local v4, "assignNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    move-object/from16 v47, v1

    const/4 v1, 0x0

    .end local v1    # "indexNode3":Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    .local v47, "indexNode3":Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    invoke-virtual {v4, v1}, Lorg/checkerframework/dataflow/cfg/node/Node;->setInSource(Z)V

    .line 3782
    invoke-virtual {v0, v4}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3784
    new-instance v1, Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;

    invoke-direct {v1, v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    invoke-virtual {v0, v1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithExtendedNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;)V

    move-object/from16 v15, v29

    .line 3788
    .end local v2    # "assignTree":Lcom/sun/source/tree/AssignmentTree;
    .end local v4    # "assignNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v6    # "addOneTree":Lcom/sun/source/tree/BinaryTree;
    .end local v7    # "indexUse3":Lcom/sun/source/tree/IdentifierTree;
    .end local v8    # "addOneNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v9    # "intType":Ljavax/lang/model/type/TypeMirror;
    .end local v10    # "arrayUse2":Lcom/sun/source/tree/IdentifierTree;
    .end local v12    # "arrayAccess":Lcom/sun/source/tree/ArrayAccessTree;
    .end local v13    # "lessThan":Lcom/sun/source/tree/BinaryTree;
    .end local v19    # "arrayVariableNode":Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;
    .end local v21    # "expressionNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v24    # "zero":Lcom/sun/source/tree/LiteralTree;
    .end local v25    # "indexVariableNode":Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;
    .end local v28    # "zeroNode":Lorg/checkerframework/dataflow/cfg/node/IntegerLiteralNode;
    .end local v29    # "exprType":Ljavax/lang/model/type/TypeMirror;
    .end local v30    # "arrayUse1":Lcom/sun/source/tree/IdentifierTree;
    .end local v31    # "arrayNode1":Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    .end local v32    # "indexUse1":Lcom/sun/source/tree/IdentifierTree;
    .end local v33    # "indexNode1":Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    .end local v34    # "arrayVariable":Lcom/sun/source/tree/VariableTree;
    .end local v36    # "lessThanNode":Lorg/checkerframework/dataflow/cfg/node/LessThanNode;
    .end local v37    # "lengthAccessNode":Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;
    .end local v38    # "indexUse2":Lcom/sun/source/tree/IdentifierTree;
    .end local v39    # "arrayNode2":Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    .end local v40    # "indexNode2":Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    .end local v41    # "npeElement":Ljavax/lang/model/element/Element;
    .end local v43    # "arrayAccessNode":Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;
    .end local v44    # "indexVariable":Lcom/sun/source/tree/VariableTree;
    .end local v45    # "oneTree":Lcom/sun/source/tree/LiteralTree;
    .end local v46    # "one":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v47    # "indexNode3":Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    .local v15, "exprType":Ljavax/lang/model/type/TypeMirror;
    :goto_1
    invoke-virtual {v0, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addLabelForNextNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 3790
    move-object/from16 v1, v26

    .end local v26    # "oldBreakTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    .local v1, "oldBreakTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    iput-object v1, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->breakTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    .line 3791
    move-object/from16 v2, v22

    .end local v22    # "oldContinueTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    .local v2, "oldContinueTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    iput-object v2, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->continueTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    .line 3793
    const/4 v4, 0x0

    return-object v4
.end method

.method public bridge synthetic visitErroneous(Lcom/sun/source/tree/ErroneousTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitErroneous(Lcom/sun/source/tree/ErroneousTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitErroneous(Lcom/sun/source/tree/ErroneousTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/ErroneousTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 3499
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "ErroneousTree is unexpected in AST to CFG translation"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic visitExpressionStatement(Lcom/sun/source/tree/ExpressionStatementTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitExpressionStatement(Lcom/sun/source/tree/ExpressionStatementTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitExpressionStatement(Lcom/sun/source/tree/ExpressionStatementTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/ExpressionStatementTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 3505
    invoke-interface {p1}, Lcom/sun/source/tree/ExpressionStatementTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/Node;

    return-object v0
.end method

.method public bridge synthetic visitForLoop(Lcom/sun/source/tree/ForLoopTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitForLoop(Lcom/sun/source/tree/ForLoopTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitForLoop(Lcom/sun/source/tree/ForLoopTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 9
    .param p1, "tree"    # Lcom/sun/source/tree/ForLoopTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 3826
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->getLabel(Lcom/sun/source/util/TreePath;)Ljavax/lang/model/element/Name;

    move-result-object v0

    .line 3828
    .local v0, "parentLabel":Ljavax/lang/model/element/Name;
    new-instance v1, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-direct {v1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;-><init>()V

    .line 3829
    .local v1, "conditionStart":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    new-instance v2, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-direct {v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;-><init>()V

    .line 3830
    .local v2, "loopEntry":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    new-instance v3, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-direct {v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;-><init>()V

    .line 3836
    .local v3, "loopExit":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    if-eqz v0, :cond_0

    .line 3837
    iget-object v4, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->continueLabels:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    .local v4, "updateStart":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    goto :goto_0

    .line 3839
    .end local v4    # "updateStart":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    :cond_0
    new-instance v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-direct {v4}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;-><init>()V

    .line 3842
    .restart local v4    # "updateStart":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    :goto_0
    iget-object v5, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->breakTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    .line 3843
    .local v5, "oldBreakTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    new-instance v6, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    invoke-direct {v6, v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    iput-object v6, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->breakTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    .line 3845
    iget-object v6, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->continueTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    .line 3846
    .local v6, "oldContinueTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    new-instance v7, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    invoke-direct {v7, v4}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    iput-object v7, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->continueTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    .line 3849
    invoke-interface {p1}, Lcom/sun/source/tree/ForLoopTree;->getInitializer()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/source/tree/StatementTree;

    .line 3850
    .local v8, "init":Lcom/sun/source/tree/StatementTree;
    invoke-virtual {p0, v8, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3851
    .end local v8    # "init":Lcom/sun/source/tree/StatementTree;
    goto :goto_1

    .line 3854
    :cond_1
    invoke-virtual {p0, v1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addLabelForNextNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 3855
    invoke-interface {p1}, Lcom/sun/source/tree/ForLoopTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 3856
    invoke-interface {p1}, Lcom/sun/source/tree/ForLoopTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v7

    invoke-virtual {p0, v7, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-virtual {p0, v7}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->unbox(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3857
    new-instance v7, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;

    invoke-direct {v7, v2, v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 3858
    .local v7, "cjump":Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;
    invoke-virtual {p0, v7}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithExtendedNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;)V

    .line 3862
    .end local v7    # "cjump":Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;
    :cond_2
    invoke-virtual {p0, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addLabelForNextNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 3863
    invoke-interface {p1}, Lcom/sun/source/tree/ForLoopTree;->getStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 3864
    invoke-interface {p1}, Lcom/sun/source/tree/ForLoopTree;->getStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v7

    invoke-virtual {p0, v7, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3868
    :cond_3
    invoke-virtual {p0, v4}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addLabelForNextNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 3869
    invoke-interface {p1}, Lcom/sun/source/tree/ForLoopTree;->getUpdate()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/source/tree/ExpressionStatementTree;

    .line 3870
    .local v8, "update":Lcom/sun/source/tree/ExpressionStatementTree;
    invoke-virtual {p0, v8, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3871
    .end local v8    # "update":Lcom/sun/source/tree/ExpressionStatementTree;
    goto :goto_2

    .line 3873
    :cond_4
    new-instance v7, Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;

    invoke-direct {v7, v1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    invoke-virtual {p0, v7}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithExtendedNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;)V

    .line 3876
    invoke-virtual {p0, v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addLabelForNextNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 3878
    iput-object v5, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->breakTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    .line 3879
    iput-object v6, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->continueTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    .line 3881
    const/4 v7, 0x0

    return-object v7
.end method

.method public bridge synthetic visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 4
    .param p1, "tree"    # Lcom/sun/source/tree/IdentifierTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 3887
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isFieldAccess(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3888
    invoke-direct {p0, p1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->getReceiver(Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    .line 3889
    .local v0, "receiver":Lorg/checkerframework/dataflow/cfg/node/Node;
    new-instance v1, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;

    invoke-direct {v1, p1, v0}, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;-><init>(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    move-object v0, v1

    .line 3890
    .local v0, "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    goto :goto_0

    .line 3891
    .end local v0    # "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_0
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 3892
    .local v0, "element":Ljavax/lang/model/element/Element;
    sget-object v1, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3911
    invoke-static {v0}, Lorg/checkerframework/javacutil/ElementUtils;->isTypeDeclaration(Ljavax/lang/model/element/Element;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3912
    new-instance v1, Lorg/checkerframework/dataflow/cfg/node/ClassNameNode;

    invoke-direct {v1, p1}, Lorg/checkerframework/dataflow/cfg/node/ClassNameNode;-><init>(Lcom/sun/source/tree/IdentifierTree;)V

    .line 3913
    .local v1, "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    move-object v0, v1

    goto :goto_0

    .line 3908
    .end local v1    # "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    :pswitch_0
    new-instance v1, Lorg/checkerframework/dataflow/cfg/node/PackageNameNode;

    invoke-direct {v1, p1}, Lorg/checkerframework/dataflow/cfg/node/PackageNameNode;-><init>(Lcom/sun/source/tree/IdentifierTree;)V

    .line 3909
    .restart local v1    # "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    move-object v0, v1

    goto :goto_0

    .line 3905
    .end local v1    # "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    :pswitch_1
    new-instance v1, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;

    invoke-direct {v1, p1}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;-><init>(Lcom/sun/source/tree/Tree;)V

    .line 3906
    .restart local v1    # "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    move-object v0, v1

    goto :goto_0

    .line 3895
    .end local v1    # "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    :pswitch_2
    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v1

    const-string v2, "this"

    invoke-interface {v1, v2}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3896
    new-instance v1, Lorg/checkerframework/dataflow/cfg/node/ExplicitThisLiteralNode;

    invoke-direct {v1, p1}, Lorg/checkerframework/dataflow/cfg/node/ExplicitThisLiteralNode;-><init>(Lcom/sun/source/tree/Tree;)V

    move-object v0, v1

    .restart local v1    # "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    goto :goto_0

    .line 3898
    .end local v1    # "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_1
    new-instance v1, Lorg/checkerframework/dataflow/cfg/node/SuperNode;

    invoke-direct {v1, p1}, Lorg/checkerframework/dataflow/cfg/node/SuperNode;-><init>(Lcom/sun/source/tree/Tree;)V

    .line 3900
    .restart local v1    # "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    move-object v0, v1

    .line 3918
    .end local v1    # "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    .local v0, "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    :goto_0
    invoke-virtual {p0, v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3919
    return-object v0

    .line 3915
    .local v0, "element":Ljavax/lang/model/element/Element;
    :cond_2
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad element kind "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic visitIf(Lcom/sun/source/tree/IfTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitIf(Lcom/sun/source/tree/IfTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitIf(Lcom/sun/source/tree/IfTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 7
    .param p1, "tree"    # Lcom/sun/source/tree/IfTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 3925
    new-instance v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-direct {v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;-><init>()V

    .line 3926
    .local v0, "thenEntry":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    new-instance v1, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-direct {v1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;-><init>()V

    .line 3927
    .local v1, "elseEntry":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    new-instance v2, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-direct {v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;-><init>()V

    .line 3930
    .local v2, "endIf":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    invoke-interface {p1}, Lcom/sun/source/tree/IfTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-virtual {p0, v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->unbox(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3932
    new-instance v3, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;

    invoke-direct {v3, v0, v1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 3933
    .local v3, "cjump":Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;
    invoke-virtual {p0, v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithExtendedNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;)V

    .line 3936
    invoke-virtual {p0, v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addLabelForNextNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 3937
    invoke-interface {p1}, Lcom/sun/source/tree/IfTree;->getThenStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v4

    .line 3938
    .local v4, "thenStatement":Lcom/sun/source/tree/StatementTree;
    invoke-virtual {p0, v4, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3939
    new-instance v5, Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;

    invoke-direct {v5, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    invoke-virtual {p0, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithExtendedNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;)V

    .line 3942
    invoke-virtual {p0, v1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addLabelForNextNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 3943
    invoke-interface {p1}, Lcom/sun/source/tree/IfTree;->getElseStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v5

    .line 3944
    .local v5, "elseStatement":Lcom/sun/source/tree/StatementTree;
    if-eqz v5, :cond_0

    .line 3945
    invoke-virtual {p0, v5, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3949
    :cond_0
    invoke-virtual {p0, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addLabelForNextNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 3951
    const/4 v6, 0x0

    return-object v6
.end method

.method public bridge synthetic visitImport(Lcom/sun/source/tree/ImportTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitImport(Lcom/sun/source/tree/ImportTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitImport(Lcom/sun/source/tree/ImportTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/ImportTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 3956
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "ImportTree is unexpected in AST to CFG translation"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic visitInstanceOf(Lcom/sun/source/tree/InstanceOfTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitInstanceOf(Lcom/sun/source/tree/InstanceOfTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitInstanceOf(Lcom/sun/source/tree/InstanceOfTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 4
    .param p1, "tree"    # Lcom/sun/source/tree/InstanceOfTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 4558
    invoke-interface {p1}, Lcom/sun/source/tree/InstanceOfTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 4559
    .local v0, "operand":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-interface {p1}, Lcom/sun/source/tree/InstanceOfTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 4560
    .local v1, "refType":Ljavax/lang/model/type/TypeMirror;
    new-instance v2, Lorg/checkerframework/dataflow/cfg/node/InstanceOfNode;

    iget-object v3, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->types:Ljavax/lang/model/util/Types;

    invoke-direct {v2, p1, v0, v1, v3}, Lorg/checkerframework/dataflow/cfg/node/InstanceOfNode;-><init>(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/util/Types;)V

    .line 4561
    .local v2, "node":Lorg/checkerframework/dataflow/cfg/node/InstanceOfNode;
    invoke-virtual {p0, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 4562
    return-object v2
.end method

.method public bridge synthetic visitLabeledStatement(Lcom/sun/source/tree/LabeledStatementTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitLabeledStatement(Lcom/sun/source/tree/LabeledStatementTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitLabeledStatement(Lcom/sun/source/tree/LabeledStatementTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 5
    .param p1, "tree"    # Lcom/sun/source/tree/LabeledStatementTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 3979
    invoke-interface {p1}, Lcom/sun/source/tree/LabeledStatementTree;->getLabel()Ljavax/lang/model/element/Name;

    move-result-object v0

    .line 3981
    .local v0, "labelName":Ljavax/lang/model/element/Name;
    new-instance v1, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_break"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;-><init>(Ljava/lang/String;)V

    .line 3982
    .local v1, "breakL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    new-instance v2, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_continue"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;-><init>(Ljava/lang/String;)V

    .line 3984
    .local v2, "continueL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    iget-object v3, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->breakLabels:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3985
    iget-object v3, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->continueLabels:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3987
    invoke-interface {p1}, Lcom/sun/source/tree/LabeledStatementTree;->getStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3989
    invoke-virtual {p0, v1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addLabelForNextNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 3991
    iget-object v3, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->breakLabels:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3992
    iget-object v3, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->continueLabels:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3994
    const/4 v3, 0x0

    return-object v3
.end method

.method public bridge synthetic visitLambdaExpression(Lcom/sun/source/tree/LambdaExpressionTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitLambdaExpression(Lcom/sun/source/tree/LambdaExpressionTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitLambdaExpression(Lcom/sun/source/tree/LambdaExpressionTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/LambdaExpressionTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 4819
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->declaredLambdas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4820
    new-instance v0, Lorg/checkerframework/dataflow/cfg/node/FunctionalInterfaceNode;

    invoke-direct {v0, p1}, Lorg/checkerframework/dataflow/cfg/node/FunctionalInterfaceNode;-><init>(Lcom/sun/source/tree/LambdaExpressionTree;)V

    .line 4821
    .local v0, "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p0, v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 4822
    return-object v0
.end method

.method public bridge synthetic visitLiteral(Lcom/sun/source/tree/LiteralTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitLiteral(Lcom/sun/source/tree/LiteralTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitLiteral(Lcom/sun/source/tree/LiteralTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 3
    .param p1, "tree"    # Lcom/sun/source/tree/LiteralTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 3999
    const/4 v0, 0x0

    .line 4000
    .local v0, "r":Lorg/checkerframework/dataflow/cfg/node/Node;
    sget-object v1, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {p1}, Lcom/sun/source/tree/LiteralTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 4026
    goto :goto_1

    .line 4023
    :pswitch_0
    new-instance v1, Lorg/checkerframework/dataflow/cfg/node/StringLiteralNode;

    invoke-direct {v1, p1}, Lorg/checkerframework/dataflow/cfg/node/StringLiteralNode;-><init>(Lcom/sun/source/tree/LiteralTree;)V

    move-object v0, v1

    .line 4024
    goto :goto_0

    .line 4020
    :pswitch_1
    new-instance v1, Lorg/checkerframework/dataflow/cfg/node/NullLiteralNode;

    invoke-direct {v1, p1}, Lorg/checkerframework/dataflow/cfg/node/NullLiteralNode;-><init>(Lcom/sun/source/tree/LiteralTree;)V

    move-object v0, v1

    .line 4021
    goto :goto_0

    .line 4017
    :pswitch_2
    new-instance v1, Lorg/checkerframework/dataflow/cfg/node/LongLiteralNode;

    invoke-direct {v1, p1}, Lorg/checkerframework/dataflow/cfg/node/LongLiteralNode;-><init>(Lcom/sun/source/tree/LiteralTree;)V

    move-object v0, v1

    .line 4018
    goto :goto_0

    .line 4014
    :pswitch_3
    new-instance v1, Lorg/checkerframework/dataflow/cfg/node/IntegerLiteralNode;

    invoke-direct {v1, p1}, Lorg/checkerframework/dataflow/cfg/node/IntegerLiteralNode;-><init>(Lcom/sun/source/tree/LiteralTree;)V

    move-object v0, v1

    .line 4015
    goto :goto_0

    .line 4011
    :pswitch_4
    new-instance v1, Lorg/checkerframework/dataflow/cfg/node/FloatLiteralNode;

    invoke-direct {v1, p1}, Lorg/checkerframework/dataflow/cfg/node/FloatLiteralNode;-><init>(Lcom/sun/source/tree/LiteralTree;)V

    move-object v0, v1

    .line 4012
    goto :goto_0

    .line 4008
    :pswitch_5
    new-instance v1, Lorg/checkerframework/dataflow/cfg/node/DoubleLiteralNode;

    invoke-direct {v1, p1}, Lorg/checkerframework/dataflow/cfg/node/DoubleLiteralNode;-><init>(Lcom/sun/source/tree/LiteralTree;)V

    move-object v0, v1

    .line 4009
    goto :goto_0

    .line 4005
    :pswitch_6
    new-instance v1, Lorg/checkerframework/dataflow/cfg/node/CharacterLiteralNode;

    invoke-direct {v1, p1}, Lorg/checkerframework/dataflow/cfg/node/CharacterLiteralNode;-><init>(Lcom/sun/source/tree/LiteralTree;)V

    move-object v0, v1

    .line 4006
    goto :goto_0

    .line 4002
    :pswitch_7
    new-instance v1, Lorg/checkerframework/dataflow/cfg/node/BooleanLiteralNode;

    invoke-direct {v1, p1}, Lorg/checkerframework/dataflow/cfg/node/BooleanLiteralNode;-><init>(Lcom/sun/source/tree/LiteralTree;)V

    move-object v0, v1

    .line 4003
    nop

    .line 4029
    :goto_0
    nop

    .line 4030
    invoke-virtual {p0, v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    .line 4031
    .local v1, "result":Lorg/checkerframework/dataflow/cfg/node/Node;
    return-object v1

    .line 4026
    .end local v1    # "result":Lorg/checkerframework/dataflow/cfg/node/Node;
    :goto_1
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "unexpected literal tree"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic visitMemberReference(Lcom/sun/source/tree/MemberReferenceTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitMemberReference(Lcom/sun/source/tree/MemberReferenceTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitMemberReference(Lcom/sun/source/tree/MemberReferenceTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/MemberReferenceTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 4827
    invoke-interface {p1}, Lcom/sun/source/tree/MemberReferenceTree;->getQualifierExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 4828
    .local v0, "enclosingExpr":Lcom/sun/source/tree/Tree;
    if-eqz v0, :cond_0

    .line 4829
    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4832
    :cond_0
    new-instance v1, Lorg/checkerframework/dataflow/cfg/node/FunctionalInterfaceNode;

    invoke-direct {v1, p1}, Lorg/checkerframework/dataflow/cfg/node/FunctionalInterfaceNode;-><init>(Lcom/sun/source/tree/MemberReferenceTree;)V

    .line 4833
    .local v1, "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p0, v1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 4835
    return-object v1
.end method

.method public bridge synthetic visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 5
    .param p1, "tree"    # Lcom/sun/source/tree/MemberSelectTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 4171
    invoke-interface {p1}, Lcom/sun/source/tree/MemberSelectTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 4172
    .local v0, "expr":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isFieldAccess(Lcom/sun/source/tree/Tree;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4174
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v1

    .line 4175
    .local v1, "element":Ljavax/lang/model/element/Element;
    invoke-static {v1}, Lorg/checkerframework/javacutil/ElementUtils;->isClassElement(Ljavax/lang/model/element/Element;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4176
    new-instance v2, Lorg/checkerframework/dataflow/cfg/node/ClassNameNode;

    invoke-direct {v2, p1, v0}, Lorg/checkerframework/dataflow/cfg/node/ClassNameNode;-><init>(Lcom/sun/source/tree/MemberSelectTree;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    invoke-virtual {p0, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    return-object v2

    .line 4177
    :cond_0
    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/element/ElementKind;->PACKAGE:Ljavax/lang/model/element/ElementKind;

    if-ne v2, v3, :cond_1

    .line 4178
    new-instance v2, Lorg/checkerframework/dataflow/cfg/node/PackageNameNode;

    move-object v3, v0

    check-cast v3, Lorg/checkerframework/dataflow/cfg/node/PackageNameNode;

    invoke-direct {v2, p1, v3}, Lorg/checkerframework/dataflow/cfg/node/PackageNameNode;-><init>(Lcom/sun/source/tree/MemberSelectTree;Lorg/checkerframework/dataflow/cfg/node/PackageNameNode;)V

    invoke-virtual {p0, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    return-object v2

    .line 4180
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected element kind: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 4185
    .end local v1    # "element":Ljavax/lang/model/element/Element;
    :cond_2
    new-instance v1, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;

    invoke-direct {v1, p1, v0}, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;-><init>(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 4187
    .local v1, "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v2

    .line 4188
    .local v2, "element":Ljavax/lang/model/element/Element;
    invoke-static {v2}, Lorg/checkerframework/javacutil/ElementUtils;->isStatic(Ljavax/lang/model/element/Element;)Z

    move-result v3

    if-nez v3, :cond_4

    instance-of v3, v0, Lorg/checkerframework/dataflow/cfg/node/ImplicitThisLiteralNode;

    if-nez v3, :cond_4

    instance-of v3, v0, Lorg/checkerframework/dataflow/cfg/node/ExplicitThisLiteralNode;

    if-eqz v3, :cond_3

    goto :goto_0

    .line 4194
    :cond_3
    iget-object v3, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->elements:Ljavax/lang/model/util/Elements;

    const-string v4, "java.lang.NullPointerException"

    invoke-interface {v3, v4}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v3

    .line 4195
    .local v3, "npeElement":Ljavax/lang/model/element/TypeElement;
    invoke-interface {v3}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNodeWithException(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;

    goto :goto_1

    .line 4192
    .end local v3    # "npeElement":Ljavax/lang/model/element/TypeElement;
    :cond_4
    :goto_0
    invoke-virtual {p0, v1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 4198
    :goto_1
    return-object v1
.end method

.method public bridge synthetic visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/MethodTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 4036
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "MethodTree is unexpected in AST to CFG translation"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    .locals 16
    .param p1, "tree"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 2456
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v1

    .line 2457
    .local v1, "method":Ljavax/lang/model/element/ExecutableElement;
    if-nez v1, :cond_0

    .line 2459
    const/4 v2, 0x0

    return-object v2

    .line 2465
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/MethodInvocationTree;->getMethodSelect()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    .line 2466
    .local v2, "methodSelect":Lcom/sun/source/tree/ExpressionTree;
    invoke-static {v2}, Lorg/checkerframework/javacutil/TreeUtils;->isMethodAccess(Lcom/sun/source/tree/Tree;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2469
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v3

    .line 2472
    .local v3, "actualExprs":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    invoke-direct {v0, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->getReceiver(Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v4

    .line 2474
    .local v4, "receiver":Lorg/checkerframework/dataflow/cfg/node/Node;
    new-instance v5, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;

    invoke-direct {v5, v2, v4}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;-><init>(Lcom/sun/source/tree/ExpressionTree;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 2476
    .local v5, "target":Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;
    invoke-static/range {p1 .. p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v6

    .line 2477
    .local v6, "element":Ljavax/lang/model/element/ExecutableElement;
    invoke-static {v6}, Lorg/checkerframework/javacutil/ElementUtils;->isStatic(Ljavax/lang/model/element/Element;)Z

    move-result v7

    if-nez v7, :cond_2

    instance-of v7, v4, Lorg/checkerframework/dataflow/cfg/node/ThisLiteralNode;

    if-eqz v7, :cond_1

    goto :goto_0

    .line 2481
    :cond_1
    iget-object v7, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->elements:Ljavax/lang/model/util/Elements;

    const-string v8, "java.lang.NullPointerException"

    invoke-interface {v7, v8}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v7

    .line 2482
    .local v7, "npeElement":Ljavax/lang/model/element/TypeElement;
    invoke-interface {v7}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNodeWithException(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;

    goto :goto_1

    .line 2479
    .end local v7    # "npeElement":Ljavax/lang/model/element/TypeElement;
    :cond_2
    :goto_0
    invoke-virtual {v0, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 2485
    :goto_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2494
    .local v7, "arguments":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    invoke-static/range {p1 .. p1}, Lorg/checkerframework/javacutil/TreeUtils;->isEnumSuper(Lcom/sun/source/tree/MethodInvocationTree;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 2495
    invoke-virtual {v0, v1, v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->convertCallArguments(Ljavax/lang/model/element/ExecutableElement;Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 2500
    :cond_3
    new-instance v8, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;

    .line 2501
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v9

    move-object/from16 v10, p1

    invoke-direct {v8, v10, v5, v7, v9}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;-><init>(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;Ljava/util/List;Lcom/sun/source/util/TreePath;)V

    .line 2503
    .local v8, "node":Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 2505
    .local v9, "thrownSet":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/type/TypeMirror;>;"
    invoke-interface {v6}, Ljavax/lang/model/element/ExecutableElement;->getThrownTypes()Ljava/util/List;

    move-result-object v11

    .line 2506
    .local v11, "thrownTypes":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/type/TypeMirror;>;"
    invoke-interface {v9, v11}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2508
    iget-object v12, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->elements:Ljavax/lang/model/util/Elements;

    const-string v13, "java.lang.Throwable"

    invoke-interface {v12, v13}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v12

    .line 2509
    .local v12, "throwableElement":Ljavax/lang/model/element/TypeElement;
    invoke-interface {v12}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2511
    invoke-virtual {v0, v8, v9}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNodeWithExceptions(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/util/Set;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;

    move-result-object v13

    .line 2514
    .local v13, "extendedNode":Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;
    invoke-static/range {p1 .. p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v14

    .line 2515
    .local v14, "methodElement":Ljavax/lang/model/element/Element;
    iget-object v15, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->annotationProvider:Lorg/checkerframework/javacutil/AnnotationProvider;

    const-class v0, Lorg/checkerframework/dataflow/qual/TerminatesExecution;

    .line 2516
    invoke-interface {v15, v14, v0}, Lorg/checkerframework/javacutil/AnnotationProvider;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    const/4 v15, 0x1

    if-eqz v0, :cond_4

    move v0, v15

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 2518
    .local v0, "terminatesExecution":Z
    :goto_2
    if-eqz v0, :cond_5

    .line 2519
    invoke-virtual {v13, v15}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;->setTerminatesExecution(Z)V

    .line 2522
    :cond_5
    return-object v8

    .line 2466
    .end local v0    # "terminatesExecution":Z
    .end local v3    # "actualExprs":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    .end local v4    # "receiver":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v5    # "target":Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;
    .end local v6    # "element":Ljavax/lang/model/element/ExecutableElement;
    .end local v7    # "arguments":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    .end local v8    # "node":Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    .end local v9    # "thrownSet":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/type/TypeMirror;>;"
    .end local v11    # "thrownTypes":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/type/TypeMirror;>;"
    .end local v12    # "throwableElement":Ljavax/lang/model/element/TypeElement;
    .end local v13    # "extendedNode":Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;
    .end local v14    # "methodElement":Ljavax/lang/model/element/Element;
    :cond_6
    move-object/from16 v10, p1

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected a method access, but got: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic visitModifiers(Lcom/sun/source/tree/ModifiersTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitModifiers(Lcom/sun/source/tree/ModifiersTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitModifiers(Lcom/sun/source/tree/ModifiersTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/ModifiersTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 4042
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "ModifiersTree is unexpected in AST to CFG translation"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 9
    .param p1, "tree"    # Lcom/sun/source/tree/NewArrayTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 4050
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/type/ArrayType;

    .line 4051
    .local v0, "type":Ljavax/lang/model/type/ArrayType;
    invoke-interface {v0}, Ljavax/lang/model/type/ArrayType;->getComponentType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 4053
    .local v1, "elemType":Ljavax/lang/model/type/TypeMirror;
    invoke-interface {p1}, Lcom/sun/source/tree/NewArrayTree;->getDimensions()Ljava/util/List;

    move-result-object v2

    .line 4054
    .local v2, "dimensions":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    invoke-interface {p1}, Lcom/sun/source/tree/NewArrayTree;->getInitializers()Ljava/util/List;

    move-result-object v3

    .line 4056
    .local v3, "initializers":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4057
    .local v4, "dimensionNodes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    if-eqz v2, :cond_0

    .line 4058
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/source/tree/ExpressionTree;

    .line 4059
    .local v6, "dim":Lcom/sun/source/tree/ExpressionTree;
    invoke-virtual {p0, v6, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-virtual {p0, v7}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->unaryNumericPromotion(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4060
    .end local v6    # "dim":Lcom/sun/source/tree/ExpressionTree;
    goto :goto_0

    .line 4063
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4064
    .local v5, "initializerNodes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    if-eqz v3, :cond_1

    .line 4065
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/source/tree/ExpressionTree;

    .line 4066
    .local v7, "init":Lcom/sun/source/tree/ExpressionTree;
    invoke-virtual {p0, v7, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-virtual {p0, v8, v1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->assignConvert(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4067
    .end local v7    # "init":Lcom/sun/source/tree/ExpressionTree;
    goto :goto_1

    .line 4070
    :cond_1
    new-instance v6, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;

    invoke-direct {v6, p1, v0, v4, v5}, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;-><init>(Lcom/sun/source/tree/NewArrayTree;Ljavax/lang/model/type/TypeMirror;Ljava/util/List;Ljava/util/List;)V

    .line 4071
    .local v6, "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p0, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v7

    return-object v7
.end method

.method public bridge synthetic visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 11
    .param p1, "tree"    # Lcom/sun/source/tree/NewClassTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 4078
    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getEnclosingExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 4079
    .local v0, "enclosingExpr":Lcom/sun/source/tree/Tree;
    if-eqz v0, :cond_0

    .line 4080
    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4084
    :cond_0
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/NewClassTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v1

    .line 4086
    .local v1, "constructor":Ljavax/lang/model/element/ExecutableElement;
    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getArguments()Ljava/util/List;

    move-result-object v2

    .line 4088
    .local v2, "actualExprs":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    invoke-virtual {p0, v1, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->convertCallArguments(Ljavax/lang/model/element/ExecutableElement;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 4092
    .local v3, "arguments":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getIdentifier()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v4

    invoke-virtual {p0, v4, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 4096
    .local v4, "constructorNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getClassBody()Lcom/sun/source/tree/ClassTree;

    move-result-object v5

    invoke-virtual {p0, v5, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/dataflow/cfg/node/ClassDeclarationNode;

    .line 4098
    .local v5, "classbody":Lorg/checkerframework/dataflow/cfg/node/ClassDeclarationNode;
    new-instance v6, Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;

    invoke-direct {v6, p1, v4, v3, v5}, Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;-><init>(Lcom/sun/source/tree/NewClassTree;Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/util/List;Lorg/checkerframework/dataflow/cfg/node/ClassDeclarationNode;)V

    .line 4100
    .local v6, "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 4102
    .local v7, "thrownSet":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/type/TypeMirror;>;"
    invoke-interface {v1}, Ljavax/lang/model/element/ExecutableElement;->getThrownTypes()Ljava/util/List;

    move-result-object v8

    .line 4103
    .local v8, "thrownTypes":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/type/TypeMirror;>;"
    invoke-interface {v7, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4105
    iget-object v9, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->elements:Ljavax/lang/model/util/Elements;

    const-string v10, "java.lang.Throwable"

    invoke-interface {v9, v10}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v9

    .line 4106
    .local v9, "throwableElement":Ljavax/lang/model/element/TypeElement;
    invoke-interface {v9}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4108
    invoke-virtual {p0, v6, v7}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNodeWithExceptions(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/util/Set;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;

    .line 4110
    return-object v6
.end method

.method public bridge synthetic visitOther(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitOther(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitOther(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 4845
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "Unknown AST element encountered in AST to CFG translation."

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic visitParameterizedType(Lcom/sun/source/tree/ParameterizedTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitParameterizedType(Lcom/sun/source/tree/ParameterizedTypeTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitParameterizedType(Lcom/sun/source/tree/ParameterizedTypeTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/ParameterizedTypeTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 4520
    new-instance v0, Lorg/checkerframework/dataflow/cfg/node/ParameterizedTypeNode;

    invoke-direct {v0, p1}, Lorg/checkerframework/dataflow/cfg/node/ParameterizedTypeNode;-><init>(Lcom/sun/source/tree/Tree;)V

    invoke-virtual {p0, v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitParenthesized(Lcom/sun/source/tree/ParenthesizedTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitParenthesized(Lcom/sun/source/tree/ParenthesizedTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitParenthesized(Lcom/sun/source/tree/ParenthesizedTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/ParenthesizedTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 4125
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->parenMapping:Ljava/util/Map;

    invoke-interface {p1}, Lcom/sun/source/tree/ParenthesizedTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4126
    invoke-interface {p1}, Lcom/sun/source/tree/ParenthesizedTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/Node;

    return-object v0
.end method

.method public bridge synthetic visitPrimitiveType(Lcom/sun/source/tree/PrimitiveTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitPrimitiveType(Lcom/sun/source/tree/PrimitiveTypeTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitiveType(Lcom/sun/source/tree/PrimitiveTypeTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/PrimitiveTypeTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 4547
    new-instance v0, Lorg/checkerframework/dataflow/cfg/node/PrimitiveTypeNode;

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->types:Ljavax/lang/model/util/Types;

    invoke-direct {v0, p1, v1}, Lorg/checkerframework/dataflow/cfg/node/PrimitiveTypeNode;-><init>(Lcom/sun/source/tree/PrimitiveTypeTree;Ljavax/lang/model/util/Types;)V

    invoke-virtual {p0, v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitReturn(Lcom/sun/source/tree/ReturnTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitReturn(Lcom/sun/source/tree/ReturnTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitReturn(Lcom/sun/source/tree/ReturnTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 17
    .param p1, "tree"    # Lcom/sun/source/tree/ReturnTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 4131
    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/ReturnTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    .line 4133
    .local v1, "ret":Lcom/sun/source/tree/ExpressionTree;
    const/4 v2, 0x0

    .line 4134
    .local v2, "result":Lorg/checkerframework/dataflow/cfg/node/ReturnNode;
    if-eqz v1, :cond_1

    .line 4135
    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 4136
    .local v4, "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    nop

    .line 4138
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v5

    new-instance v6, Ljava/util/HashSet;

    const/4 v7, 0x2

    new-array v7, v7, [Lcom/sun/source/tree/Tree$Kind;

    const/4 v8, 0x0

    sget-object v9, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Lcom/sun/source/tree/Tree$Kind;->LAMBDA_EXPRESSION:Lcom/sun/source/tree/Tree$Kind;

    aput-object v9, v7, v8

    .line 4139
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4137
    invoke-static {v5, v6}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingOfKind(Lcom/sun/source/util/TreePath;Ljava/util/Set;)Lcom/sun/source/tree/Tree;

    move-result-object v11

    .line 4140
    .local v11, "enclosing":Lcom/sun/source/tree/Tree;
    invoke-interface {v11}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v5

    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->LAMBDA_EXPRESSION:Lcom/sun/source/tree/Tree$Kind;

    if-ne v5, v6, :cond_0

    .line 4141
    move-object v12, v11

    check-cast v12, Lcom/sun/source/tree/LambdaExpressionTree;

    .line 4142
    .local v12, "lambdaTree":Lcom/sun/source/tree/LambdaExpressionTree;
    nop

    .line 4143
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/source/util/TreePath;->getCompilationUnit()Lcom/sun/source/tree/CompilationUnitTree;

    move-result-object v5

    invoke-static {v5, v12}, Lcom/sun/source/util/TreePath;->getPath(Lcom/sun/source/tree/CompilationUnitTree;Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v13

    .line 4144
    .local v13, "lambdaTreePath":Lcom/sun/source/util/TreePath;
    iget-object v5, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    check-cast v5, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    invoke-virtual {v5}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->getContext()Lcom/sun/tools/javac/util/Context;

    move-result-object v14

    .line 4145
    .local v14, "ctx":Lcom/sun/tools/javac/util/Context;
    nop

    .line 4146
    invoke-static {v14}, Lcom/sun/tools/javac/code/Types;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Types;

    move-result-object v5

    iget-object v6, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->trees:Lcom/sun/source/util/Trees;

    .line 4148
    invoke-virtual {v6, v13}, Lcom/sun/source/util/Trees;->getTypeMirror(Lcom/sun/source/util/TreePath;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v6

    check-cast v6, Lcom/sun/tools/javac/code/Type;

    iget-object v6, v6, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 4147
    invoke-virtual {v5, v6}, Lcom/sun/tools/javac/code/Types;->findDescriptorSymbol(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v15

    .line 4150
    .local v15, "overriddenElement":Ljavax/lang/model/element/Element;
    new-instance v16, Lorg/checkerframework/dataflow/cfg/node/ReturnNode;

    iget-object v5, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 4154
    invoke-interface {v5}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v8

    move-object v10, v15

    check-cast v10, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-object/from16 v5, v16

    move-object/from16 v6, p1

    move-object v7, v4

    move-object v9, v12

    invoke-direct/range {v5 .. v10}, Lorg/checkerframework/dataflow/cfg/node/ReturnNode;-><init>(Lcom/sun/source/tree/ReturnTree;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/util/Types;Lcom/sun/source/tree/LambdaExpressionTree;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)V

    move-object/from16 v2, v16

    .line 4157
    .end local v12    # "lambdaTree":Lcom/sun/source/tree/LambdaExpressionTree;
    .end local v13    # "lambdaTreePath":Lcom/sun/source/util/TreePath;
    .end local v14    # "ctx":Lcom/sun/tools/javac/util/Context;
    .end local v15    # "overriddenElement":Ljavax/lang/model/element/Element;
    move-object/from16 v8, p1

    goto :goto_0

    .line 4158
    :cond_0
    new-instance v5, Lorg/checkerframework/dataflow/cfg/node/ReturnNode;

    iget-object v6, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v6}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v6

    move-object v7, v11

    check-cast v7, Lcom/sun/source/tree/MethodTree;

    move-object/from16 v8, p1

    invoke-direct {v5, v8, v4, v6, v7}, Lorg/checkerframework/dataflow/cfg/node/ReturnNode;-><init>(Lcom/sun/source/tree/ReturnTree;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/util/Types;Lcom/sun/source/tree/MethodTree;)V

    move-object v2, v5

    .line 4160
    :goto_0
    iget-object v5, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->returnNodes:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4161
    invoke-virtual {v0, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    goto :goto_1

    .line 4134
    .end local v4    # "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v11    # "enclosing":Lcom/sun/source/tree/Tree;
    :cond_1
    move-object/from16 v8, p1

    move-object/from16 v3, p2

    .line 4164
    :goto_1
    new-instance v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;

    iget-object v5, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->returnTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    invoke-virtual {v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;->accessLabel()Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    invoke-virtual {v0, v4}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithExtendedNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;)V

    .line 4166
    return-object v2
.end method

.method public bridge synthetic visitSwitch(Lcom/sun/source/tree/SwitchTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitSwitch(Lcom/sun/source/tree/SwitchTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitSwitch(Lcom/sun/source/tree/SwitchTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/SwitchTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 3288
    new-instance v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;Lcom/sun/source/tree/SwitchTree;Ljava/lang/Void;Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;)V

    .line 3289
    .local v0, "builder":Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->build()V

    .line 3290
    return-object v1
.end method

.method public bridge synthetic visitSynchronized(Lcom/sun/source/tree/SynchronizedTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitSynchronized(Lcom/sun/source/tree/SynchronizedTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitSynchronized(Lcom/sun/source/tree/SynchronizedTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 5
    .param p1, "tree"    # Lcom/sun/source/tree/SynchronizedTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 4210
    invoke-interface {p1}, Lcom/sun/source/tree/SynchronizedTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 4211
    .local v0, "synchronizedExpr":Lorg/checkerframework/dataflow/cfg/node/Node;
    new-instance v1, Lorg/checkerframework/dataflow/cfg/node/SynchronizedNode;

    iget-object v2, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 4212
    invoke-interface {v2}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, p1, v0, v3, v2}, Lorg/checkerframework/dataflow/cfg/node/SynchronizedNode;-><init>(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;ZLjavax/lang/model/util/Types;)V

    .line 4213
    .local v1, "synchronizedStartNode":Lorg/checkerframework/dataflow/cfg/node/SynchronizedNode;
    invoke-virtual {p0, v1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 4214
    invoke-interface {p1}, Lcom/sun/source/tree/SynchronizedTree;->getBlock()Lcom/sun/source/tree/BlockTree;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4215
    new-instance v2, Lorg/checkerframework/dataflow/cfg/node/SynchronizedNode;

    iget-object v3, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 4216
    invoke-interface {v3}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, p1, v0, v4, v3}, Lorg/checkerframework/dataflow/cfg/node/SynchronizedNode;-><init>(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;ZLjavax/lang/model/util/Types;)V

    .line 4217
    .local v2, "synchronizedEndNode":Lorg/checkerframework/dataflow/cfg/node/SynchronizedNode;
    invoke-virtual {p0, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 4219
    const/4 v3, 0x0

    return-object v3
.end method

.method public bridge synthetic visitThrow(Lcom/sun/source/tree/ThrowTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitThrow(Lcom/sun/source/tree/ThrowTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitThrow(Lcom/sun/source/tree/ThrowTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 5
    .param p1, "tree"    # Lcom/sun/source/tree/ThrowTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 4224
    invoke-interface {p1}, Lcom/sun/source/tree/ThrowTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 4225
    .local v0, "expression":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 4226
    .local v1, "exception":Ljavax/lang/model/type/TypeMirror;
    new-instance v2, Lorg/checkerframework/dataflow/cfg/node/ThrowNode;

    iget-object v3, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v3}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v3

    invoke-direct {v2, p1, v0, v3}, Lorg/checkerframework/dataflow/cfg/node/ThrowNode;-><init>(Lcom/sun/source/tree/ThrowTree;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/util/Types;)V

    .line 4227
    .local v2, "throwsNode":Lorg/checkerframework/dataflow/cfg/node/ThrowNode;
    invoke-virtual {p0, v2, v1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNodeWithException(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;

    move-result-object v3

    .line 4228
    .local v3, "exNode":Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;->setTerminatesExecution(Z)V

    .line 4229
    return-object v2
.end method

.method public bridge synthetic visitTry(Lcom/sun/source/tree/TryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitTry(Lcom/sun/source/tree/TryTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitTry(Lcom/sun/source/tree/TryTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 24
    .param p1, "tree"    # Lcom/sun/source/tree/TryTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 4240
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/TryTree;->getCatches()Ljava/util/List;

    move-result-object v3

    .line 4241
    .local v3, "catches":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/CatchTree;>;"
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/TryTree;->getFinallyBlock()Lcom/sun/source/tree/BlockTree;

    move-result-object v4

    .line 4243
    .local v4, "finallyBlock":Lcom/sun/source/tree/BlockTree;
    new-instance v5, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;

    iget-object v6, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v6}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v6

    const-string v7, "start of try statement"

    invoke-direct {v5, v1, v7, v6}, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;-><init>(Lcom/sun/source/tree/Tree;Ljava/lang/String;Ljavax/lang/model/util/Types;)V

    invoke-virtual {v0, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 4247
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/TryTree;->getResources()Ljava/util/List;

    move-result-object v5

    .line 4248
    .local v5, "resources":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/source/tree/Tree;

    .line 4249
    .local v7, "resource":Lcom/sun/source/tree/Tree;
    invoke-virtual {v0, v7, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4250
    .end local v7    # "resource":Lcom/sun/source/tree/Tree;
    goto :goto_0

    .line 4252
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4253
    .local v6, "catchLabels":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/source/tree/CatchTree;

    .line 4254
    .local v8, "c":Lcom/sun/source/tree/CatchTree;
    invoke-interface {v8}, Lcom/sun/source/tree/CatchTree;->getParameter()Lcom/sun/source/tree/VariableTree;

    move-result-object v9

    invoke-interface {v9}, Lcom/sun/source/tree/VariableTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v9

    invoke-static {v9}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v9

    .line 4255
    .local v9, "type":Ljavax/lang/model/type/TypeMirror;
    if-eqz v9, :cond_1

    .line 4256
    new-instance v10, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-direct {v10}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;-><init>()V

    invoke-static {v9, v10}, Lorg/checkerframework/javacutil/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4257
    .end local v8    # "c":Lcom/sun/source/tree/CatchTree;
    .end local v9    # "type":Ljavax/lang/model/type/TypeMirror;
    goto :goto_1

    .line 4255
    .restart local v8    # "c":Lcom/sun/source/tree/CatchTree;
    .restart local v9    # "type":Ljavax/lang/model/type/TypeMirror;
    :cond_1
    new-instance v7, Ljava/lang/AssertionError;

    const-string v10, "exception parameters must have a type"

    invoke-direct {v7, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 4260
    .end local v8    # "c":Lcom/sun/source/tree/CatchTree;
    .end local v9    # "type":Ljavax/lang/model/type/TypeMirror;
    :cond_2
    iget-object v7, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->returnTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    .line 4261
    .local v7, "oldReturnTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    iget-object v8, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->breakTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    .line 4262
    .local v8, "oldBreakTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    iget-object v9, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->breakLabels:Ljava/util/Map;

    .line 4263
    .local v9, "oldBreakLabels":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Name;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    iget-object v10, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->continueTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    .line 4264
    .local v10, "oldContinueTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    iget-object v11, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->continueLabels:Ljava/util/Map;

    .line 4266
    .local v11, "oldContinueLabels":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Name;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    const/4 v12, 0x0

    .line 4267
    .local v12, "finallyLabel":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    const/4 v13, 0x0

    .line 4269
    .local v13, "exceptionalFinallyLabel":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    if-eqz v4, :cond_3

    .line 4270
    new-instance v14, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-direct {v14}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;-><init>()V

    move-object v12, v14

    .line 4272
    new-instance v14, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-direct {v14}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;-><init>()V

    move-object v13, v14

    .line 4273
    iget-object v14, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->tryStack:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryStack;

    new-instance v15, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyFrame;

    invoke-direct {v15, v13}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyFrame;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    invoke-virtual {v14, v15}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryStack;->pushFrame(Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFrame;)V

    .line 4275
    new-instance v14, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    invoke-direct {v14}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;-><init>()V

    iput-object v14, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->returnTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    .line 4277
    new-instance v14, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    invoke-direct {v14}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;-><init>()V

    iput-object v14, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->breakTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    .line 4278
    new-instance v14, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeMap;

    invoke-direct {v14}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeMap;-><init>()V

    iput-object v14, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->breakLabels:Ljava/util/Map;

    .line 4280
    new-instance v14, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    invoke-direct {v14}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;-><init>()V

    iput-object v14, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->continueTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    .line 4281
    new-instance v14, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeMap;

    invoke-direct {v14}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeMap;-><init>()V

    iput-object v14, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->continueLabels:Ljava/util/Map;

    .line 4284
    :cond_3
    new-instance v14, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-direct {v14}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;-><init>()V

    .line 4286
    .local v14, "doneLabel":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    iget-object v15, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->tryStack:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryStack;

    move-object/from16 v16, v5

    .end local v5    # "resources":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    .local v16, "resources":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    new-instance v5, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryCatchFrame;

    move-object/from16 v17, v11

    .end local v11    # "oldContinueLabels":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Name;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    .local v17, "oldContinueLabels":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Name;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    iget-object v11, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->types:Ljavax/lang/model/util/Types;

    invoke-direct {v5, v11, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryCatchFrame;-><init>(Ljavax/lang/model/util/Types;Ljava/util/List;)V

    invoke-virtual {v15, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryStack;->pushFrame(Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFrame;)V

    .line 4288
    new-instance v5, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "start of try block #"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 4290
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v15, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v15}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v15

    invoke-direct {v5, v1, v11, v15}, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;-><init>(Lcom/sun/source/tree/Tree;Ljava/lang/String;Ljavax/lang/model/util/Types;)V

    .line 4288
    invoke-virtual {v0, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 4291
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/TryTree;->getBlock()Lcom/sun/source/tree/BlockTree;

    move-result-object v5

    invoke-virtual {v0, v5, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4292
    new-instance v5, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "end of try block #"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 4294
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v15, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v15}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v15

    invoke-direct {v5, v1, v11, v15}, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;-><init>(Lcom/sun/source/tree/Tree;Ljava/lang/String;Ljavax/lang/model/util/Types;)V

    .line 4292
    invoke-virtual {v0, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 4296
    new-instance v5, Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;

    invoke-static {v12, v14}, Lorg/checkerframework/dataflow/cfg/CFGBuilder;->access$1400(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-direct {v5, v11}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    invoke-virtual {v0, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithExtendedNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;)V

    .line 4298
    iget-object v5, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->tryStack:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryStack;

    invoke-virtual {v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryStack;->popFrame()V

    .line 4300
    const/4 v5, 0x0

    .line 4301
    .local v5, "catchIndex":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    move-object/from16 v18, v3

    .end local v3    # "catches":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/CatchTree;>;"
    .local v18, "catches":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/CatchTree;>;"
    const-string v3, " #"

    if-eqz v15, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sun/source/tree/CatchTree;

    .line 4302
    .local v15, "c":Lcom/sun/source/tree/CatchTree;
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v6

    .end local v6    # "catchLabels":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;>;"
    .local v20, "catchLabels":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;>;"
    move-object/from16 v6, v19

    check-cast v6, Lorg/checkerframework/javacutil/Pair;

    iget-object v6, v6, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-virtual {v0, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addLabelForNextNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 4303
    new-instance v6, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;

    move-object/from16 v19, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v10

    .end local v10    # "oldContinueTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    .local v21, "oldContinueTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    const-string v10, "start of catch block for "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4306
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 4307
    invoke-interface {v11}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v11

    invoke-direct {v6, v1, v10, v11}, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;-><init>(Lcom/sun/source/tree/Tree;Ljava/lang/String;Ljavax/lang/model/util/Types;)V

    .line 4303
    invoke-virtual {v0, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 4308
    invoke-virtual {v0, v15, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4309
    new-instance v6, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "end of catch block for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4312
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v10, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 4313
    invoke-interface {v10}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v10

    invoke-direct {v6, v1, v3, v10}, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;-><init>(Lcom/sun/source/tree/Tree;Ljava/lang/String;Ljavax/lang/model/util/Types;)V

    .line 4309
    invoke-virtual {v0, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 4315
    add-int/lit8 v5, v5, 0x1

    .line 4316
    new-instance v3, Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;

    .line 4317
    invoke-static {v12, v14}, Lorg/checkerframework/dataflow/cfg/CFGBuilder;->access$1400(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-direct {v3, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 4316
    invoke-virtual {v0, v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithExtendedNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;)V

    .line 4318
    .end local v15    # "c":Lcom/sun/source/tree/CatchTree;
    move-object/from16 v3, v18

    move-object/from16 v11, v19

    move-object/from16 v6, v20

    move-object/from16 v10, v21

    goto/16 :goto_2

    .line 4320
    .end local v20    # "catchLabels":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;>;"
    .end local v21    # "oldContinueTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    .restart local v6    # "catchLabels":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;>;"
    .restart local v10    # "oldContinueTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    :cond_4
    move-object/from16 v20, v6

    move-object/from16 v21, v10

    .end local v6    # "catchLabels":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;>;"
    .end local v10    # "oldContinueTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    .restart local v20    # "catchLabels":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;>;"
    .restart local v21    # "oldContinueTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    if-eqz v12, :cond_d

    .line 4323
    iget-object v6, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->tryStack:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryStack;

    invoke-virtual {v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryStack;->popFrame()V

    .line 4326
    invoke-virtual {v0, v12}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addLabelForNextNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 4327
    new-instance v6, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "start of finally block #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4330
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 4331
    invoke-interface {v11}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v11

    invoke-direct {v6, v1, v10, v11}, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;-><init>(Lcom/sun/source/tree/Tree;Ljava/lang/String;Ljavax/lang/model/util/Types;)V

    .line 4327
    invoke-virtual {v0, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 4332
    invoke-virtual {v0, v4, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4333
    new-instance v6, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "end of finally block #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4336
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 4337
    invoke-interface {v11}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v11

    invoke-direct {v6, v1, v10, v11}, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;-><init>(Lcom/sun/source/tree/Tree;Ljava/lang/String;Ljavax/lang/model/util/Types;)V

    .line 4333
    invoke-virtual {v0, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 4338
    new-instance v6, Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;

    invoke-direct {v6, v14}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    invoke-virtual {v0, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithExtendedNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;)V

    .line 4341
    invoke-direct {v0, v13}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->hasExceptionalPath(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 4347
    invoke-virtual {v0, v13}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addLabelForNextNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 4348
    new-instance v6, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;

    iget-object v10, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 4352
    invoke-interface {v10}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v10

    const-string v11, "start of finally block for Throwable"

    invoke-direct {v6, v1, v11, v10}, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;-><init>(Lcom/sun/source/tree/Tree;Ljava/lang/String;Ljavax/lang/model/util/Types;)V

    .line 4348
    invoke-virtual {v0, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 4354
    invoke-virtual {v0, v4, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4356
    iget-object v6, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->elements:Ljavax/lang/model/util/Elements;

    .line 4357
    const-string v10, "java.lang.Throwable"

    invoke-interface {v6, v10}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v6

    invoke-interface {v6}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v6

    .line 4358
    .local v6, "throwableType":Ljavax/lang/model/type/TypeMirror;
    new-instance v10, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;

    iget-object v11, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 4363
    invoke-interface {v11}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v11

    const-string v15, "end of finally block for Throwable"

    invoke-direct {v10, v1, v15, v11}, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;-><init>(Lcom/sun/source/tree/Tree;Ljava/lang/String;Ljavax/lang/model/util/Types;)V

    .line 4359
    invoke-virtual {v0, v10, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNodeWithException(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;

    move-result-object v10

    .line 4366
    .local v10, "throwing":Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;->setTerminatesExecution(Z)V

    .line 4369
    .end local v6    # "throwableType":Ljavax/lang/model/type/TypeMirror;
    .end local v10    # "throwing":Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;
    :cond_5
    iget-object v6, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->returnTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    invoke-virtual {v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;->wasAccessed()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 4370
    iget-object v6, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->returnTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    invoke-virtual {v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;->peekLabel()Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addLabelForNextNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 4371
    iput-object v7, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->returnTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    .line 4373
    new-instance v6, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "start of finally block for return #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4376
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 4377
    invoke-interface {v11}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v11

    invoke-direct {v6, v1, v10, v11}, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;-><init>(Lcom/sun/source/tree/Tree;Ljava/lang/String;Ljavax/lang/model/util/Types;)V

    .line 4373
    invoke-virtual {v0, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 4378
    invoke-virtual {v0, v4, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4379
    new-instance v6, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "end of finally block for return #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4382
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 4383
    invoke-interface {v11}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v11

    invoke-direct {v6, v1, v10, v11}, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;-><init>(Lcom/sun/source/tree/Tree;Ljava/lang/String;Ljavax/lang/model/util/Types;)V

    .line 4379
    invoke-virtual {v0, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 4384
    new-instance v6, Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;

    iget-object v10, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->returnTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    invoke-virtual {v10}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;->accessLabel()Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    move-result-object v10

    invoke-direct {v6, v10}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    invoke-virtual {v0, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithExtendedNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;)V

    goto :goto_3

    .line 4386
    :cond_6
    iput-object v7, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->returnTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    .line 4389
    :goto_3
    iget-object v6, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->breakTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    invoke-virtual {v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;->wasAccessed()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 4390
    iget-object v6, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->breakTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    invoke-virtual {v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;->peekLabel()Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addLabelForNextNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 4391
    iput-object v8, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->breakTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    .line 4393
    new-instance v6, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "start of finally block for break #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4396
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 4397
    invoke-interface {v11}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v11

    invoke-direct {v6, v1, v10, v11}, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;-><init>(Lcom/sun/source/tree/Tree;Ljava/lang/String;Ljavax/lang/model/util/Types;)V

    .line 4393
    invoke-virtual {v0, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 4398
    invoke-virtual {v0, v4, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4399
    new-instance v6, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "end of finally block for break #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4402
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 4403
    invoke-interface {v11}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v11

    invoke-direct {v6, v1, v10, v11}, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;-><init>(Lcom/sun/source/tree/Tree;Ljava/lang/String;Ljavax/lang/model/util/Types;)V

    .line 4399
    invoke-virtual {v0, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 4404
    new-instance v6, Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;

    iget-object v10, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->breakTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    invoke-virtual {v10}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;->accessLabel()Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    move-result-object v10

    invoke-direct {v6, v10}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    invoke-virtual {v0, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithExtendedNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;)V

    goto :goto_4

    .line 4406
    :cond_7
    iput-object v8, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->breakTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    .line 4409
    :goto_4
    iget-object v6, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->breakLabels:Ljava/util/Map;

    check-cast v6, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeMap;

    .line 4410
    invoke-virtual {v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeMap;->getAccessedNames()Ljava/util/Map;

    move-result-object v6

    .line 4411
    .local v6, "accessedBreakLabels":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Name;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_9

    .line 4412
    iput-object v9, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->breakLabels:Ljava/util/Map;

    .line 4414
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 4415
    .local v11, "access":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/element/Name;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-virtual {v0, v15}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addLabelForNextNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 4416
    new-instance v15, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;

    move/from16 v19, v5

    .end local v5    # "catchIndex":I
    .local v19, "catchIndex":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v6

    .end local v6    # "accessedBreakLabels":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Name;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    .local v22, "accessedBreakLabels":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Name;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    const-string v6, "start of finally block for break label "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4420
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4422
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 4423
    invoke-interface {v6}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v6

    invoke-direct {v15, v1, v5, v6}, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;-><init>(Lcom/sun/source/tree/Tree;Ljava/lang/String;Ljavax/lang/model/util/Types;)V

    .line 4416
    invoke-virtual {v0, v15}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 4424
    invoke-virtual {v0, v4, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4425
    new-instance v5, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "end of finally block for break label "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4429
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4431
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v15, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 4432
    invoke-interface {v15}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v15

    invoke-direct {v5, v1, v6, v15}, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;-><init>(Lcom/sun/source/tree/Tree;Ljava/lang/String;Ljavax/lang/model/util/Types;)V

    .line 4425
    invoke-virtual {v0, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 4433
    new-instance v5, Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;

    iget-object v6, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->breakLabels:Ljava/util/Map;

    .line 4434
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v6, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-direct {v5, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 4433
    invoke-virtual {v0, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithExtendedNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;)V

    .line 4435
    .end local v11    # "access":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/element/Name;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    move/from16 v5, v19

    move-object/from16 v6, v22

    goto/16 :goto_5

    .end local v19    # "catchIndex":I
    .end local v22    # "accessedBreakLabels":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Name;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    .restart local v5    # "catchIndex":I
    .restart local v6    # "accessedBreakLabels":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Name;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    :cond_8
    move/from16 v19, v5

    move-object/from16 v22, v6

    .end local v5    # "catchIndex":I
    .end local v6    # "accessedBreakLabels":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Name;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    .restart local v19    # "catchIndex":I
    .restart local v22    # "accessedBreakLabels":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Name;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    goto :goto_6

    .line 4437
    .end local v19    # "catchIndex":I
    .end local v22    # "accessedBreakLabels":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Name;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    .restart local v5    # "catchIndex":I
    .restart local v6    # "accessedBreakLabels":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Name;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    :cond_9
    move/from16 v19, v5

    move-object/from16 v22, v6

    .end local v5    # "catchIndex":I
    .end local v6    # "accessedBreakLabels":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Name;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    .restart local v19    # "catchIndex":I
    .restart local v22    # "accessedBreakLabels":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Name;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    iput-object v9, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->breakLabels:Ljava/util/Map;

    .line 4440
    :goto_6
    iget-object v5, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->continueTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    invoke-virtual {v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;->wasAccessed()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 4441
    iget-object v5, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->continueTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    invoke-virtual {v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;->peekLabel()Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addLabelForNextNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 4442
    move-object/from16 v5, v21

    .end local v21    # "oldContinueTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    .local v5, "oldContinueTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    iput-object v5, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->continueTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    .line 4444
    new-instance v6, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "start of finally block for continue #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4447
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 4448
    invoke-interface {v11}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v11

    invoke-direct {v6, v1, v10, v11}, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;-><init>(Lcom/sun/source/tree/Tree;Ljava/lang/String;Ljavax/lang/model/util/Types;)V

    .line 4444
    invoke-virtual {v0, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 4449
    invoke-virtual {v0, v4, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4450
    new-instance v6, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "end of finally block for continue #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4453
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 4454
    invoke-interface {v11}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v11

    invoke-direct {v6, v1, v10, v11}, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;-><init>(Lcom/sun/source/tree/Tree;Ljava/lang/String;Ljavax/lang/model/util/Types;)V

    .line 4450
    invoke-virtual {v0, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 4455
    new-instance v6, Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;

    iget-object v10, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->continueTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    invoke-virtual {v10}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;->accessLabel()Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    move-result-object v10

    invoke-direct {v6, v10}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    invoke-virtual {v0, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithExtendedNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;)V

    goto :goto_7

    .line 4457
    .end local v5    # "oldContinueTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    .restart local v21    # "oldContinueTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    :cond_a
    move-object/from16 v5, v21

    .end local v21    # "oldContinueTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    .restart local v5    # "oldContinueTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    iput-object v5, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->continueTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    .line 4460
    :goto_7
    iget-object v6, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->continueLabels:Ljava/util/Map;

    check-cast v6, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeMap;

    .line 4461
    invoke-virtual {v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeMap;->getAccessedNames()Ljava/util/Map;

    move-result-object v6

    .line 4462
    .local v6, "accessedContinueLabels":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Name;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_c

    .line 4463
    move-object/from16 v10, v17

    .end local v17    # "oldContinueLabels":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Name;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    .local v10, "oldContinueLabels":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Name;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    iput-object v10, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->continueLabels:Ljava/util/Map;

    .line 4465
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 4466
    .local v15, "access":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/element/Name;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v21, v5

    .end local v5    # "oldContinueTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    .restart local v21    # "oldContinueTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    move-object/from16 v5, v17

    check-cast v5, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-virtual {v0, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addLabelForNextNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 4467
    new-instance v5, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;

    move-object/from16 v17, v6

    .end local v6    # "accessedContinueLabels":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Name;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    .local v17, "accessedContinueLabels":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Name;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v7

    .end local v7    # "oldReturnTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    .local v23, "oldReturnTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    const-string v7, "start of finally block for continue label "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4471
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4473
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 4474
    invoke-interface {v7}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v7

    invoke-direct {v5, v1, v6, v7}, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;-><init>(Lcom/sun/source/tree/Tree;Ljava/lang/String;Ljavax/lang/model/util/Types;)V

    .line 4467
    invoke-virtual {v0, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 4475
    invoke-virtual {v0, v4, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4476
    new-instance v5, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "end of finally block for continue label "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4480
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4482
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 4483
    invoke-interface {v7}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v7

    invoke-direct {v5, v1, v6, v7}, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;-><init>(Lcom/sun/source/tree/Tree;Ljava/lang/String;Ljavax/lang/model/util/Types;)V

    .line 4476
    invoke-virtual {v0, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 4484
    new-instance v5, Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;

    iget-object v6, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->continueLabels:Ljava/util/Map;

    .line 4485
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-direct {v5, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 4484
    invoke-virtual {v0, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithExtendedNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;)V

    .line 4486
    .end local v15    # "access":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/element/Name;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    move-object/from16 v6, v17

    move-object/from16 v5, v21

    move-object/from16 v7, v23

    goto/16 :goto_8

    .end local v17    # "accessedContinueLabels":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Name;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    .end local v21    # "oldContinueTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    .end local v23    # "oldReturnTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    .restart local v5    # "oldContinueTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    .restart local v6    # "accessedContinueLabels":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Name;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    .restart local v7    # "oldReturnTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    :cond_b
    move-object/from16 v21, v5

    move-object/from16 v17, v6

    move-object/from16 v23, v7

    .end local v5    # "oldContinueTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    .end local v6    # "accessedContinueLabels":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Name;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    .end local v7    # "oldReturnTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    .restart local v17    # "accessedContinueLabels":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Name;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    .restart local v21    # "oldContinueTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    .restart local v23    # "oldReturnTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    goto :goto_9

    .line 4488
    .end local v10    # "oldContinueLabels":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Name;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    .end local v21    # "oldContinueTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    .end local v23    # "oldReturnTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    .restart local v5    # "oldContinueTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    .restart local v6    # "accessedContinueLabels":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Name;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    .restart local v7    # "oldReturnTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    .local v17, "oldContinueLabels":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Name;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    :cond_c
    move-object/from16 v21, v5

    move-object/from16 v23, v7

    move-object/from16 v10, v17

    move-object/from16 v17, v6

    .end local v5    # "oldContinueTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    .end local v6    # "accessedContinueLabels":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Name;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    .end local v7    # "oldReturnTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    .restart local v10    # "oldContinueLabels":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Name;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    .local v17, "accessedContinueLabels":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Name;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    .restart local v21    # "oldContinueTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    .restart local v23    # "oldReturnTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    iput-object v10, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->continueLabels:Ljava/util/Map;

    goto :goto_9

    .line 4320
    .end local v10    # "oldContinueLabels":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Name;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    .end local v19    # "catchIndex":I
    .end local v22    # "accessedBreakLabels":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Name;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    .end local v23    # "oldReturnTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    .local v5, "catchIndex":I
    .restart local v7    # "oldReturnTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    .local v17, "oldContinueLabels":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Name;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    :cond_d
    move/from16 v19, v5

    move-object/from16 v23, v7

    move-object/from16 v10, v17

    .line 4492
    .end local v5    # "catchIndex":I
    .end local v7    # "oldReturnTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    .end local v17    # "oldContinueLabels":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Name;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    .restart local v10    # "oldContinueLabels":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Name;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    .restart local v19    # "catchIndex":I
    .restart local v23    # "oldReturnTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    :goto_9
    invoke-virtual {v0, v14}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addLabelForNextNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 4494
    const/4 v3, 0x0

    return-object v3
.end method

.method public bridge synthetic visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 5
    .param p1, "tree"    # Lcom/sun/source/tree/TypeCastTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 4536
    invoke-interface {p1}, Lcom/sun/source/tree/TypeCastTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 4537
    .local v0, "operand":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-interface {p1}, Lcom/sun/source/tree/TypeCastTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 4538
    .local v1, "type":Ljavax/lang/model/type/TypeMirror;
    new-instance v2, Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;

    iget-object v3, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->types:Ljavax/lang/model/util/Types;

    invoke-direct {v2, p1, v0, v1, v3}, Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;-><init>(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/util/Types;)V

    .line 4539
    .local v2, "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    iget-object v3, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->elements:Ljavax/lang/model/util/Elements;

    const-string v4, "java.lang.ClassCastException"

    invoke-interface {v3, v4}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v3

    .line 4541
    .local v3, "cceElement":Ljavax/lang/model/element/TypeElement;
    invoke-interface {v3}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNodeWithException(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;

    .line 4542
    return-object v2
.end method

.method public bridge synthetic visitTypeParameter(Lcom/sun/source/tree/TypeParameterTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitTypeParameter(Lcom/sun/source/tree/TypeParameterTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeParameter(Lcom/sun/source/tree/TypeParameterTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/TypeParameterTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 4552
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "TypeParameterTree is unexpected in AST to CFG translation"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic visitUnary(Lcom/sun/source/tree/UnaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitUnary(Lcom/sun/source/tree/UnaryTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitUnary(Lcom/sun/source/tree/UnaryTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 19
    .param p1, "tree"    # Lcom/sun/source/tree/UnaryTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 4567
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 4568
    .local v3, "result":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/UnaryTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    .line 4569
    .local v4, "kind":Lcom/sun/source/tree/Tree$Kind;
    sget-object v5, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-virtual {v4}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 4663
    move-object/from16 v16, v3

    .end local v3    # "result":Lorg/checkerframework/dataflow/cfg/node/Node;
    .local v16, "result":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "<*nullchk*>"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4664
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/UnaryTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 4665
    .local v3, "expr":Lorg/checkerframework/dataflow/cfg/node/Node;
    new-instance v5, Lorg/checkerframework/dataflow/cfg/node/NullChkNode;

    invoke-direct {v5, v1, v3}, Lorg/checkerframework/dataflow/cfg/node/NullChkNode;-><init>(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    invoke-virtual {v0, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v5

    .line 4666
    .end local v16    # "result":Lorg/checkerframework/dataflow/cfg/node/Node;
    .local v5, "result":Lorg/checkerframework/dataflow/cfg/node/Node;
    goto/16 :goto_5

    .line 4610
    .end local v5    # "result":Lorg/checkerframework/dataflow/cfg/node/Node;
    .local v3, "result":Lorg/checkerframework/dataflow/cfg/node/Node;
    :pswitch_0
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/UnaryTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v5

    .line 4611
    .local v5, "exprTree":Lcom/sun/source/tree/ExpressionTree;
    invoke-virtual {v0, v5, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 4613
    .local v6, "expr":Lorg/checkerframework/dataflow/cfg/node/Node;
    sget-object v7, Lcom/sun/source/tree/Tree$Kind;->POSTFIX_INCREMENT:Lcom/sun/source/tree/Tree$Kind;

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v4, v7, :cond_1

    sget-object v7, Lcom/sun/source/tree/Tree$Kind;->PREFIX_INCREMENT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v4, v7, :cond_0

    goto :goto_0

    :cond_0
    move v7, v9

    goto :goto_1

    :cond_1
    :goto_0
    move v7, v8

    .line 4616
    .local v7, "isIncrement":Z
    :goto_1
    sget-object v10, Lcom/sun/source/tree/Tree$Kind;->POSTFIX_INCREMENT:Lcom/sun/source/tree/Tree$Kind;

    if-eq v4, v10, :cond_3

    sget-object v10, Lcom/sun/source/tree/Tree$Kind;->POSTFIX_DECREMENT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v4, v10, :cond_2

    goto :goto_2

    :cond_2
    move v8, v9

    .line 4619
    .local v8, "isPostfix":Z
    :cond_3
    :goto_2
    nop

    .line 4621
    if-eqz v8, :cond_4

    const/4 v10, 0x0

    goto :goto_3

    :cond_4
    move-object v10, v1

    .line 4620
    :goto_3
    invoke-direct {v0, v10, v6, v7}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->createIncrementOrDecrementAssign(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;Z)Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;

    move-result-object v10

    .line 4622
    .local v10, "unaryAssign":Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;
    invoke-virtual {v0, v1, v10}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addToUnaryAssignLookupMap(Lcom/sun/source/tree/UnaryTree;Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;)V

    .line 4624
    if-eqz v8, :cond_5

    .line 4625
    invoke-static {v5}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v11

    .line 4626
    .local v11, "exprType":Ljavax/lang/model/type/TypeMirror;
    iget-object v12, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    .line 4629
    const-string v13, "tempPostfix"

    invoke-virtual {v0, v13}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->uniqueName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 4630
    invoke-direct/range {p0 .. p0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->findOwner()Ljavax/lang/model/element/Element;

    move-result-object v14

    .line 4631
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/UnaryTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v15

    .line 4627
    invoke-virtual {v12, v11, v13, v14, v15}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildVariableDecl(Ljavax/lang/model/type/TypeMirror;Ljava/lang/String;Ljavax/lang/model/element/Element;Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/VariableTree;

    move-result-object v12

    .line 4632
    .local v12, "tempVarDecl":Lcom/sun/source/tree/VariableTree;
    invoke-virtual {v0, v12}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 4633
    new-instance v13, Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;

    invoke-direct {v13, v12}, Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;-><init>(Lcom/sun/source/tree/VariableTree;)V

    .line 4635
    .local v13, "tempVarDeclNode":Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;
    invoke-virtual {v13, v9}, Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;->setInSource(Z)V

    .line 4636
    invoke-virtual {v0, v13}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 4638
    iget-object v14, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    invoke-virtual {v14, v12}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildVariableUse(Lcom/sun/source/tree/VariableTree;)Lcom/sun/source/tree/IdentifierTree;

    move-result-object v14

    .line 4639
    .local v14, "tempVar":Lcom/sun/source/tree/Tree;
    invoke-virtual {v0, v14}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 4640
    new-instance v15, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;

    invoke-direct {v15, v14}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;-><init>(Lcom/sun/source/tree/Tree;)V

    .line 4641
    .local v15, "tempVarNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {v15, v9}, Lorg/checkerframework/dataflow/cfg/node/Node;->setInSource(Z)V

    .line 4642
    invoke-virtual {v0, v15}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 4644
    new-instance v9, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;

    invoke-direct {v9, v1, v15, v6}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;-><init>(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 4646
    .local v9, "tempAssignNode":Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;
    move-object/from16 v16, v3

    const/4 v3, 0x0

    .end local v3    # "result":Lorg/checkerframework/dataflow/cfg/node/Node;
    .restart local v16    # "result":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {v9, v3}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;->setInSource(Z)V

    .line 4647
    invoke-virtual {v0, v9}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 4649
    iget-object v3, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    invoke-virtual {v3, v12}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildVariableUse(Lcom/sun/source/tree/VariableTree;)Lcom/sun/source/tree/IdentifierTree;

    move-result-object v3

    .line 4650
    .local v3, "resultExpr":Lcom/sun/source/tree/Tree;
    invoke-virtual {v0, v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 4651
    move-object/from16 v17, v5

    .end local v5    # "exprTree":Lcom/sun/source/tree/ExpressionTree;
    .local v17, "exprTree":Lcom/sun/source/tree/ExpressionTree;
    new-instance v5, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;

    invoke-direct {v5, v3}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;-><init>(Lcom/sun/source/tree/Tree;)V

    .line 4652
    .end local v16    # "result":Lorg/checkerframework/dataflow/cfg/node/Node;
    .local v5, "result":Lorg/checkerframework/dataflow/cfg/node/Node;
    move-object/from16 v18, v3

    const/4 v3, 0x0

    .end local v3    # "resultExpr":Lcom/sun/source/tree/Tree;
    .local v18, "resultExpr":Lcom/sun/source/tree/Tree;
    invoke-virtual {v5, v3}, Lorg/checkerframework/dataflow/cfg/node/Node;->setInSource(Z)V

    .line 4653
    invoke-virtual {v0, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 4654
    .end local v9    # "tempAssignNode":Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;
    .end local v11    # "exprType":Ljavax/lang/model/type/TypeMirror;
    .end local v12    # "tempVarDecl":Lcom/sun/source/tree/VariableTree;
    .end local v13    # "tempVarDeclNode":Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;
    .end local v14    # "tempVar":Lcom/sun/source/tree/Tree;
    .end local v15    # "tempVarNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v18    # "resultExpr":Lcom/sun/source/tree/Tree;
    goto :goto_5

    .line 4655
    .end local v17    # "exprTree":Lcom/sun/source/tree/ExpressionTree;
    .local v3, "result":Lorg/checkerframework/dataflow/cfg/node/Node;
    .local v5, "exprTree":Lcom/sun/source/tree/ExpressionTree;
    :cond_5
    move-object/from16 v16, v3

    move-object/from16 v17, v5

    .end local v3    # "result":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v5    # "exprTree":Lcom/sun/source/tree/ExpressionTree;
    .restart local v16    # "result":Lorg/checkerframework/dataflow/cfg/node/Node;
    .restart local v17    # "exprTree":Lcom/sun/source/tree/ExpressionTree;
    move-object v5, v10

    .line 4657
    .end local v16    # "result":Lorg/checkerframework/dataflow/cfg/node/Node;
    .local v5, "result":Lorg/checkerframework/dataflow/cfg/node/Node;
    goto :goto_5

    .line 4600
    .end local v5    # "result":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v6    # "expr":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v7    # "isIncrement":Z
    .end local v8    # "isPostfix":Z
    .end local v10    # "unaryAssign":Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;
    .end local v17    # "exprTree":Lcom/sun/source/tree/ExpressionTree;
    .restart local v3    # "result":Lorg/checkerframework/dataflow/cfg/node/Node;
    :pswitch_1
    move-object/from16 v16, v3

    .end local v3    # "result":Lorg/checkerframework/dataflow/cfg/node/Node;
    .restart local v16    # "result":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/UnaryTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 4601
    .local v3, "expr":Lorg/checkerframework/dataflow/cfg/node/Node;
    new-instance v5, Lorg/checkerframework/dataflow/cfg/node/ConditionalNotNode;

    invoke-virtual {v0, v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->unbox(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Lorg/checkerframework/dataflow/cfg/node/ConditionalNotNode;-><init>(Lcom/sun/source/tree/UnaryTree;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    invoke-virtual {v0, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v5

    .line 4602
    .end local v16    # "result":Lorg/checkerframework/dataflow/cfg/node/Node;
    .restart local v5    # "result":Lorg/checkerframework/dataflow/cfg/node/Node;
    goto :goto_5

    .line 4575
    .end local v5    # "result":Lorg/checkerframework/dataflow/cfg/node/Node;
    .local v3, "result":Lorg/checkerframework/dataflow/cfg/node/Node;
    :pswitch_2
    move-object/from16 v16, v3

    .end local v3    # "result":Lorg/checkerframework/dataflow/cfg/node/Node;
    .restart local v16    # "result":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/UnaryTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 4576
    .local v3, "expr":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {v0, v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->unaryNumericPromotion(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v3

    .line 4580
    sget-object v5, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-virtual {v4}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    .line 4591
    goto :goto_4

    .line 4588
    :pswitch_3
    new-instance v5, Lorg/checkerframework/dataflow/cfg/node/NumericalPlusNode;

    invoke-direct {v5, v1, v3}, Lorg/checkerframework/dataflow/cfg/node/NumericalPlusNode;-><init>(Lcom/sun/source/tree/UnaryTree;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    invoke-virtual {v0, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v5

    .line 4589
    .end local v16    # "result":Lorg/checkerframework/dataflow/cfg/node/Node;
    .restart local v5    # "result":Lorg/checkerframework/dataflow/cfg/node/Node;
    goto :goto_5

    .line 4585
    .end local v5    # "result":Lorg/checkerframework/dataflow/cfg/node/Node;
    .restart local v16    # "result":Lorg/checkerframework/dataflow/cfg/node/Node;
    :pswitch_4
    new-instance v5, Lorg/checkerframework/dataflow/cfg/node/NumericalMinusNode;

    invoke-direct {v5, v1, v3}, Lorg/checkerframework/dataflow/cfg/node/NumericalMinusNode;-><init>(Lcom/sun/source/tree/UnaryTree;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    invoke-virtual {v0, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v5

    .line 4586
    .end local v16    # "result":Lorg/checkerframework/dataflow/cfg/node/Node;
    .restart local v5    # "result":Lorg/checkerframework/dataflow/cfg/node/Node;
    goto :goto_5

    .line 4582
    .end local v5    # "result":Lorg/checkerframework/dataflow/cfg/node/Node;
    .restart local v16    # "result":Lorg/checkerframework/dataflow/cfg/node/Node;
    :pswitch_5
    new-instance v5, Lorg/checkerframework/dataflow/cfg/node/BitwiseComplementNode;

    invoke-direct {v5, v1, v3}, Lorg/checkerframework/dataflow/cfg/node/BitwiseComplementNode;-><init>(Lcom/sun/source/tree/UnaryTree;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    invoke-virtual {v0, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v5

    .line 4583
    .end local v16    # "result":Lorg/checkerframework/dataflow/cfg/node/Node;
    .restart local v5    # "result":Lorg/checkerframework/dataflow/cfg/node/Node;
    goto :goto_5

    .line 4591
    .end local v5    # "result":Lorg/checkerframework/dataflow/cfg/node/Node;
    .restart local v16    # "result":Lorg/checkerframework/dataflow/cfg/node/Node;
    :goto_4
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 4672
    .end local v3    # "expr":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v16    # "result":Lorg/checkerframework/dataflow/cfg/node/Node;
    .restart local v5    # "result":Lorg/checkerframework/dataflow/cfg/node/Node;
    :goto_5
    return-object v5

    .line 4669
    .end local v5    # "result":Lorg/checkerframework/dataflow/cfg/node/Node;
    .restart local v16    # "result":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_6
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown kind ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") of unary expression: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x27
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic visitUnionType(Lcom/sun/source/tree/UnionTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitUnionType(Lcom/sun/source/tree/UnionTypeTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitUnionType(Lcom/sun/source/tree/UnionTypeTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/UnionTypeTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 4525
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "UnionTypeTree is unexpected in AST to CFG translation"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 8
    .param p1, "tree"    # Lcom/sun/source/tree/VariableTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 4734
    nop

    .line 4735
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4736
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->CLASS:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4737
    .local v0, "isField":Z
    :goto_0
    const/4 v1, 0x0

    .line 4739
    .local v1, "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingClass(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/ClassTree;

    move-result-object v2

    .line 4740
    .local v2, "enclosingClass":Lcom/sun/source/tree/ClassTree;
    invoke-static {v2}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/ClassTree;)Ljavax/lang/model/element/TypeElement;

    move-result-object v3

    .line 4741
    .local v3, "classElem":Ljavax/lang/model/element/TypeElement;
    new-instance v4, Lorg/checkerframework/dataflow/cfg/node/ImplicitThisLiteralNode;

    invoke-interface {v3}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/checkerframework/dataflow/cfg/node/ImplicitThisLiteralNode;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 4743
    .local v4, "receiver":Lorg/checkerframework/dataflow/cfg/node/Node;
    if-eqz v0, :cond_2

    .line 4744
    invoke-interface {p1}, Lcom/sun/source/tree/VariableTree;->getInitializer()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v5

    .line 4745
    .local v5, "initializer":Lcom/sun/source/tree/ExpressionTree;
    if-eqz v5, :cond_1

    .line 4746
    new-instance v6, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;

    .line 4750
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/VariableTree;)Ljavax/lang/model/element/VariableElement;

    move-result-object v7

    invoke-direct {v6, p1, v7, v4}, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;-><init>(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/VariableElement;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 4747
    invoke-virtual {p0, p1, v6, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->translateAssignment(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;

    move-result-object v1

    .line 4752
    .end local v5    # "initializer":Lcom/sun/source/tree/ExpressionTree;
    goto :goto_1

    .line 4745
    .restart local v5    # "initializer":Lcom/sun/source/tree/ExpressionTree;
    :cond_1
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 4754
    .end local v5    # "initializer":Lcom/sun/source/tree/ExpressionTree;
    :cond_2
    new-instance v5, Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;

    invoke-direct {v5, p1}, Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;-><init>(Lcom/sun/source/tree/VariableTree;)V

    .line 4755
    .local v5, "decl":Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;
    invoke-virtual {p0, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 4759
    invoke-interface {p1}, Lcom/sun/source/tree/VariableTree;->getInitializer()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    .line 4760
    .local v6, "initializer":Lcom/sun/source/tree/ExpressionTree;
    if-eqz v6, :cond_3

    .line 4761
    new-instance v7, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;

    invoke-direct {v7, p1, v4}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;-><init>(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 4762
    invoke-virtual {p0, p1, v7, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->translateAssignment(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;

    move-result-object v1

    .line 4767
    .end local v5    # "decl":Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;
    .end local v6    # "initializer":Lcom/sun/source/tree/ExpressionTree;
    :cond_3
    :goto_1
    return-object v1
.end method

.method public bridge synthetic visitWhileLoop(Lcom/sun/source/tree/WhileLoopTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitWhileLoop(Lcom/sun/source/tree/WhileLoopTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitWhileLoop(Lcom/sun/source/tree/WhileLoopTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 7
    .param p1, "tree"    # Lcom/sun/source/tree/WhileLoopTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 4772
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->getLabel(Lcom/sun/source/util/TreePath;)Ljavax/lang/model/element/Name;

    move-result-object v0

    .line 4774
    .local v0, "parentLabel":Ljavax/lang/model/element/Name;
    new-instance v1, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-direct {v1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;-><init>()V

    .line 4775
    .local v1, "loopEntry":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    new-instance v2, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-direct {v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;-><init>()V

    .line 4781
    .local v2, "loopExit":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    if-eqz v0, :cond_0

    .line 4782
    iget-object v3, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->continueLabels:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    .local v3, "conditionStart":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    goto :goto_0

    .line 4784
    .end local v3    # "conditionStart":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    :cond_0
    new-instance v3, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-direct {v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;-><init>()V

    .line 4787
    .restart local v3    # "conditionStart":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    :goto_0
    iget-object v4, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->breakTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    .line 4788
    .local v4, "oldBreakTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    new-instance v5, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    invoke-direct {v5, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    iput-object v5, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->breakTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    .line 4790
    iget-object v5, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->continueTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    .line 4791
    .local v5, "oldContinueTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    new-instance v6, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    invoke-direct {v6, v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    iput-object v6, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->continueTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    .line 4794
    invoke-virtual {p0, v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addLabelForNextNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 4795
    invoke-interface {p1}, Lcom/sun/source/tree/WhileLoopTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 4796
    invoke-interface {p1}, Lcom/sun/source/tree/WhileLoopTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    invoke-virtual {p0, v6, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-virtual {p0, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->unbox(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 4797
    new-instance v6, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;

    invoke-direct {v6, v1, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 4798
    .local v6, "cjump":Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;
    invoke-virtual {p0, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithExtendedNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;)V

    .line 4802
    .end local v6    # "cjump":Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;
    :cond_1
    invoke-virtual {p0, v1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addLabelForNextNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 4803
    invoke-interface {p1}, Lcom/sun/source/tree/WhileLoopTree;->getStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 4804
    invoke-interface {p1}, Lcom/sun/source/tree/WhileLoopTree;->getStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v6

    invoke-virtual {p0, v6, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4806
    :cond_2
    new-instance v6, Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;

    invoke-direct {v6, v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    invoke-virtual {p0, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithExtendedNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;)V

    .line 4809
    invoke-virtual {p0, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addLabelForNextNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 4811
    iput-object v4, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->breakTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    .line 4812
    iput-object v5, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->continueTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    .line 4814
    const/4 v6, 0x0

    return-object v6
.end method

.method public bridge synthetic visitWildcard(Lcom/sun/source/tree/WildcardTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->visitWildcard(Lcom/sun/source/tree/WildcardTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard(Lcom/sun/source/tree/WildcardTree;Ljava/lang/Void;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/WildcardTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 4840
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "WildcardTree is unexpected in AST to CFG translation"

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected widen(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 2
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "destType"    # Ljavax/lang/model/type/TypeMirror;

    .line 2099
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lorg/checkerframework/javacutil/TypesUtils;->isPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2101
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->types:Ljavax/lang/model/util/Types;

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljavax/lang/model/util/Types;->isSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->types:Ljavax/lang/model/util/Types;

    .line 2102
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljavax/lang/model/util/Types;->isSameType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2103
    new-instance v0, Lorg/checkerframework/dataflow/cfg/node/WideningConversionNode;

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/WideningConversionNode;-><init>(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/type/TypeMirror;)V

    .line 2104
    .local v0, "widened":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p0, v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addToConvertedLookupMap(Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 2105
    invoke-virtual {p0, v0, p1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->insertNodeAfter(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 2106
    return-object v0

    .line 2108
    .end local v0    # "widened":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_0
    return-object p1

    .line 2099
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "widening must be applied to primitive types"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method protected withoutAssignment(Lcom/sun/source/tree/Tree$Kind;)Lcom/sun/source/tree/Tree$Kind;
    .locals 2
    .param p1, "kind"    # Lcom/sun/source/tree/Tree$Kind;

    .line 2742
    sget-object v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-virtual {p1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2766
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->ERRONEOUS:Lcom/sun/source/tree/Tree$Kind;

    return-object v0

    .line 2764
    :pswitch_0
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->XOR:Lcom/sun/source/tree/Tree$Kind;

    return-object v0

    .line 2762
    :pswitch_1
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->OR:Lcom/sun/source/tree/Tree$Kind;

    return-object v0

    .line 2760
    :pswitch_2
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->AND:Lcom/sun/source/tree/Tree$Kind;

    return-object v0

    .line 2758
    :pswitch_3
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->UNSIGNED_RIGHT_SHIFT:Lcom/sun/source/tree/Tree$Kind;

    return-object v0

    .line 2756
    :pswitch_4
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->RIGHT_SHIFT:Lcom/sun/source/tree/Tree$Kind;

    return-object v0

    .line 2754
    :pswitch_5
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->LEFT_SHIFT:Lcom/sun/source/tree/Tree$Kind;

    return-object v0

    .line 2752
    :pswitch_6
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->PLUS:Lcom/sun/source/tree/Tree$Kind;

    return-object v0

    .line 2750
    :pswitch_7
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->MINUS:Lcom/sun/source/tree/Tree$Kind;

    return-object v0

    .line 2748
    :pswitch_8
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->REMAINDER:Lcom/sun/source/tree/Tree$Kind;

    return-object v0

    .line 2746
    :pswitch_9
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->MULTIPLY:Lcom/sun/source/tree/Tree$Kind;

    return-object v0

    .line 2744
    :pswitch_a
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->DIVIDE:Lcom/sun/source/tree/Tree$Kind;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
