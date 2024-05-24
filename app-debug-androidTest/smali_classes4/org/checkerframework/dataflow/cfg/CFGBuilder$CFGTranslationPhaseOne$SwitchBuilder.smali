.class Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;
.super Ljava/lang/Object;
.source "CFGBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchBuilder"
.end annotation


# instance fields
.field private final caseBodyLabels:[Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

.field private final p:Ljava/lang/Void;

.field private switchExpr:Lorg/checkerframework/dataflow/cfg/node/Node;

.field private final switchTree:Lcom/sun/source/tree/SwitchTree;

.field final synthetic this$0:Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;


# direct methods
.method private constructor <init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;Lcom/sun/source/tree/SwitchTree;Ljava/lang/Void;)V
    .locals 0
    .param p2, "tree"    # Lcom/sun/source/tree/SwitchTree;
    .param p3, "p"    # Ljava/lang/Void;

    .line 3299
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->this$0:Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3300
    iput-object p2, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->switchTree:Lcom/sun/source/tree/SwitchTree;

    .line 3301
    invoke-interface {p2}, Lcom/sun/source/tree/SwitchTree;->getCases()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->caseBodyLabels:[Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    .line 3302
    iput-object p3, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->p:Ljava/lang/Void;

    .line 3303
    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;Lcom/sun/source/tree/SwitchTree;Ljava/lang/Void;Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;
    .param p2, "x1"    # Lcom/sun/source/tree/SwitchTree;
    .param p3, "x2"    # Ljava/lang/Void;
    .param p4, "x3"    # Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;

    .line 3293
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;Lcom/sun/source/tree/SwitchTree;Ljava/lang/Void;)V

    return-void
.end method

