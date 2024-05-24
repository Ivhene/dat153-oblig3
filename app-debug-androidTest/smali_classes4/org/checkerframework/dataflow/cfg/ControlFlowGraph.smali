.class public Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;
.super Ljava/lang/Object;
.source "ControlFlowGraph.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final convertedTreeLookup:Ljava/util/IdentityHashMap;
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

.field protected final entryBlock:Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;

.field protected final exceptionalExitBlock:Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;

.field protected final regularExitBlock:Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;

.field protected final returnNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/dataflow/cfg/node/ReturnNode;",
            ">;"
        }
    .end annotation
.end field

.field protected final treeLookup:Ljava/util/IdentityHashMap;
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

.field protected final unaryAssignNodeLookup:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/sun/source/tree/UnaryTree;",
            "Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;",
            ">;"
        }
    .end annotation
.end field

.field protected final underlyingAST:Lorg/checkerframework/dataflow/cfg/UnderlyingAST;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 30
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;Lorg/checkerframework/dataflow/cfg/block/SpecialBlockImpl;Lorg/checkerframework/dataflow/cfg/block/SpecialBlockImpl;Lorg/checkerframework/dataflow/cfg/UnderlyingAST;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "entryBlock"    # Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;
    .param p2, "regularExitBlock"    # Lorg/checkerframework/dataflow/cfg/block/SpecialBlockImpl;
    .param p3, "exceptionalExitBlock"    # Lorg/checkerframework/dataflow/cfg/block/SpecialBlockImpl;
    .param p4, "underlyingAST"    # Lorg/checkerframework/dataflow/cfg/UnderlyingAST;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;",
            "Lorg/checkerframework/dataflow/cfg/block/SpecialBlockImpl;",
            "Lorg/checkerframework/dataflow/cfg/block/SpecialBlockImpl;",
            "Lorg/checkerframework/dataflow/cfg/UnderlyingAST;",
            "Ljava/util/IdentityHashMap<",
            "Lcom/sun/source/tree/Tree;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;>;",
            "Ljava/util/IdentityHashMap<",
            "Lcom/sun/source/tree/Tree;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;>;",
            "Ljava/util/IdentityHashMap<",
            "Lcom/sun/source/tree/UnaryTree;",
            "Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;",
            ">;",
            "Ljava/util/List<",
            "Lorg/checkerframework/dataflow/cfg/node/ReturnNode;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sun/source/tree/ClassTree;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sun/source/tree/LambdaExpressionTree;",
            ">;)V"
        }
    .end annotation

    .line 87
    .local p5, "treeLookup":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lcom/sun/source/tree/Tree;Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/node/Node;>;>;"
    .local p6, "convertedTreeLookup":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lcom/sun/source/tree/Tree;Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/node/Node;>;>;"
    .local p7, "unaryAssignNodeLookup":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lcom/sun/source/tree/UnaryTree;Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;>;"
    .local p8, "returnNodes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/ReturnNode;>;"
    .local p9, "declaredClasses":Ljava/util/List;, "Ljava/util/List<Lcom/sun/source/tree/ClassTree;>;"
    .local p10, "declaredLambdas":Ljava/util/List;, "Ljava/util/List<Lcom/sun/source/tree/LambdaExpressionTree;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->entryBlock:Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;

    .line 89
    iput-object p4, p0, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->underlyingAST:Lorg/checkerframework/dataflow/cfg/UnderlyingAST;

    .line 90
    iput-object p5, p0, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->treeLookup:Ljava/util/IdentityHashMap;

    .line 91
    iput-object p7, p0, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->unaryAssignNodeLookup:Ljava/util/IdentityHashMap;

    .line 92
    iput-object p6, p0, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->convertedTreeLookup:Ljava/util/IdentityHashMap;

    .line 93
    iput-object p2, p0, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->regularExitBlock:Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;

    .line 94
    iput-object p3, p0, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->exceptionalExitBlock:Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;

    .line 95
    iput-object p8, p0, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->returnNodes:Ljava/util/List;

    .line 96
    iput-object p9, p0, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->declaredClasses:Ljava/util/List;

    .line 97
    iput-object p10, p0, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->declaredLambdas:Ljava/util/List;

    .line 98
    return-void
.end method

