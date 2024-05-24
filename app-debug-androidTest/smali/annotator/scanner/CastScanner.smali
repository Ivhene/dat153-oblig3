.class public Lannotator/scanner/CastScanner;
.super Lannotator/scanner/CommonScanner;
.source "CastScanner.java"


# static fields
.field private static methodNameToCastOffsets:Ljava/util/Map;
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

.field private static nestLevels:I

.field private static prevMethodName:Ljava/lang/String;

.field private static prevOffset:I


# instance fields
.field private done:Z

.field private index:I

.field private final tree:Lcom/sun/source/tree/Tree;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lannotator/scanner/CastScanner;->prevMethodName:Ljava/lang/String;

    .line 42
    const/4 v0, -0x1

    sput v0, Lannotator/scanner/CastScanner;->prevOffset:I

    .line 43
    const/4 v0, 0x0

    sput v0, Lannotator/scanner/CastScanner;->nestLevels:I

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lannotator/scanner/CastScanner;->methodNameToCastOffsets:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/sun/source/tree/Tree;)V
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 45
    invoke-direct {p0}, Lannotator/scanner/CommonScanner;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lannotator/scanner/CastScanner;->index:I

    .line 39
    const/4 v1, 0x0

    iput-boolean v1, p0, Lannotator/scanner/CastScanner;->done:Z

    .line 46
    iput v0, p0, Lannotator/scanner/CastScanner;->index:I

    .line 47
    iput-boolean v1, p0, Lannotator/scanner/CastScanner;->done:Z

    .line 48
    iput-object p1, p0, Lannotator/scanner/CastScanner;->tree:Lcom/sun/source/tree/Tree;

    .line 49
    return-void
.end method

.method public static addCastToMethod(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 3
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "offset"    # Ljava/lang/Integer;

    .line 78
    sget-object v0, Lannotator/scanner/CastScanner;->methodNameToCastOffsets:Ljava/util/Map;

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
    sget-object v1, Lannotator/scanner/CastScanner;->methodNameToCastOffsets:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_0
    sget-object v1, Lannotator/scanner/CastScanner;->prevMethodName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v2, Lannotator/scanner/CastScanner;->prevOffset:I

    sub-int/2addr v1, v2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 86
    sget v1, Lannotator/scanner/CastScanner;->nestLevels:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lannotator/scanner/CastScanner;->nestLevels:I

    .line 87
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lannotator/scanner/CastScanner;->nestLevels:I

    sub-int/2addr v1, v2

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 89
    :cond_1
    const/4 v1, 0x0

    sput v1, Lannotator/scanner/CastScanner;->nestLevels:I

    .line 90
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :goto_0
    sput-object p0, Lannotator/scanner/CastScanner;->prevMethodName:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lannotator/scanner/CastScanner;->prevOffset:I

    .line 94
    return-void
.end method

.method public static getMethodCastIndex(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "offset"    # Ljava/lang/Integer;

    .line 108
    sget-object v0, Lannotator/scanner/CastScanner;->methodNameToCastOffsets:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 109
    .local v0, "offsetList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 110
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 113
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public static indexOfCastTree(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)I
    .locals 3
    .param p0, "origpath"    # Lcom/sun/source/util/TreePath;
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 28
    invoke-static {p0}, Lannotator/scanner/CastScanner;->findCountingContext(Lcom/sun/source/util/TreePath;)Lcom/sun/source/util/TreePath;

    move-result-object v0

    .line 29
    .local v0, "path":Lcom/sun/source/util/TreePath;
    if-nez v0, :cond_0

    .line 30
    const/4 v1, -0x1

    return v1

    .line 33
    :cond_0
    new-instance v1, Lannotator/scanner/CastScanner;

    invoke-direct {v1, p1}, Lannotator/scanner/CastScanner;-><init>(Lcom/sun/source/tree/Tree;)V

    .line 34
    .local v1, "lvts":Lannotator/scanner/CastScanner;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lannotator/scanner/CastScanner;->scan(Lcom/sun/source/util/TreePath;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget v2, v1, Lannotator/scanner/CastScanner;->index:I

    return v2
.end method


# virtual methods
.method public bridge synthetic visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lannotator/scanner/CastScanner;->visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/TypeCastTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 53
    iget-boolean v0, p0, Lannotator/scanner/CastScanner;->done:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 54
    iget v0, p0, Lannotator/scanner/CastScanner;->index:I

    add-int/2addr v0, v1

    iput v0, p0, Lannotator/scanner/CastScanner;->index:I

    .line 56
    :cond_0
    iget-object v0, p0, Lannotator/scanner/CastScanner;->tree:Lcom/sun/source/tree/Tree;

    if-ne v0, p1, :cond_1

    .line 57
    iput-boolean v1, p0, Lannotator/scanner/CastScanner;->done:Z

    .line 58
    return-object p2

    .line 60
    :cond_1
    invoke-super {p0, p1, p2}, Lannotator/scanner/CommonScanner;->visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method
