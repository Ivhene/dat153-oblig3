.class public Lannotator/scanner/InstanceOfScanner;
.super Lannotator/scanner/CommonScanner;
.source "InstanceOfScanner.java"


# static fields
.field private static methodNameToInstanceOfOffsets:Ljava/util/Map;
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

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lannotator/scanner/InstanceOfScanner;->methodNameToInstanceOfOffsets:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/sun/source/tree/Tree;)V
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 47
    invoke-direct {p0}, Lannotator/scanner/CommonScanner;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lannotator/scanner/InstanceOfScanner;->index:I

    .line 39
    const/4 v1, 0x0

    iput-boolean v1, p0, Lannotator/scanner/InstanceOfScanner;->done:Z

    .line 48
    iput v0, p0, Lannotator/scanner/InstanceOfScanner;->index:I

    .line 49
    iput-boolean v1, p0, Lannotator/scanner/InstanceOfScanner;->done:Z

    .line 50
    iput-object p1, p0, Lannotator/scanner/InstanceOfScanner;->tree:Lcom/sun/source/tree/Tree;

    .line 51
    return-void
.end method

.method public static addInstanceOfToMethod(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "offset"    # Ljava/lang/Integer;

    .line 78
    sget-object v0, Lannotator/scanner/InstanceOfScanner;->methodNameToInstanceOfOffsets:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 79
    .local v0, "offsetList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 81
    sget-object v1, Lannotator/scanner/InstanceOfScanner;->methodNameToInstanceOfOffsets:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method

.method public static getMethodInstanceOfIndex(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "offset"    # Ljava/lang/Integer;

    .line 98
    sget-object v0, Lannotator/scanner/InstanceOfScanner;->methodNameToInstanceOfOffsets:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 99
    .local v0, "offsetList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 100
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 103
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public static indexOfInstanceOfTree(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)I
    .locals 3
    .param p0, "origpath"    # Lcom/sun/source/util/TreePath;
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 28
    invoke-static {p0}, Lannotator/scanner/InstanceOfScanner;->findCountingContext(Lcom/sun/source/util/TreePath;)Lcom/sun/source/util/TreePath;

    move-result-object v0

    .line 29
    .local v0, "path":Lcom/sun/source/util/TreePath;
    if-nez v0, :cond_0

    .line 30
    const/4 v1, -0x1

    return v1

    .line 33
    :cond_0
    new-instance v1, Lannotator/scanner/InstanceOfScanner;

    invoke-direct {v1, p1}, Lannotator/scanner/InstanceOfScanner;-><init>(Lcom/sun/source/tree/Tree;)V

    .line 34
    .local v1, "ios":Lannotator/scanner/InstanceOfScanner;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lannotator/scanner/InstanceOfScanner;->scan(Lcom/sun/source/util/TreePath;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget v2, v1, Lannotator/scanner/InstanceOfScanner;->index:I

    return v2
.end method


# virtual methods
.method public bridge synthetic visitInstanceOf(Lcom/sun/source/tree/InstanceOfTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lannotator/scanner/InstanceOfScanner;->visitInstanceOf(Lcom/sun/source/tree/InstanceOfTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitInstanceOf(Lcom/sun/source/tree/InstanceOfTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/InstanceOfTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 55
    iget-boolean v0, p0, Lannotator/scanner/InstanceOfScanner;->done:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 56
    iget v0, p0, Lannotator/scanner/InstanceOfScanner;->index:I

    add-int/2addr v0, v1

    iput v0, p0, Lannotator/scanner/InstanceOfScanner;->index:I

    .line 58
    :cond_0
    iget-object v0, p0, Lannotator/scanner/InstanceOfScanner;->tree:Lcom/sun/source/tree/Tree;

    if-ne v0, p1, :cond_1

    .line 59
    iput-boolean v1, p0, Lannotator/scanner/InstanceOfScanner;->done:Z

    .line 61
    :cond_1
    invoke-super {p0, p1, p2}, Lannotator/scanner/CommonScanner;->visitInstanceOf(Lcom/sun/source/tree/InstanceOfTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method