.method private buildCase(Lcom/sun/source/tree/CaseTree;I)V
    .locals 8
    .param p1, "tree"    # Lcom/sun/source/tree/CaseTree;
    .param p2, "index"    # I

    .line 3366
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->caseBodyLabels:[Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    aget-object v1, v0, p2

    .line 3367
    .local v1, "thisBodyL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    add-int/lit8 v2, p2, 0x1

    aget-object v0, v0, v2

    .line 3368
    .local v0, "nextBodyL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    new-instance v2, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-direct {v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;-><init>()V

    .line 3370
    .local v2, "nextCaseL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    invoke-interface {p1}, Lcom/sun/source/tree/CaseTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v3

    .line 3371
    .local v3, "exprTree":Lcom/sun/source/tree/ExpressionTree;
    if-eqz v3, :cond_0

    .line 3372
    iget-object v4, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->this$0:Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;

    iget-object v5, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->p:Ljava/lang/Void;

    invoke-virtual {v4, v3, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3373
    .local v4, "expr":Lorg/checkerframework/dataflow/cfg/node/Node;
    new-instance v5, Lorg/checkerframework/dataflow/cfg/node/CaseNode;

    iget-object v6, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->switchExpr:Lorg/checkerframework/dataflow/cfg/node/Node;

    iget-object v7, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->this$0:Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;

    iget-object v7, v7, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v7}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v7

    invoke-direct {v5, p1, v6, v4, v7}, Lorg/checkerframework/dataflow/cfg/node/CaseNode;-><init>(Lcom/sun/source/tree/CaseTree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/util/Types;)V

    .line 3374
    .local v5, "test":Lorg/checkerframework/dataflow/cfg/node/CaseNode;
    iget-object v6, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->this$0:Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;

    invoke-virtual {v6, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3375
    iget-object v6, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->this$0:Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;

    new-instance v7, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;

    invoke-direct {v7, v1, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    invoke-virtual {v6, v7}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithExtendedNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;)V

    .line 3377
    .end local v4    # "expr":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v5    # "test":Lorg/checkerframework/dataflow/cfg/node/CaseNode;
    :cond_0
    iget-object v4, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->this$0:Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;

    invoke-virtual {v4, v1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addLabelForNextNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 3378
    invoke-interface {p1}, Lcom/sun/source/tree/CaseTree;->getStatements()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/source/tree/StatementTree;

    .line 3379
    .local v5, "stmt":Lcom/sun/source/tree/StatementTree;
    iget-object v6, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->this$0:Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;

    iget-object v7, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->p:Ljava/lang/Void;

    invoke-virtual {v6, v5, v7}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3380
    .end local v5    # "stmt":Lcom/sun/source/tree/StatementTree;
    goto :goto_0

    .line 3381
    :cond_1
    iget-object v4, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->this$0:Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;

    new-instance v5, Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;

    invoke-direct {v5, v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    invoke-virtual {v4, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithExtendedNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;)V

    .line 3382
    iget-object v4, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->this$0:Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;

    invoke-virtual {v4, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addLabelForNextNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 3383
    return-void
.end method


# virtual methods
.method public build()V
    .locals 14

    .line 3306
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->this$0:Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;

    iget-object v0, v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->breakTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    .line 3307
    .local v0, "oldBreakTargetL":Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->this$0:Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;

    new-instance v2, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    new-instance v3, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-direct {v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;-><init>()V

    invoke-direct {v2, v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    iput-object v2, v1, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->breakTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    .line 3308
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->caseBodyLabels:[Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 3309
    .local v1, "cases":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3310
    iget-object v3, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->caseBodyLabels:[Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    new-instance v4, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-direct {v4}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;-><init>()V

    aput-object v4, v3, v2

    .line 3309
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3312
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->caseBodyLabels:[Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    iget-object v3, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->this$0:Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;

    iget-object v3, v3, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->breakTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    invoke-virtual {v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;->peekLabel()Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    move-result-object v3

    aput-object v3, v2, v1

    .line 3314
    iget-object v2, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->switchTree:Lcom/sun/source/tree/SwitchTree;

    invoke-interface {v2}, Lcom/sun/source/tree/SwitchTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    .line 3315
    .local v2, "switchExprType":Ljavax/lang/model/type/TypeMirror;
    iget-object v3, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->this$0:Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;

    iget-object v3, v3, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    iget-object v4, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->this$0:Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;

    .line 3317
    const-string v5, "switch"

    invoke-virtual {v4, v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->uniqueName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->this$0:Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;

    invoke-static {v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->access$1300(Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;)Ljavax/lang/model/element/Element;

    move-result-object v5

    .line 3316
    const/4 v6, 0x0

    invoke-virtual {v3, v2, v4, v5, v6}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildVariableDecl(Ljavax/lang/model/type/TypeMirror;Ljava/lang/String;Ljavax/lang/model/element/Element;Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/VariableTree;

    move-result-object v3

    .line 3318
    .local v3, "variable":Lcom/sun/source/tree/VariableTree;
    iget-object v4, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->this$0:Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;

    invoke-virtual {v4, v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 3320
    new-instance v4, Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;

    invoke-direct {v4, v3}, Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;-><init>(Lcom/sun/source/tree/VariableTree;)V

    .line 3321
    .local v4, "variableNode":Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;->setInSource(Z)V

    .line 3322
    iget-object v6, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->this$0:Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;

    invoke-virtual {v6, v4}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3324
    iget-object v6, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->this$0:Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;

    iget-object v6, v6, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    invoke-virtual {v6, v3}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildVariableUse(Lcom/sun/source/tree/VariableTree;)Lcom/sun/source/tree/IdentifierTree;

    move-result-object v6

    .line 3325
    .local v6, "variableUse":Lcom/sun/source/tree/ExpressionTree;
    iget-object v7, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->this$0:Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;

    invoke-virtual {v7, v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 3327
    new-instance v7, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;

    invoke-direct {v7, v6}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;-><init>(Lcom/sun/source/tree/Tree;)V

    .line 3328
    .local v7, "variableUseNode":Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    invoke-virtual {v7, v5}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;->setInSource(Z)V

    .line 3329
    iget-object v8, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->this$0:Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;

    invoke-virtual {v8, v7}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3331
    iget-object v8, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->this$0:Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;

    iget-object v9, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->switchTree:Lcom/sun/source/tree/SwitchTree;

    invoke-interface {v9}, Lcom/sun/source/tree/SwitchTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v9

    iget-object v10, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->p:Ljava/lang/Void;

    invoke-virtual {v8, v9, v10}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-virtual {v8, v9}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->unbox(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v8

    .line 3333
    .local v8, "switchExprNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    iget-object v9, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->this$0:Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;

    iget-object v9, v9, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    iget-object v10, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->switchTree:Lcom/sun/source/tree/SwitchTree;

    .line 3334
    invoke-interface {v10}, Lcom/sun/source/tree/SwitchTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildAssignment(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/AssignmentTree;

    move-result-object v9

    .line 3335
    .local v9, "assign":Lcom/sun/source/tree/AssignmentTree;
    iget-object v10, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->this$0:Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;

    invoke-virtual {v10, v9}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 3337
    new-instance v10, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;

    invoke-direct {v10, v9, v7, v8}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;-><init>(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    iput-object v10, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->switchExpr:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3338
    invoke-virtual {v10, v5}, Lorg/checkerframework/dataflow/cfg/node/Node;->setInSource(Z)V

    .line 3339
    iget-object v5, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->this$0:Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;

    iget-object v10, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->switchExpr:Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-virtual {v5, v10}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3341
    iget-object v5, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->this$0:Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;

    new-instance v10, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;

    iget-object v11, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->switchTree:Lcom/sun/source/tree/SwitchTree;

    iget-object v12, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->this$0:Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;

    iget-object v12, v12, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 3343
    invoke-interface {v12}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v12

    const-string v13, "start of switch statement"

    invoke-direct {v10, v11, v13, v12}, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;-><init>(Lcom/sun/source/tree/Tree;Ljava/lang/String;Ljavax/lang/model/util/Types;)V

    .line 3341
    invoke-virtual {v5, v10}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->extendWithNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 3345
    const/4 v5, 0x0

    .line 3346
    .local v5, "defaultIndex":Ljava/lang/Integer;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v1, :cond_2

    .line 3347
    iget-object v11, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->switchTree:Lcom/sun/source/tree/SwitchTree;

    invoke-interface {v11}, Lcom/sun/source/tree/SwitchTree;->getCases()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sun/source/tree/CaseTree;

    .line 3348
    .local v11, "caseTree":Lcom/sun/source/tree/CaseTree;
    invoke-interface {v11}, Lcom/sun/source/tree/CaseTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v12

    if-nez v12, :cond_1

    .line 3349
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_2

    .line 3351
    :cond_1
    invoke-direct {p0, v11, v10}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->buildCase(Lcom/sun/source/tree/CaseTree;I)V

    .line 3346
    .end local v11    # "caseTree":Lcom/sun/source/tree/CaseTree;
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 3354
    .end local v10    # "i":I
    :cond_2
    if-eqz v5, :cond_3

    .line 3358
    iget-object v10, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->switchTree:Lcom/sun/source/tree/SwitchTree;

    invoke-interface {v10}, Lcom/sun/source/tree/SwitchTree;->getCases()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sun/source/tree/CaseTree;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {p0, v10, v11}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->buildCase(Lcom/sun/source/tree/CaseTree;I)V

    .line 3361
    :cond_3
    iget-object v10, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->this$0:Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;

    iget-object v11, v10, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->breakTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    invoke-virtual {v11}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;->peekLabel()Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->addLabelForNextNode(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V

    .line 3362
    iget-object v10, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne$SwitchBuilder;->this$0:Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;

    iput-object v0, v10, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->breakTargetL:Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;

    .line 3363
    return-void
.end method
