.class public Lannotator/scanner/NewScanner;
.super Lannotator/scanner/CommonScanner;
.source "NewScanner.java"


# static fields
.field static cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/checkerframework/org/plumelib/util/Pair<",
            "Lcom/sun/source/util/TreePath;",
            "Lcom/sun/source/tree/Tree;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static debug:Z

.field private static methodNameToNewOffsets:Ljava/util/Map;
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

    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lannotator/scanner/NewScanner;->debug:Z

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lannotator/scanner/NewScanner;->cache:Ljava/util/Map;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lannotator/scanner/NewScanner;->methodNameToNewOffsets:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/sun/source/tree/Tree;)V
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 60
    invoke-direct {p0}, Lannotator/scanner/CommonScanner;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lannotator/scanner/NewScanner;->index:I

    .line 57
    const/4 v1, 0x0

    iput-boolean v1, p0, Lannotator/scanner/NewScanner;->done:Z

    .line 61
    iput v0, p0, Lannotator/scanner/NewScanner;->index:I

    .line 62
    iput-boolean v1, p0, Lannotator/scanner/NewScanner;->done:Z

    .line 63
    iput-object p1, p0, Lannotator/scanner/NewScanner;->tree:Lcom/sun/source/tree/Tree;

    .line 64
    return-void
.end method

.method public static addNewToMethod(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "offset"    # Ljava/lang/Integer;

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adding new to method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lannotator/scanner/NewScanner;->debug(Ljava/lang/String;)V

    .line 99
    sget-object v0, Lannotator/scanner/NewScanner;->methodNameToNewOffsets:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 100
    .local v0, "offsetList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 102
    sget-object v1, Lannotator/scanner/NewScanner;->methodNameToNewOffsets:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 89
    sget-boolean v0, Lannotator/scanner/NewScanner;->debug:Z

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 92
    :cond_0
    return-void
.end method

.method public static getMethodNewIndex(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 5
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "offset"    # Ljava/lang/Integer;

    .line 108
    sget-object v0, Lannotator/scanner/NewScanner;->methodNameToNewOffsets:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 109
    .local v0, "offsetList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_1

    .line 114
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 115
    .local v1, "offsetIndex":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_0

    .line 121
    return-object v1

    .line 116
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NewScanner.getMethodNewIndex() : in method: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " did not find offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 110
    .end local v1    # "offsetIndex":Ljava/lang/Integer;
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NewScanner.getMethodNewIndex() : did not find offsets for method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static indexOfNewTree(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)I
    .locals 5
    .param p0, "origpath"    # Lcom/sun/source/util/TreePath;
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "indexOfNewTree: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lannotator/scanner/NewScanner;->debug(Ljava/lang/String;)V

    .line 39
    invoke-static {p0, p1}, Lorg/checkerframework/org/plumelib/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v0

    .line 40
    .local v0, "args":Lorg/checkerframework/org/plumelib/util/Pair;, "Lorg/checkerframework/org/plumelib/util/Pair<Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;>;"
    sget-object v1, Lannotator/scanner/NewScanner;->cache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    sget-object v1, Lannotator/scanner/NewScanner;->cache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 44
    :cond_0
    invoke-static {p0}, Lannotator/scanner/NewScanner;->findCountingContext(Lcom/sun/source/util/TreePath;)Lcom/sun/source/util/TreePath;

    move-result-object v1

    .line 45
    .local v1, "path":Lcom/sun/source/util/TreePath;
    if-nez v1, :cond_1

    .line 46
    const/4 v2, -0x1

    return v2

    .line 49
    :cond_1
    new-instance v2, Lannotator/scanner/NewScanner;

    invoke-direct {v2, p1}, Lannotator/scanner/NewScanner;-><init>(Lcom/sun/source/tree/Tree;)V

    .line 50
    .local v2, "lvts":Lannotator/scanner/NewScanner;
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lannotator/scanner/NewScanner;->scan(Lcom/sun/source/util/TreePath;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v3, Lannotator/scanner/NewScanner;->cache:Ljava/util/Map;

    iget v4, v2, Lannotator/scanner/NewScanner;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget v3, v2, Lannotator/scanner/NewScanner;->index:I

    return v3
.end method


# virtual methods
.method public bridge synthetic visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lannotator/scanner/NewScanner;->visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/NewArrayTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 79
    iget-boolean v0, p0, Lannotator/scanner/NewScanner;->done:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 80
    iget v0, p0, Lannotator/scanner/NewScanner;->index:I

    add-int/2addr v0, v1

    iput v0, p0, Lannotator/scanner/NewScanner;->index:I

    .line 82
    :cond_0
    iget-object v0, p0, Lannotator/scanner/NewScanner;->tree:Lcom/sun/source/tree/Tree;

    if-ne v0, p1, :cond_1

    .line 83
    iput-boolean v1, p0, Lannotator/scanner/NewScanner;->done:Z

    .line 85
    :cond_1
    invoke-super {p0, p1, p2}, Lannotator/scanner/CommonScanner;->visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lannotator/scanner/NewScanner;->visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/NewClassTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 68
    iget-boolean v0, p0, Lannotator/scanner/NewScanner;->done:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 69
    iget v0, p0, Lannotator/scanner/NewScanner;->index:I

    add-int/2addr v0, v1

    iput v0, p0, Lannotator/scanner/NewScanner;->index:I

    .line 71
    :cond_0
    iget-object v0, p0, Lannotator/scanner/NewScanner;->tree:Lcom/sun/source/tree/Tree;

    if-ne v0, p1, :cond_1

    .line 72
    iput-boolean v1, p0, Lannotator/scanner/NewScanner;->done:Z

    .line 74
    :cond_1
    invoke-super {p0, p1, p2}, Lannotator/scanner/CommonScanner;->visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method
