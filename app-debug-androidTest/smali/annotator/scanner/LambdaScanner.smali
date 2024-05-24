.class public Lannotator/scanner/LambdaScanner;
.super Lannotator/scanner/CommonScanner;
.source "LambdaScanner.java"


# static fields
.field private static methodNameToLambdaExpressionOffsets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private done:Z

.field private index:I

.field private final tree:Lcom/sun/source/tree/Tree;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lannotator/scanner/LambdaScanner;->methodNameToLambdaExpressionOffsets:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/sun/source/tree/Tree;)V
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 49
    invoke-direct {p0}, Lannotator/scanner/CommonScanner;-><init>()V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lannotator/scanner/LambdaScanner;->index:I

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lannotator/scanner/LambdaScanner;->done:Z

    .line 52
    iput-object p1, p0, Lannotator/scanner/LambdaScanner;->tree:Lcom/sun/source/tree/Tree;

    .line 53
    return-void
.end method

.method public static addLambdaExpressionToMethod(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "offset"    # Ljava/lang/Integer;

    .line 80
    sget-object v0, Lannotator/scanner/LambdaScanner;->methodNameToLambdaExpressionOffsets:Ljava/util/Map;

    .line 81
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 82
    .local v0, "offsetList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 84
    sget-object v1, Lannotator/scanner/LambdaScanner;->methodNameToLambdaExpressionOffsets:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method public static getMethodLambdaExpressionIndex(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "offset"    # Ljava/lang/Integer;

    .line 101
    sget-object v0, Lannotator/scanner/LambdaScanner;->methodNameToLambdaExpressionOffsets:Ljava/util/Map;

    .line 102
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 103
    .local v0, "offsetList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 104
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 107
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public static indexOfLambdaExpressionTree(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)I
    .locals 3
    .param p0, "origpath"    # Lcom/sun/source/util/TreePath;
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 30
    invoke-static {p0}, Lannotator/scanner/LambdaScanner;->findCountingContext(Lcom/sun/source/util/TreePath;)Lcom/sun/source/util/TreePath;

    move-result-object v0

    .line 31
    .local v0, "path":Lcom/sun/source/util/TreePath;
    if-nez v0, :cond_0

    .line 32
    const/4 v1, -0x1

    return v1

    .line 35
    :cond_0
    new-instance v1, Lannotator/scanner/LambdaScanner;

    invoke-direct {v1, p1}, Lannotator/scanner/LambdaScanner;-><init>(Lcom/sun/source/tree/Tree;)V

    .line 36
    .local v1, "ls":Lannotator/scanner/LambdaScanner;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lannotator/scanner/LambdaScanner;->scan(Lcom/sun/source/util/TreePath;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget v2, v1, Lannotator/scanner/LambdaScanner;->index:I

    return v2
.end method


# virtual methods
.method public bridge synthetic visitLambdaExpression(Lcom/sun/source/tree/LambdaExpressionTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lannotator/scanner/LambdaScanner;->visitLambdaExpression(Lcom/sun/source/tree/LambdaExpressionTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitLambdaExpression(Lcom/sun/source/tree/LambdaExpressionTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/LambdaExpressionTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 57
    iget-boolean v0, p0, Lannotator/scanner/LambdaScanner;->done:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 58
    iget v0, p0, Lannotator/scanner/LambdaScanner;->index:I

    add-int/2addr v0, v1

    iput v0, p0, Lannotator/scanner/LambdaScanner;->index:I

    .line 60
    :cond_0
    iget-object v0, p0, Lannotator/scanner/LambdaScanner;->tree:Lcom/sun/source/tree/Tree;

    if-ne v0, p1, :cond_1

    .line 61
    iput-boolean v1, p0, Lannotator/scanner/LambdaScanner;->done:Z

    .line 63
    :cond_1
    invoke-super {p0, p1, p2}, Lannotator/scanner/CommonScanner;->visitLambdaExpression(Lcom/sun/source/tree/LambdaExpressionTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method
