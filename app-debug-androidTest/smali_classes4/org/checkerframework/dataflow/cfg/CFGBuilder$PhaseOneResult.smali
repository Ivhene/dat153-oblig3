.class public Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;
.super Ljava/lang/Object;
.source "CFGBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/cfg/CFGBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PhaseOneResult"
.end annotation


# instance fields
.field private final bindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final convertedTreeLookupMap:Ljava/util/IdentityHashMap;
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

.field private final declaredClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sun/source/tree/ClassTree;",
            ">;"
        }
    .end annotation
.end field

.field private final declaredLambdas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sun/source/tree/LambdaExpressionTree;",
            ">;"
        }
    .end annotation
.end field

.field private final exceptionalExitLabel:Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

.field private final leaders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final nodeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;",
            ">;"
        }
    .end annotation
.end field

.field private final regularExitLabel:Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

.field private final returnNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/dataflow/cfg/node/ReturnNode;",
            ">;"
        }
    .end annotation
.end field

.field private final treeLookupMap:Ljava/util/IdentityHashMap;
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

.field private final unaryAssignNodeLookupMap:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/sun/source/tree/UnaryTree;",
            "Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;",
            ">;"
        }
    .end annotation
.end field

.field private final underlyingAST:Lorg/checkerframework/dataflow/cfg/UnderlyingAST;


# direct methods
.method public constructor <init>(Lorg/checkerframework/dataflow/cfg/UnderlyingAST;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Set;Ljava/util/List;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "underlyingAST"    # Lorg/checkerframework/dataflow/cfg/UnderlyingAST;
    .param p9, "regularExitLabel"    # Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    .param p10, "exceptionalExitLabel"    # Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            "Ljava/util/ArrayList<",
            "Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lorg/checkerframework/dataflow/cfg/node/ReturnNode;",
            ">;",
            "Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;",
            "Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;",
            "Ljava/util/List<",
            "Lcom/sun/source/tree/ClassTree;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sun/source/tree/LambdaExpressionTree;",
            ">;)V"
        }
    .end annotation

    .line 1352
    .local p2, "treeLookupMap":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lcom/sun/source/tree/Tree;Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/node/Node;>;>;"
    .local p3, "convertedTreeLookupMap":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lcom/sun/source/tree/Tree;Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/node/Node;>;>;"
    .local p4, "unaryAssignNodeLookupMap":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lcom/sun/source/tree/UnaryTree;Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;>;"
    .local p5, "nodeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;>;"
    .local p6, "bindings":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;Ljava/lang/Integer;>;"
    .local p7, "leaders":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p8, "returnNodes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/ReturnNode;>;"
    .local p11, "declaredClasses":Ljava/util/List;, "Ljava/util/List<Lcom/sun/source/tree/ClassTree;>;"
    .local p12, "declaredLambdas":Ljava/util/List;, "Ljava/util/List<Lcom/sun/source/tree/LambdaExpressionTree;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1353
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;->underlyingAST:Lorg/checkerframework/dataflow/cfg/UnderlyingAST;

    .line 1354
    iput-object p2, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;->treeLookupMap:Ljava/util/IdentityHashMap;

    .line 1355
    iput-object p3, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;->convertedTreeLookupMap:Ljava/util/IdentityHashMap;

    .line 1356
    iput-object p4, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;->unaryAssignNodeLookupMap:Ljava/util/IdentityHashMap;

    .line 1357
    iput-object p5, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;->nodeList:Ljava/util/ArrayList;

    .line 1358
    iput-object p6, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;->bindings:Ljava/util/Map;

    .line 1359
    iput-object p7, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;->leaders:Ljava/util/Set;

    .line 1360
    iput-object p8, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;->returnNodes:Ljava/util/List;

    .line 1361
    iput-object p9, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;->regularExitLabel:Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    .line 1362
    iput-object p10, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;->exceptionalExitLabel:Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    .line 1363
    iput-object p11, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;->declaredClasses:Ljava/util/List;

    .line 1364
    iput-object p12, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;->declaredLambdas:Ljava/util/List;

    .line 1365
    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;

    .line 1325
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;->bindings:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;

    .line 1325
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;->nodeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;

    .line 1325
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;->declaredClasses:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;

    .line 1325
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;->declaredLambdas:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;

    .line 1325
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;->leaders:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$300(Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;

    .line 1325
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;->regularExitLabel:Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    return-object v0
.end method

.method static synthetic access$400(Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;

    .line 1325
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;->exceptionalExitLabel:Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    return-object v0
.end method

.method static synthetic access$500(Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;)Lorg/checkerframework/dataflow/cfg/UnderlyingAST;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;

    .line 1325
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;->underlyingAST:Lorg/checkerframework/dataflow/cfg/UnderlyingAST;

    return-object v0
.end method

.method static synthetic access$600(Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;)Ljava/util/IdentityHashMap;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;

    .line 1325
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;->treeLookupMap:Ljava/util/IdentityHashMap;

    return-object v0
.end method

.method static synthetic access$700(Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;)Ljava/util/IdentityHashMap;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;

    .line 1325
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;->convertedTreeLookupMap:Ljava/util/IdentityHashMap;

    return-object v0
.end method

.method static synthetic access$800(Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;)Ljava/util/IdentityHashMap;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;

    .line 1325
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;->unaryAssignNodeLookupMap:Ljava/util/IdentityHashMap;

    return-object v0
.end method

.method static synthetic access$900(Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;

    .line 1325
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;->returnNodes:Ljava/util/List;

    return-object v0
.end method

.method private resolveLabel(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)Ljava/lang/String;
    .locals 3
    .param p1, "label"    # Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    .line 1393
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;->bindings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1394
    .local v0, "index":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1395
    const-string v1, "null"

    return-object v1

    .line 1397
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;->nodeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;

    invoke-virtual {p0, v1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;->nodeToString(Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected nodeToString(Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;)Ljava/lang/String;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;

    .line 1378
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;->getType()Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode$ExtendedNodeType;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode$ExtendedNodeType;->CONDITIONAL_JUMP:Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode$ExtendedNodeType;

    const-string v2, ")"

    if-ne v0, v1, :cond_0

    .line 1379
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;

    .line 1380
    .local v0, "t":Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TwoTargetConditionalJump("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1381
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;->getThenLabel()Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;->resolveLabel(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1383
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;->getElseLabel()Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;->resolveLabel(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1380
    return-object v1

    .line 1385
    .end local v0    # "t":Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;->getType()Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode$ExtendedNodeType;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode$ExtendedNodeType;->UNCONDITIONAL_JUMP:Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode$ExtendedNodeType;

    if-ne v0, v1, :cond_1

    .line 1386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnconditionalJump("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;->getLabel()Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;->resolveLabel(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1388
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1370
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;->nodeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;

    .line 1371
    .local v2, "n":Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;
    invoke-virtual {p0, v2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;->nodeToString(Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1372
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1373
    .end local v2    # "n":Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;
    goto :goto_0

    .line 1374
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