.method private getSuccessors(Lorg/checkerframework/dataflow/cfg/block/Block;)Ljava/util/Deque;
    .locals 4
    .param p1, "cur"    # Lorg/checkerframework/dataflow/cfg/block/Block;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            ")",
            "Ljava/util/Deque<",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            ">;"
        }
    .end annotation

    .line 195
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 196
    .local v0, "succs":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/checkerframework/dataflow/cfg/block/Block;>;"
    invoke-interface {p1}, Lorg/checkerframework/dataflow/cfg/block/Block;->getType()Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    move-result-object v1

    sget-object v2, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->CONDITIONAL_BLOCK:Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    if-ne v1, v2, :cond_0

    .line 197
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/dataflow/cfg/block/ConditionalBlock;

    .line 198
    .local v1, "ccur":Lorg/checkerframework/dataflow/cfg/block/ConditionalBlock;
    invoke-interface {v1}, Lorg/checkerframework/dataflow/cfg/block/ConditionalBlock;->getThenSuccessor()Lorg/checkerframework/dataflow/cfg/block/Block;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-interface {v1}, Lorg/checkerframework/dataflow/cfg/block/ConditionalBlock;->getElseSuccessor()Lorg/checkerframework/dataflow/cfg/block/Block;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 200
    .end local v1    # "ccur":Lorg/checkerframework/dataflow/cfg/block/ConditionalBlock;
    goto :goto_0

    .line 201
    :cond_0
    instance-of v1, p1, Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlock;

    if-eqz v1, :cond_3

    .line 202
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlock;

    invoke-interface {v1}, Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlock;->getSuccessor()Lorg/checkerframework/dataflow/cfg/block/Block;

    move-result-object v1

    .line 203
    .local v1, "b":Lorg/checkerframework/dataflow/cfg/block/Block;
    if-eqz v1, :cond_1

    .line 204
    invoke-interface {v0, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 208
    .end local v1    # "b":Lorg/checkerframework/dataflow/cfg/block/Block;
    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/checkerframework/dataflow/cfg/block/Block;->getType()Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    move-result-object v1

    sget-object v2, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->EXCEPTION_BLOCK:Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    if-ne v1, v2, :cond_2

    .line 209
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/dataflow/cfg/block/ExceptionBlock;

    .line 210
    .local v1, "ecur":Lorg/checkerframework/dataflow/cfg/block/ExceptionBlock;
    invoke-interface {v1}, Lorg/checkerframework/dataflow/cfg/block/ExceptionBlock;->getExceptionalSuccessors()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 211
    .local v3, "exceptionSuccSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/block/Block;>;"
    invoke-interface {v0, v3}, Ljava/util/Deque;->addAll(Ljava/util/Collection;)Z

    .line 212
    .end local v3    # "exceptionSuccSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/block/Block;>;"
    goto :goto_1

    .line 214
    .end local v1    # "ecur":Lorg/checkerframework/dataflow/cfg/block/ExceptionBlock;
    :cond_2
    return-object v0

    .line 201
    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method


# virtual methods
.method public getAllBlocks()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            ">;"
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 137
    .local v0, "visited":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/block/Block;>;"
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 138
    .local v1, "worklist":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/checkerframework/dataflow/cfg/block/Block;>;"
    iget-object v2, p0, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->entryBlock:Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;

    .line 139
    .local v2, "cur":Lorg/checkerframework/dataflow/cfg/block/Block;
    iget-object v3, p0, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->entryBlock:Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    :goto_0
    if-nez v2, :cond_0

    .line 144
    nop

    .line 159
    return-object v0

    .line 147
    :cond_0
    invoke-direct {p0, v2}, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->getSuccessors(Lorg/checkerframework/dataflow/cfg/block/Block;)Ljava/util/Deque;

    move-result-object v3

    .line 149
    .local v3, "succs":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/checkerframework/dataflow/cfg/block/Block;>;"
    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/dataflow/cfg/block/Block;

    .line 150
    .local v5, "b":Lorg/checkerframework/dataflow/cfg/block/Block;
    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 151
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-interface {v1, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 154
    .end local v5    # "b":Lorg/checkerframework/dataflow/cfg/block/Block;
    :cond_1
    goto :goto_1

    .line 156
    :cond_2
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Lorg/checkerframework/dataflow/cfg/block/Block;

    .line 157
    .end local v3    # "succs":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/checkerframework/dataflow/cfg/block/Block;>;"
    goto :goto_0
.end method

.method public getContainingClass(Lcom/sun/source/tree/Tree;)Lcom/sun/source/tree/ClassTree;
    .locals 2
    .param p1, "t"    # Lcom/sun/source/tree/Tree;

    .line 246
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->treeLookup:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->underlyingAST:Lorg/checkerframework/dataflow/cfg/UnderlyingAST;

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST;->getKind()Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;->METHOD:Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    if-ne v0, v1, :cond_0

    .line 248
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->underlyingAST:Lorg/checkerframework/dataflow/cfg/UnderlyingAST;

    check-cast v0, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;

    .line 249
    .local v0, "cfgMethod":Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;->getClassTree()Lcom/sun/source/tree/ClassTree;

    move-result-object v1

    return-object v1

    .line 252
    .end local v0    # "cfgMethod":Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContainingMethod(Lcom/sun/source/tree/Tree;)Lcom/sun/source/tree/MethodTree;
    .locals 2
    .param p1, "t"    # Lcom/sun/source/tree/Tree;

    .line 232
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->treeLookup:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->underlyingAST:Lorg/checkerframework/dataflow/cfg/UnderlyingAST;

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST;->getKind()Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;->METHOD:Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    if-ne v0, v1, :cond_0

    .line 234
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->underlyingAST:Lorg/checkerframework/dataflow/cfg/UnderlyingAST;

    check-cast v0, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;

    .line 235
    .local v0, "cfgMethod":Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;->getMethod()Lcom/sun/source/tree/MethodTree;

    move-result-object v1

    return-object v1

    .line 238
    .end local v0    # "cfgMethod":Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeclaredClasses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sun/source/tree/ClassTree;",
            ">;"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->declaredClasses:Ljava/util/List;

    return-object v0
.end method

.method public getDeclaredLambdas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sun/source/tree/LambdaExpressionTree;",
            ">;"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->declaredLambdas:Ljava/util/List;

    return-object v0
.end method

.method public getDepthFirstOrderedBlocks()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            ">;"
        }
    .end annotation

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v0, "dfsOrderResult":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/block/Block;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 170
    .local v1, "visited":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/block/Block;>;"
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 171
    .local v2, "worklist":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/checkerframework/dataflow/cfg/block/Block;>;"
    iget-object v3, p0, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->entryBlock:Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;

    invoke-interface {v2, v3}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 172
    :goto_0
    invoke-interface {v2}, Ljava/util/Deque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 173
    invoke-interface {v2}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/cfg/block/Block;

    .line 174
    .local v3, "cur":Lorg/checkerframework/dataflow/cfg/block/Block;
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 175
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-interface {v2}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    goto :goto_1

    .line 178
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-direct {p0, v3}, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->getSuccessors(Lorg/checkerframework/dataflow/cfg/block/Block;)Ljava/util/Deque;

    move-result-object v4

    .line 180
    .local v4, "successors":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/checkerframework/dataflow/cfg/block/Block;>;"
    invoke-interface {v4, v1}, Ljava/util/Deque;->removeAll(Ljava/util/Collection;)Z

    .line 181
    invoke-interface {v2, v4}, Ljava/util/Deque;->addAll(Ljava/util/Collection;)Z

    .line 183
    .end local v3    # "cur":Lorg/checkerframework/dataflow/cfg/block/Block;
    .end local v4    # "successors":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/checkerframework/dataflow/cfg/block/Block;>;"
    :goto_1
    goto :goto_0

    .line 185
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 186
    return-object v0
.end method

.method public getEntryBlock()Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->entryBlock:Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;

    return-object v0
.end method

.method public getExceptionalExitBlock()Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->exceptionalExitBlock:Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;

    return-object v0
.end method

.method public getNodesCorrespondingToTree(Lcom/sun/source/tree/Tree;)Ljava/util/Set;
    .locals 1
    .param p1, "t"    # Lcom/sun/source/tree/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/Tree;",
            ")",
            "Ljava/util/Set<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->convertedTreeLookup:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->convertedTreeLookup:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0

    .line 108
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->treeLookup:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public getRegularExitBlock()Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->regularExitBlock:Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;

    return-object v0
.end method

.method public getReturnNodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/dataflow/cfg/node/ReturnNode;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->returnNodes:Ljava/util/List;

    return-object v0
.end method

.method public getTreeLookup()Ljava/util/IdentityHashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/IdentityHashMap<",
            "Lcom/sun/source/tree/Tree;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;>;"
        }
    .end annotation

    .line 219
    new-instance v0, Ljava/util/IdentityHashMap;

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->treeLookup:Ljava/util/IdentityHashMap;

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getUnaryAssignNodeLookup()Ljava/util/IdentityHashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/IdentityHashMap<",
            "Lcom/sun/source/tree/UnaryTree;",
            "Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;",
            ">;"
        }
    .end annotation

    .line 224
    new-instance v0, Ljava/util/IdentityHashMap;

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->unaryAssignNodeLookup:Ljava/util/IdentityHashMap;

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getUnderlyingAST()Lorg/checkerframework/dataflow/cfg/UnderlyingAST;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->underlyingAST:Lorg/checkerframework/dataflow/cfg/UnderlyingAST;

    return-object v0
.end method
